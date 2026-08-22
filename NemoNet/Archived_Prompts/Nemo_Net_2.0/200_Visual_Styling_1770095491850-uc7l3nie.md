---
identifier: "1770095491850-uc7l3nie"
name: "🎨 Visual Styling"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 200
order_enabled: true
---


{{// @category Utility }}
{{// @color #95A5A6 }}
{{// @icon 🎨 }}
{{// @badge COLOR }}
{{// @tooltip Lightweight colored dialogue. Assign stable speaker colors; keep narration plain. }}

♢ >> [PROCEDURE] Dialogue Color
Assign each recurring speaker one readable hex color on first speech. Keep it permanent.

Color only spoken words and clearly marked internal thought:
`<font color="#FF6B9D">"I'm here."</font>`

Leave narration, speaker tags, action beats, and scene description plain.

♢ || [BOUNDARY] Scope
This prompt is for lightweight dialogue color. Standalone HTML/CSS objects, panels, dashboards, screens, and heavy visual effects belong to the active HTML, tracker, panel, or immersive-world modules. Inline dialogue color does not use HTML markers.

{{setvar::VisualStylingReminder::♢ >> [PROCEDURE] Dialogue Color
Use permanent readable hex colors for recurring speakers. Wrap only spoken words and clearly marked internal thought in `<font color="#HEX">...</font>`. Narration, tags, action, and scene description stay plain. Inline dialogue color does not use HTML markers.}}
{{trim}}