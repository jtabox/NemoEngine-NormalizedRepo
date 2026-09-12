---
identifier: "interview_visual_dialogue"
name: "🎨 Character Colours"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 73
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip Each character gets a unique persistent color for their dialogue. Special speech types get matching visual effects. }}
{{// @color #E74C3C }}
{{// @icon 🎨 }}

{{setvar::VisualStyleLabel::Character Colours}}

{{setvar::VisualStyle::♢ >> [PROCEDURE] Dialogue Color
Assign each recurring speaker one distinct, readable hex color on first speech. Keep that color permanent for the session.

Color only spoken words and clearly marked internal thought:
`<font color="#FF6B9D">"I'm here."</font>`

Leave narration, speaker tags, action beats, scene description, and tracker text plain. Do not wrap whole paragraphs, names, or narration in color.

♢ || [BOUNDARY] Scope
This dial is lightweight dialogue color. It does not create nameplates, panels, dashboards, CSS effects, standalone HTML objects, or decorative visual systems. Telepathy, shouting, whispering, magic speech, and distorted voices can use italics, bold, or punctuation when needed, but color remains the only persistent visual marker.}}

{{setvar::AtelierCoT_VisualStyle::- Visual style: dialogue color. Check speaker identity and persistent hex assignment. Color only spoken words or marked internal thought; leave narration, names, tags, trackers, and action plain.}}

{{trim}}
