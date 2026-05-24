---
identifier: "1764537040623-cw7pzg0et"
name: "🎨 🔧︱Utility: Color Formatting"
role: "user"
marker: false
system_prompt: false
enabled: true
injection_position: 1
injection_depth: 0
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 225
order_enabled: False
---

{{// @category Utility }}
{{// @color #95A5A6 }}
{{// @icon 🎨 }}
{{// @badge COLOR }}
{{// @tooltip Colored dialogue and thoughts for visual clarity }}

♢ >> [PROCEDURE] Dialogue Color
Assign each recurring speaker one readable hex color on first speech. Keep it permanent.

Color only spoken words and clearly marked internal thought:
`<font color="#FF6B9D">"I'm here."</font>`

Leave narration, speaker tags, action beats, punctuation outside the spoken/thought words, and scene description plain.

♢ || [BOUNDARY] Scope
This prompt is for lightweight dialogue color. Standalone HTML/CSS objects, panels, dashboards, screens, tracker UI, and heavy visual effects belong to active HTML, tracker, panel, or immersive-world modules. Inline dialogue color does not use HTML markers.

{{setvar::VisualStylingReminder::♢ >> [PROCEDURE] Dialogue Color
Use permanent readable hex colors for recurring speakers. Wrap only spoken words and clearly marked internal thought in `<font color="#HEX">...</font>`. Narration, tags, action, punctuation outside the spoken/thought words, and scene description stay plain. Inline dialogue color does not use HTML markers.}}
{{trim}}
