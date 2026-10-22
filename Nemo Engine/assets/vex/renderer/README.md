# Vex visual novel regex renderer

Vex stands above a separate foreground dialogue window that overlaps her
lower body. Her name, dialogue, counter, and page controls sit together in
that window.

The current [Nemo Engine v12.3 preset](../../../Nemo_Engine_v12.3.json)
retains the original NPC scratchpad chat's compact colour/effect update and
General RP / Anime configuration alongside this Vex panel.

Compact `c0`–`c16` markers identify the speaker's colour. In RP Markdown,
single backticks identify unspoken internal monologue; quotation marks
identify speech. Give each paragraph of a longer monologue its own complete
backtick and colour pair:

```text
"[[c1]]I should ask.[[/c1]]"
`[[c1]]I should ask.[[/c1]]`
```

The colour/effect renderer runs before thought styling, with its shared
stylesheet added outside the thought text. Existing font markup remains
supported. Code examples and protected state/workbench hosts retain their
literal content. The formatter does not disclose hidden thoughts or change
the selected interiority contract.

The updated [Nemo Engine v12.3 preset](../../../Nemo_Engine_v12.3.json)
already contains these rules and enables **Vex Commentary**. Import the whole
JSON as a Chat Completion preset and allow its bundled preset regex scripts.
In SillyTavern's user settings, keep **Show &lt;tags&gt; in responses** off.
Allow external images if you want the portraits to appear.

The model emits one commentary group with two to four developed dialogue
pages, normally three. Roughly 60–120 words per page is a soft guide, with
natural variation and an occasional short retort. Each Vex speaks through her
own vocabulary, rhythm, humor, temperament, tastes, and opinions, drawing on
her selected profile and distinctive interview replies. Reactions, teasing,
disagreement, curiosity, and conversation can all develop across pages.

The regex pack supplies all portraits, layout, controls, and styling. The
following abbreviates the dialogue to show the marker syntax; the full
[sample output](sample-output.txt) and [clickable sample](sample-rendered.html)
demonstrate the intended length and character voice:

```text
<vexchat>
<vexnote name="Whimsical Vex" expression="thoughtful">First developed remark...</vexnote>
<vexnote name="Whimsical Vex" expression="amused">A characterful response that develops it...</vexnote>
<vexnote name="Whimsical Vex" expression="delighted">Another substantial, connected remark...</vexnote>
</vexchat>
```

Use exact active speaker names and one of: `neutral`, `amused`, `delighted`,
`thoughtful`, `skeptical`, `surprised`, `concerned`, `sad`, `annoyed`.
Dialogue is plain text. Write literal `<`, `>`, and `&` as HTML entities.
Do not emit portraits, asset paths, page numbers, controls, CSS, or JavaScript.

The normal panel supports one through four messages. Each panel is an
independent HTML form, so its radio controls do not change older or adjacent
panels. Next/Back switches between already-generated pages and makes no API
request. Selections are presentation state and reset when a message is
rerendered. Modern browser `:has()` support is required for pagination;
otherwise the messages remain visible as a stack. Overfull groups also remain
a readable stack instead of losing extra messages.

Asset paths come only from the catalog. Known speaker names with unknown
expression tokens use that speaker's neutral portrait. Unknown or unmapped
master names keep their displayed name and dialogue as text, without assigning
a different Vex's image. Browser image-loading errors or SillyTavern's external
image blocking do not hide the dialogue.

`regex-scripts.json` is the ordered, display-only pack of 74 rules: a literal
protection rule, the 72 Vex rendering rules, then the matching restore rule.
Replace the existing Vex bubble renderer with the complete pack; do not leave
both renderers enabled or import only its middle rendering rules. Keep the
first and last protection rules around the rendering rules in the supplied
order.

`context-strip.json` is now an **ordered array of three rules**, not one rule:
protect literal surfaces, strip older commentary, then restore literal
surfaces. Replace the older context-strip rule with all three adjacent rules
in that order. All three retain the original depth-five boundary and run only
for outgoing context. They remove genuine old commentary while preserving
literal examples. The display pack never injects its HTML into model context.

The paired guards preserve marker-looking examples in fenced or indented
code, inline code, code/pre elements, comments, HTML attributes, the workbench,
and raw planning or hidden-state hosts. Actual `vexchat`/`vexnote` marker tags
are excluded from generic HTML-tag protection so real panels still render.
Each renderer checks both match boundaries, preventing a marker that starts
inside code from consuming a closing marker outside it. Backticks within a
legitimate Vex message remain in that panel; protection is restored before
the later colour/effect/thought pipeline runs.

Regenerate after a catalog change:

```bash
python build_renderer.py --manifest ../manifest.json
```

The generator validates the catalog's registered expression paths, then writes
the display pack, ordered three-rule context pack, speaker map, and sample files. Keep the source CSS with the
generator. The pack uses ordinary string replacements supported by
SillyTavern; it does not need replacement functions or an extension.

The Python sample renderer translates JavaScript named captures/backreferences
and flags only for local sample generation. The authoritative compatibility
checks execute the actual SillyTavern regex engine, followed by its Markdown,
sanitizer, and CSS processing. No JavaScript is injected into chat messages.


## Optional left companion panel

To put the latest Vex panel to the **left of chat**, append the contents of
[`left-dock.css`](left-dock.css) to **User Settings → Miscellaneous → Custom CSS**.
Keep your existing Custom CSS and the Vex regex renderer enabled. Turn
**MovingUI off** for the automatic dock. This is a one-time global stylesheet
addition; importing the preset alone does not install it.

On desktop windows at least 1200 px wide and 720 px high with a mouse/trackpad,
the latest loaded Vex panel appears outside the chat. The portrait, nameplate,
dialogue and Next/Back arrows stay together. Long dialogue scrolls within its
window. Earlier Vex panels are hidden in dock mode; small/touch layouts and
MovingUI use the original inline presentation. A new human reply keeps the
last panel until another Vex reply replaces it.

The sheet reserves a left gutter and keeps a typical 64 px vertical toolbar
clear. It preserves the configured chat width when space permits and caps
very wide layouts to prevent overlap. Chat scrolling and the theme's toolbar
remain intact. The chat's backdrop blur is disabled only during active dock
mode so the panel can escape the chat's clipping container; other theme
filters remain unchanged. Remove the added stylesheet to restore the theme
layout. Validation against the official chat, mobile, waifuMode and vertical
toolbar styles is recorded in [`left-dock-validation.json`](left-dock-validation.json).


## Optional message-only left dock

The [Nemo Engine v12.3 Message Dock preset](../../../Nemo_Engine_v12.3_Message_Dock.json)
provides a separate message-only alternative that needs no global Custom CSS or
extension script. On screens at least 1440 × 700, click **Open Vex** once to open
the selected panel on the left; **Close ×** closes it. It stays open while you
chat, and Next/Back works inside the dock. Smaller screens use the inline panel.

Use this optional preset instead of the standard preset, or replace the standard
display pack with the complete ordered 76-rule [message-dock pack](message-dock/regex-scripts.json).
Binding seeds use HTML comments so a failed binder leaves a clean inline panel;
the optional pack also cleans up known old visible seed markers.
Keep the standard three context-strip rules. Remove the earlier left-dock block
from global Custom CSS before using this method. The current standard preset and
renderer remain available.

The popup uses the browser's native manual popover support. It does not open
automatically or close a panel from another message: close an older popup before
opening a newer one. It uses the existing left-side space and can overlap a custom
layout that occupies that space. Browsers without the required support retain the
readable inline panel. See the [message dock instructions](message-dock/README.md)
for installation, fallback behavior, and validation.
