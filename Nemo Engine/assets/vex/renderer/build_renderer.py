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
    pages = []
    for i in range(1, count + 1):
        back = control(i - 1, count, True) if i > 1 else '<span class="nemo-vn-edge" aria-hidden="true">Beginning</span>'
        next_ = control(i + 1, count) if i < count else '<span class="nemo-vn-edge">End</span>'
        pages.append(f'<div class="nemo-vn-slide nemo-vn-slide-{i}"><div class="nemo-vn-window">${i}<div class="nemo-vn-nav">'
                     f'{back}<span class="nemo-vn-counter">{i:02d} / {count:02d}</span>{next_}</div></div></div>')
    return '<form class="nemo-vn" autocomplete="off" aria-label="Vex commentary"><style>' + css + '</style>' + ''.join(pages) + '</form>'


def portrait_card(name, url, text_capture):
    label = html.escape(name)
    # Inline dimensions keep a standalone, malformed or overfull group readable
    # even when the panel grouping rule was not used.
    return (f'<div class="nemo-vn-card" style="max-width:100%;">'
            f'<figure class="nemo-vn-portrait">'
            f'<img src="{url}" alt="{label}" loading="lazy" decoding="async" '
            f'style="display:block;width:100%;max-width:340px;height:auto;object-fit:contain;"></figure>'
            f'<div class="nemo-vn-speech" style="min-width:0;">'
            f'<strong class="nemo-vn-name">{label}</strong>'
            f'<div class="nemo-vn-dialogue" style="white-space:pre-wrap;overflow-wrap:anywhere;">{text_capture}</div></div></div>')


# Literal-surface guards are paired separately for display and older context.
VEX_LITERAL_BEGIN = '\ue106NEMO_VEX_LITERAL_BEGIN_0ad9f3a7fba14b8ba77f18d021e7f839\ue107'
VEX_LITERAL_END = '\ue106NEMO_VEX_LITERAL_END_0ad9f3a7fba14b8ba77f18d021e7f839\ue107'
VEX_LITERAL_NAMESPACE = uuid.UUID('234c49f3-e977-488c-a099-7382906d6275')
VEX_LITERAL_PROTECTED = '(?:^[ \\t]{0,3}(?:>[ \\t]?)*(?<nvlFenceTick>`{3,})[^\\r\\n]*(?:\\r?\\n[\\s\\S]*?^[ \\t]{0,3}(?:>[ \\t]?)*\\k<nvlFenceTick>`*[ \\t]*(?=\\r?$)|[\\s\\S]*))|(?:^[ \\t]{0,3}(?:>[ \\t]?)*(?<nvlFenceTilde>~{3,})[^\\r\\n]*(?:\\r?\\n[\\s\\S]*?^[ \\t]{0,3}(?:>[ \\t]?)*\\k<nvlFenceTilde>~*[ \\t]*(?=\\r?$)|[\\s\\S]*))|(?:^(?:(?: {4}|\\t)[^\\r\\n]*(?:\\r?\\n|(?![\\s\\S])))+)|(?:^[ \\t]*===[ \\t]*NEMO_(?<nvlWorkbenchKind>WORKBENCH|EXACT_REVIEW)_BEGIN[ \\t]*===[^\\r\\n]*(?:\\r?\\n[\\s\\S]*?^[ \\t]*===[ \\t]*NEMO_\\k<nvlWorkbenchKind>_END[ \\t]*===[^\\r\\n]*|[\\s\\S]*))|(?:(?<!`)(?<nvlInlineTicks>`+)(?!`)(?:[\\s\\S]*?(?<!`)\\k<nvlInlineTicks>(?!`)|[^\\r\\n]*$))|(?:<!--(?:[\\s\\S]*?-->|[\\s\\S]*))|(?:<!\\[CDATA\\[(?:[\\s\\S]*?\\]\\]>|[\\s\\S]*))|(?:<\\?(?:[\\s\\S]*?\\?>|[\\s\\S]*))|(?:<!(?:[^<>"\\x27]|"[^"]*"|\\x27[^\\x27]*\\x27)*(?:>|[\\s\\S]*))|(?:<(?<nvlRawTag>style|script|pre|code|textarea|title|xmp|template|plaintext|iframe|noembed|noframes|think|thinking|plan|planning|nemo-interiority|nemo-pad|nemo-offscreen|mental_state|nemo-mp-state|nemo-mp-retain|st-tracker(?:-[\\w-]+)?)\\b(?:[^<>"\\x27]|"[^"]*"|\\x27[^\\x27]*\\x27)*>(?:[\\s\\S]*?<\\/\\k<nvlRawTag>\\s*>|[\\s\\S]*))|(?:&lt;\\s*(?<nvlEscapedTag>mental_state|nemo-interiority|nemo-offscreen|nemo-pad|nemo-mp-state|nemo-mp-retain)\\s*&gt;[\\s\\S]*?(?:&lt;\\s*\\/\\s*\\k<nvlEscapedTag>\\s*&gt;|(?![\\s\\S])))|(?:<(?!\\/?(?:vexchat|vexnote)(?=[\\s/>]))(?:\\/?[A-Za-z][A-Za-z0-9:._-]*)(?=[\\s/>])(?:[^<>"\\x27]|"[^"]*"|\\x27[^\\x27]*\\x27)*(?:>|[\\s\\S]*))'
VEX_LITERAL_OUTSIDE = '(?!(?:(?!\ue106NEMO_VEX_LITERAL_BEGIN_0ad9f3a7fba14b8ba77f18d021e7f839\ue107)[\\s\\S])*\ue106NEMO_VEX_LITERAL_END_0ad9f3a7fba14b8ba77f18d021e7f839\ue107)'
VEX_MARKER_START = '(?=<\\/?vex(?:chat|note)(?=[\\s>]))'

def literal_script(key, title, pattern, replacement, context=False):
    result = script(key, title, pattern, replacement, context=context)
    result['id'] = str(uuid.uuid5(VEX_LITERAL_NAMESPACE, key))
    result['findRegex'] = '/' + pattern + '/gim'
    return result

def guard_literal_matches(original):
    result = dict(original)
    delimiter = result['findRegex'].rindex('/')
    body, flags = result['findRegex'][1:delimiter], result['findRegex'][delimiter + 1:]
    result['findRegex'] = '/' + VEX_MARKER_START + VEX_LITERAL_OUTSIDE + '(?:' + body + ')' + VEX_LITERAL_OUTSIDE + '/' + flags
    return result


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
    # Check both match boundaries. The marker-start lookahead keeps the
    # protection predicate from scanning ahead at every ordinary prose byte.
    display_before = literal_script('display-guard', 'protect literal surfaces (display; keep paired)', VEX_LITERAL_PROTECTED, VEX_LITERAL_BEGIN + '{{match}}' + VEX_LITERAL_END)
    display_after = literal_script('display-restore', 'restore literal surfaces (display; keep paired)', '(?:' + re.escape(VEX_LITERAL_BEGIN) + '|' + re.escape(VEX_LITERAL_END) + ')', '')
    prompt_before = literal_script('prompt-guard', 'protect literal surfaces (older context; keep paired)', VEX_LITERAL_PROTECTED, VEX_LITERAL_BEGIN + '{{match}}' + VEX_LITERAL_END, True)
    prompt_after = literal_script('prompt-restore', 'restore literal surfaces (older context; keep paired)', '(?:' + re.escape(VEX_LITERAL_BEGIN) + '|' + re.escape(VEX_LITERAL_END) + ')', '', True)
    rules = [display_before] + [guard_literal_matches(r) for r in rules] + [display_after]
    context = [prompt_before, guard_literal_matches(context), prompt_after]
    return rules, context, mappings


def apply_rules(text, rules):
    """Sample-only JS regex translation; official ST engine tests are authoritative."""
    for item in rules:
        delimiter = item['findRegex'].rindex('/')
        pattern, js_flags = item['findRegex'][1:delimiter], item['findRegex'][delimiter + 1:]
        pattern = pattern.replace(r'\/', '/')
        pattern = re.sub(r'\(\?<([A-Za-z][A-Za-z0-9_]*)>', r'(?P<\1>', pattern)
        pattern = re.sub(r'\\k<([A-Za-z][A-Za-z0-9_]*)>', r'(?P=\1)', pattern)
        flags = (re.IGNORECASE if 'i' in js_flags else 0) | (re.MULTILINE if 'm' in js_flags else 0) | (re.DOTALL if 's' in js_flags else 0)
        replacement = re.sub(r'\{\{match\}\}', '$0', item['replaceString'], flags=re.IGNORECASE)
        def sub(match):
            def capture(token):
                group = int(token[1]) if token[1] is not None else token[2]
                try:
                    value = match.group(group) or ''
                except (IndexError, KeyError):
                    return ''
                for trim in item.get('trimStrings', []):
                    value = value.replace(trim, '')
                return value
            return re.sub(r'\$(\d+)|\$<([^>]+)>', capture, replacement)
        text = re.sub(pattern, sub, text, count=0 if 'g' in js_flags else 1, flags=flags)
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
<vexnote name="Whimsical Vex" expression="thoughtful">A paper butterfly on the windowsill, darling, and everyone is making such a magnificent effort not to look at it. I could put a crown on the table and get less ceremony. Look at those very sensible hands, arranging very sensible cups, while one folded scrap of paper quietly becomes the least ordinary thing in the room.

That is the sort of detail I fall in love with. It has almost no weight, and yet there is the whole room leaning away from it. I do not need to decide that it is enchanted. Their attention has already done quite enough.</vexnote>
<vexnote name="Whimsical Vex" expression="amused">And now I want to know who folds paper like that. Was it done carefully, with the patience of someone wrapping a gift, or in a distracted little hurry while a conversation went wrong? Those are questions, of course. I am allowed to be curious without pinning an answer to the poor thing and calling the matter settled.

You see my difficulty. Give me one small, peculiar object and I immediately want to turn it over in the light. Fortunately for everyone at this table, I can also enjoy watching them pretend the windowsill has ceased to exist. Such disciplined, coordinated disinterest. Almost an art.</vexnote>
<vexnote name="Whimsical Vex" expression="delighted">Oh, I am fond of this. There is room here for wonder to arrive very quietly, wearing something as cheap and familiar as a sheet of paper. Perhaps the butterfly will remain perfectly still. Perhaps its importance lies entirely in the people trying so hard to ignore it. I find both possibilities rather delicious.

For now, I am on the side of that tiny, inconvenient pair of wings. No speeches, no grand entrance, and still it has made everyone reconsider where to put their eyes. That is a respectable amount of trouble for something you could carry home in your coat pocket.</vexnote>
</vexchat>'''
    (HERE / 'sample-output.txt').write_text(sample + '\n')
    rendered = apply_rules(sample, rules)
    (HERE / 'sample-rendered.html').write_text('<!doctype html><html lang="en"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1"><title>Vex commentary sample</title><body style="margin:0;background:#100d17;color:#ece6f5;font-family:Georgia,serif;padding:24px;"><main class="mes_text" style="max-width:740px;margin:auto;">' + rendered + '</main></body></html>')
    print(json.dumps({'displayRules':len(rules),'speakers':len(mappings),'assetVersion':manifest['assetVersion'],'directory':str(HERE)}))


if __name__ == '__main__':
    main()
