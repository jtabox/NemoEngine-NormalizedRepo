"""Build function-free SillyTavern regex replacements from the Vex catalog.

No model supplied value is used as an asset path. Speaker and expression
matches are generated from registered manifest entries. Run from any cwd.
"""
import argparse
import html
import json
import re
import uuid
from pathlib import Path

HERE = Path(__file__).resolve().parent
DEFAULT_MANIFEST = HERE.parent / 'manifest.json'
NS = uuid.UUID('0f2fdbe6-a2b0-49fb-b9a7-62dc61a13918')
SAFE_NAME = r'[^"<>\x00-\x1f]{1,80}'
SAFE_EXPR = r'[^"<>\x00-\x1f]{0,80}'
NOTE = r'<vexnote[\t ]+name="' + SAFE_NAME + r'"[\t ]+expression="' + SAFE_EXPR + r'"[\t ]*>[^<>]*<\/vexnote>'
WS = r'[\t \r\n]*'


def script(key, title, pattern, replacement, *, context=False):
    return {
        'id': str(uuid.uuid5(NS, key)), 'scriptName': 'Nemo · Vex VN · ' + title,
        'findRegex': '/' + pattern + '/g', 'replaceString': replacement,
        'trimStrings': [], 'placement': [2], 'disabled': False,
        'markdownOnly': not context, 'promptOnly': context,
        'runOnEdit': True, 'substituteRegex': 0,
        'minDepth': 5 if context else None, 'maxDepth': None,
    }


def control(target, total, back=False):
    word = 'Back' if back else 'Next'
    arrow = '◀' if back else '▶'
    text = arrow + ' ' + word if back else word + ' ' + arrow
    return (f'<label class="nemo-vn-control"><input type="radio" name="nemo-vn-page" '
            f'class="nemo-vn-to-{target}" aria-label="{word} message, {target} of {total}">'
            f'<span aria-hidden="true">{text}</span></label>')


def frame(count, css):
    header = '<div class="nemo-vn-heading"><span>Vex commentary</span><span>Behind the words</span></div>'
    pages = []
    for i in range(1, count + 1):
        back = control(i - 1, count, True) if i > 1 else '<span class="nemo-vn-edge" aria-hidden="true">Beginning</span>'
        next_ = control(i + 1, count) if i < count else '<span class="nemo-vn-edge">End</span>'
        pages.append(f'<div class="nemo-vn-slide nemo-vn-slide-{i}">${i}<div class="nemo-vn-nav">'
                     f'{back}<span class="nemo-vn-counter">{i:02d} / {count:02d}</span>{next_}</div></div>')
    return '<form class="nemo-vn" autocomplete="off" aria-label="Vex commentary"><style>' + css + '</style>' + header + ''.join(pages) + '</form>'


def portrait_card(name, url, text_capture):
    label = html.escape(name)
    # Inline dimensions keep a standalone, malformed or overfull group readable
    # even when the panel grouping rule was not used.
    return (f'<div class="nemo-vn-card" style="display:flex;align-items:center;gap:18px;max-width:100%;">'
            f'<figure class="nemo-vn-portrait" style="margin:0;flex:0 0 34%;max-width:240px;">'
            f'<img src="{url}" alt="{label}" loading="lazy" decoding="async" '
            f'style="display:block;width:100%;max-width:230px;max-height:350px;object-fit:contain;"></figure>'
            f'<div class="nemo-vn-speech" style="min-width:0;flex:1;">'
            f'<strong class="nemo-vn-name">{label}</strong>'
            f'<div class="nemo-vn-dialogue" style="white-space:pre-wrap;overflow-wrap:anywhere;">{text_capture}</div></div></div>')


def build(manifest):
    css = re.sub(r'\s+', ' ', (HERE / 'panel.css').read_text()).strip()
    rules = []
    # Context runs on raw markers. Keep it separate from display processing.
    context = script('context-cleanup', 'strip older commentary from context',
                     r'<vexchat>[\s\S]*?<\/vexchat>|<vexnote(?:\s+[^>]*)?>[\s\S]*?<\/vexnote>', '', context=True)
    for count in (4, 3, 2, 1):
        body = WS.join('(' + NOTE + ')' for _ in range(count))
        rules.append(script(f'group-{count}', f'{count} message panel', r'<vexchat>' + WS + body + WS + r'<\/vexchat>', frame(count, css)))
    # >4 entries or a damaged wrapper remains a stack of readable cards.
    rules.append(script('expanded-open', 'readable overflow wrapper', r'<vexchat>',
                        '<style>' + css + '</style><div class="nemo-vn-heading"><span>Vex commentary</span><span>All messages</span></div>'))
    rules.append(script('expanded-close', 'remove overflow closing marker', r'<\/vexchat>', ''))
    mappings = []
    for key, person in manifest['personalities'].items():
        set_key = person['assetSet']
        asset_set = manifest['sets'][set_key]
        names = [person['label']]
        if key == 'default':
            names.append('Vex')
        for name in names:
            prefix = r'<vexnote[\t ]+name="' + re.escape(name) + r'"[\t ]+expression="'
            suffix = r'"[\t ]*>([^<>]*)<\/vexnote>'
            expressions = asset_set['intendedExpressions']
            # Every registered frame currently follows expression.png. Guard it
            # so a future catalog layout cannot create an accidental bad URL.
            for expr in expressions:
                expected = asset_set['directory'] + '/' + expr + '.png'
                if asset_set['expressions'].get(expr) != expected:
                    raise ValueError(f'Nonuniform registered asset path: {key}/{expr}')
            alternatives = '|'.join(re.escape(x) for x in expressions)
            url = manifest['baseUrl'] + asset_set['directory'] + '/$1.png'
            rules.append(script('speaker-' + name, name + ' registered expression', prefix + '(' + alternatives + ')' + suffix,
                                portrait_card(name, url, '$2')))
            neutral_url = manifest['baseUrl'] + asset_set['expressions']['neutral']
            rules.append(script('neutral-' + name, name + ' neutral expression fallback', prefix + SAFE_EXPR + suffix,
                                portrait_card(name, neutral_url, '$1')))
            mappings.append({'name': name, 'persona': key, 'assetSet': set_key, 'expressions': expressions})
    rules.append(script('unknown-speaker', 'unknown or master speaker as text',
                        r'<vexnote[\t ]+name="(' + SAFE_NAME + r')"[\t ]+expression="' + SAFE_EXPR + r'"[\t ]*>([^<>]*)<\/vexnote>',
                        '<div class="nemo-vn-card nemo-vn-text-only"><div class="nemo-vn-speech"><strong class="nemo-vn-name">$1</strong><div class="nemo-vn-dialogue" style="white-space:pre-wrap;overflow-wrap:anywhere;">$2</div></div></div>'))
    rules.append(script('legacy-note', 'legacy note as text', r'<vexnote>([^<>]*)<\/vexnote>',
                        '<aside class="nemo-vn-legacy" style="margin:12px 0;padding:12px 16px;border-left:3px solid #ac83d7;border-radius:8px;background:#241b2d;color:#e8dcef;line-height:1.55;">$1</aside>'))
    return rules, context, mappings


def apply_rules(text, rules):
    """Python sample renderer; JS tests must verify real replacement semantics."""
    for s in rules:
        pattern = s['findRegex'][1:-2].replace(r'\/', '/')
        repl = s['replaceString']
        def sub(match):
            return re.sub(r'\$(\d+)', lambda n: match.group(int(n[1])) or '', repl)
        text = re.sub(pattern, sub, text)
    return text


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--manifest', type=Path, default=DEFAULT_MANIFEST)
    args = parser.parse_args()
    manifest = json.loads(args.manifest.read_text())
    rules, context, mappings = build(manifest)
    (HERE / 'regex-scripts.json').write_text(json.dumps(rules, ensure_ascii=False, indent=2) + '\n')
    (HERE / 'context-strip.json').write_text(json.dumps(context, ensure_ascii=False, indent=2) + '\n')
    (HERE / 'speaker-mappings.json').write_text(json.dumps(mappings, ensure_ascii=False, indent=2) + '\n')
    sample = '''<vexchat>
<vexnote name="Whimsical Vex" expression="thoughtful">A paper butterfly on the windowsill. Such a small thing to leave behind.</vexnote>
<vexnote name="Whimsical Vex" expression="amused">And yet everyone in this room has carefully avoided looking at it.</vexnote>
<vexnote name="Whimsical Vex" expression="delighted">I think we should let that silence do a little more work.</vexnote>
</vexchat>'''
    (HERE / 'sample-output.txt').write_text(sample + '\n')
    rendered = apply_rules(sample, rules)
    (HERE / 'sample-rendered.html').write_text('<!doctype html><html lang="en"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Vex commentary sample</title><body style="margin:0;background:#100d17;color:#ece6f5;font-family:Georgia,serif;padding:24px;"><main class="mes_text" style="max-width:740px;margin:auto;">' + rendered + '</main></body></html>')
    print(json.dumps({'displayRules':len(rules),'speakers':len(mappings),'assetVersion':manifest['assetVersion'],'directory':str(HERE)}))


if __name__ == '__main__':
    main()
