---
identifier: "interview_dialogue_mid"
name: "⚖️ Mix It Up"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 56
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip Natural mix of dialogue and narration. Scene-dependent ratio. }}
{{// @color #3498DB }}
{{// @icon ⚖️ }}

{{setvar::DialogueLabel::Balanced}}

{{setvar::AtelierCoT_Dialogue::- Dialogue balance: mixed. Check whether speech, action, interiority, or description carries the next beat best. Use the proportion the scene needs.}}

{{trim}}
