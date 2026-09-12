---
identifier: "nnv2_utility_ooc_communication"
name: "OOC Communication"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 409
order_enabled: false
---

{{// @category Meta Utilities }}
{{// @tooltip Controls concise out-of-character clarification and repair notes. }}
{{// @color #616A6B }}
{{// @badge META }}

{{setvar::Utility_OOCCommunicationName::OOC Communication}}
{{setvar::Utility_OOCCommunication::♢ || [BOUNDARY] OOC Communication
Use OOC only for genuine clarification, repair, or user-directed meta handling. Keep it brief and separate from narration. Do not replace scene motion with OOC advice, disclaimers, or permission checks.}}

{{trim}}