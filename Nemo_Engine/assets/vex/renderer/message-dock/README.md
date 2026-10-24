# Optional Vex message dock

This alternative renderer keeps the Vex visual novel inside the message's own
HTML/CSS. On screens at least 1440 × 700, a compact **Vex commentary** footer
blends into the message with a muted purple badge, subtitle and **Open ↗** action.
Clicking it opens a native persistent popover on the left. The same footer then
shows **Close ×** and closes the panel when clicked again; the popup's own
**Close ×** also remains available. Clicking in the chat leaves it open;
Next/Back and the existing portraits, nameplate and dialogue remain intact.
Long dialogue scrolls inside the dialogue window while its controls stay visible.
Smaller screens use the usual inline visual novel automatically.
If you resize the window while a desktop popup is already open, its **Close ×**
remains available; close it to return that panel to the mobile inline layout.

This is an alternative to the standard renderer, not an additional pack to run
alongside it. Import this ordered **80-rule** pack in place of the standard
74 display rules. Keep the standard ordered three-rule `context-strip.json`
unchanged. The supplied optional full preset already contains the right ordering.
No global Custom CSS, extension script or change to the model's marker contract
is needed.

If you installed the earlier `Nemo_Vex_Left_Dock.css` in Custom CSS, remove that
block before using this variant; the two docking methods should not run together.

When the same message has exactly one complete regular or modular Scratchpad and
one genuine rendered Vex footer, the footer can join the pad's outer container.
The complete pad must end the message, or be followed only by that Vex footer;
trailing prose leaves the footer standalone. Both footer-before-pad and
pad-before-footer ordering are supported.
It remains available while the Scratchpad is collapsed. The state pad itself,
its tabs, and its nested details stay unchanged. With no visible complete pad,
multiple hosts/footers, or an ambiguous example, the existing standalone footer
remains. A copied full renderer footer in a code example also triggers this
conservative standalone fallback. Visible Workbench is an editorial artifact and is never an attachment
host. Raw model output still emits Vex commentary outside the Scratchpad;
display-only routing performs the attachment before literal protection is
restored. All commentary pages and context cleanup retain their contracts.

The dock uses existing left-side space and does not move the chat window. Its
left edge is 84 px; its width grows from 252 px at 1440 px to a maximum of 340 px.
A custom chat layout that fills this space can overlap it. On desktop, open only
the panel you want and close an older panel before opening another: native manual
popovers intentionally remain open until closed. The message cannot select or
close a different message's popup through scoped CSS. Opening a new message's
panel takes one click; it cannot open itself automatically.

## Binding and fallback

Four existing grouping rules each generate one 128-bit hexadecimal nonce using
32 built-in `random` macro tokens inside an HTML comment. The immediately following binder captures the
resolved nonce once and reuses that capture for the launcher target, popup ID and
Close target. This avoids duplicate IDs across history, repeated identical panels
and re-renders without writing a chat variable or saving UI state. The marker
seed is internal renderer output; the model does not emit it. Both seed delimiters
are HTML comments: if binding does not run, they disappear during HTML sanitation
and the existing visual novel stays inline. A final display-only cleanup also
removes the exact known old visible BEGIN/nonce and END markers before literal
protection is restored. It leaves dialogue and forms intact, and preserves code
examples, workbench content and other protected literal surfaces. The original
70 remaining rules, their literal guards, speaker mappings and all flags are
unchanged. Four additional display-only routing rules run immediately before
the existing display literal restore. They do not replace or modify the existing
Scratchpad renderers.

The reported screenshot shows a failed binding with an otherwise valid 32-digit
nonce. Replaying that exact nonce against the published engine binds correctly;
skipping the binder reproduces the visible marker. The exact cause in the local
installation remains unconfirmed. This update provides a clean inline fallback
for a failed binder; it cannot make a missing or disabled binder open a dock.

Binding and cleanup first check for their own marker, then inspect literal
boundaries in chunks. This preserves literal protection while avoiding the
expensive scan reproduced in JavaScriptCore on large synthetic inputs. This
engine test does not establish the cause of the reported screenshot.

Native popover support is required for the desktop dock. If the browser does not
support it, or a sanitizer strips the required `popover`/`popovertarget`
attributes, the default is the readable inline panel. Message CSS is intentionally
scoped using ordinary SillyTavern selectors; no sanitizer or style-scope bypass is
used. Unsupported or malformed source marker groups retain the standard readable
fallback behavior.

## Rebuild

From the published `renderer/message-dock` directory:

```sh
python build_message_dock.py
```

The default input is `../regex-scripts.json`. To use another standard renderer:

```sh
python build_message_dock.py --source /path/to/standard/regex-scripts.json
```

`panel.css` contains only the optional wrapper styles; the existing visual novel
style remains embedded unchanged in each grouped panel. Browser and integration validation is
recorded in `validation.json`.
