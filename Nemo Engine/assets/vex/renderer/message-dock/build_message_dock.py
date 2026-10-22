"""Derive the optional, message-only popover pack from the standard VN pack.

Only four existing group replacements change. One following binder rule reuses
one macro-resolved random nonce for all three native popover ID references. Its
bridge is comment-only; a second rule cleans legacy visible bridge markers.
"""
import argparse
import copy
import json
import re
from pathlib import Path

HERE = Path(__file__).resolve().parent
OLD_BEGIN = '\ue108NEMO_VEX_DOCK_BEGIN_51eb3f2d16fe4ec58f9d7016cb33ad5a\ue109'
OLD_END = '\ue108NEMO_VEX_DOCK_END_51eb3f2d16fe4ec58f9d7016cb33ad5a\ue109'
BEGIN = '<!--NEMO_VEX_DOCK_BEGIN_51eb3f2d16fe4ec58f9d7016cb33ad5a:'
END = '<!--NEMO_VEX_DOCK_END_51eb3f2d16fe4ec58f9d7016cb33ad5a-->'
HEX_RANDOM = '{{random::0::1::2::3::4::5::6::7::8::9::a::b::c::d::e::f}}'
BINDER_ID = '83e2de95-985a-56d2-b5c3-e507c5ba38d9'
LEGACY_CLEANUP_ID = '15cb9cb7-b70e-5192-9086-dc9840cfd19a'


def build(source, css):
    rules = copy.deepcopy(source)
    groups = [i for i, rule in enumerate(rules)
              if re.search(r' · [1-4] message panel$', rule['scriptName'])]
    if len(rules) != 74 or len(groups) != 4:
        raise ValueError('Expected the current 74-rule guarded VN pack with four group rules')
    for index in groups:
        replacement = rules[index]['replaceString']
        if not replacement.startswith('<form class="nemo-vn"') or not replacement.endswith('</form>'):
            raise ValueError('Unexpected group replacement shape')
        rules[index]['replaceString'] = BEGIN + HEX_RANDOM * 32 + '-->' + replacement + END
    css = re.sub(r'/\*[\s\S]*?\*/', '', css)
    css = re.sub(r'\s+', ' ', css).strip()
    # The binder is internal output, but pasted renderer examples still belong
    # to their literal surface. Check both boundaries just like the base pack.
    guard_markers = source[0]['replaceString'].split('{{match}}')
    if len(guard_markers) != 2 or not all(guard_markers):
        raise ValueError('Expected paired literal protection as the first rule')
    literal_begin_raw, literal_end_raw = guard_markers
    if literal_begin_raw[0] != literal_end_raw[0]:
        raise ValueError('Expected a shared literal guard boundary character')
    boundary = re.escape(literal_begin_raw[0])
    tails = '(?:' + re.escape(literal_begin_raw[1:]) + '|' + re.escape(literal_end_raw[1:]) + ')'
    # Only the next recognized literal boundary determines protection. Scan
    # ordinary text in chunks so JavaScriptCore does not backtrack per byte.
    outside = '(?!(?:[^' + boundary + ']*' + boundary + '(?!' + tails + '))*[^' + boundary + ']*' + re.escape(literal_end_raw) + ')'
    binder = copy.deepcopy(rules[groups[-1]])
    binder.update({
        'id': BINDER_ID,
        'scriptName': 'Nemo · Vex VN · optional native left dock binding',
        'findRegex': '/(?=' + re.escape(BEGIN) + ')' + outside + re.escape(BEGIN) + r'([0-9a-f]{32})-->(<form class="nemo-vn"[\s\S]*?<\/form>)' + re.escape(END) + outside + '/g',
        'replaceString': ('<div class="nemo-vn-dock-shell"><style>' + css + '</style>'
                          '<button class="nemo-vn-dock-launch" type="button" '
                          'popovertarget="nemo-vex-panel-$1" popovertargetaction="show">Open Vex <span aria-hidden="true">↗</span></button>'
                          '<div class="nemo-vn-popover" id="nemo-vex-panel-$1" popover="manual" aria-label="Vex companion">'
                          '<button class="nemo-vn-dock-close" type="button" '
                          'popovertarget="nemo-vex-panel-$1" popovertargetaction="hide" aria-label="Close Vex companion">Close ×</button>'
                          '$2</div></div>'),
    })
    rules.insert(groups[-1] + 1, binder)
    cleanup = copy.deepcopy(binder)
    cleanup.update({
        'id': LEGACY_CLEANUP_ID,
        'scriptName': 'Nemo · Vex VN · remove legacy visible dock bridge (display)',
        'findRegex': '/(?=(?:' + re.escape(OLD_BEGIN) + '|' + re.escape(OLD_END) + '))' + outside + '(?:' + re.escape(OLD_BEGIN)
                     + r'[0-9a-f]{32}:|' + re.escape(OLD_END) + ')' + outside + '/g',
        'replaceString': '',
    })
    # Retain literal guards until this cleanup finishes, so code/examples stay
    # byte-for-byte literal. Only known old markers disappear, never the form.
    rules.insert(len(rules) - 1, cleanup)
    return rules


def main():
    parser = argparse.ArgumentParser()
    # In the published renderer/message-dock directory, the source pack is ../.
    parser.add_argument('--source', type=Path, default=HERE.parent / 'regex-scripts.json')
    parser.add_argument('--output', type=Path, default=HERE / 'regex-scripts.json')
    args = parser.parse_args()
    source = json.loads(args.source.read_text())
    rules = build(source, (HERE / 'panel.css').read_text())
    args.output.write_text(json.dumps(rules, ensure_ascii=False, indent=2) + '\n')
    original_by_id = {rule['id']: rule for rule in source}
    changed = [rule['id'] for rule in rules if rule['id'] in original_by_id
               and rule != original_by_id[rule['id']]]
    assert len(changed) == 4
    assert all({key for key in rule if rule[key] != original_by_id[rule['id']][key]} == {'replaceString'}
               for rule in rules if rule['id'] in changed)
    assert len(rules) == 76
    print(json.dumps({'rules': len(rules), 'changedExistingReplacements': len(changed),
                      'newBinderId': BINDER_ID, 'legacyCleanupId': LEGACY_CLEANUP_ID,
                      'output': str(args.output)}))


if __name__ == '__main__':
    main()
