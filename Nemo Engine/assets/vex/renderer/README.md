# Vex visual novel regex renderer

Vex stands above a separate foreground dialogue window that overlaps her
lower body. Her name, dialogue, counter, and page controls sit together in
that window.

The updated [v12.2 Lite preset](../../../Nemo_Engine_v12.2_Lite.json)
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

`regex-scripts.json` is the display-only pack. Replace the existing Vex bubble
renderer with these ordered scripts; do not leave both renderers enabled.
`context-strip.json` replaces the older context-strip rule and retains its
depth-five boundary. It removes raw commentary markers from older model
context. The display rules never inject their HTML into model context.

Regenerate after a catalog change:

```bash
python build_renderer.py --manifest ../manifest.json
```

The generator validates the catalog's registered expression paths, then writes
the regex pack, speaker map, and sample files. Keep the source CSS with the
generator. The pack uses ordinary string replacements supported by
SillyTavern; it does not need replacement functions or an extension.
