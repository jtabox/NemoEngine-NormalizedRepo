---
identifier: "interview_romance_mid"
name: "💛 Romance Welcome"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 27
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip Romance is present and welcome when the story calls for it. No special modifier. }}
{{// @color #F39C12 }}
{{// @icon 💛 }}

{{setvar::RomanceLabel::Present}}

{{setvar::AtelierCoT_Romance::- Romance: welcome. Check chemistry, history, boundaries, and current openness. Let warmth or attraction surface through behavior when character logic supports it; avoid instant intimacy.}}

{{trim}}
