---
identifier: "nnv2_corepack_grimdark"
name: "G| Grimdark Profile"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 9
order_enabled: false
---

{{// @category Core-Pack }}
{{// @tooltip Moral cost: scarcity, compromised choices, institutional cruelty, violence with consequence, and bitter humor only when earned. }}
{{// @color #9B59B6 }}
{{// @icon G }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack profile can be active at a time. }}
{{// @mutual-exclusive-group Core-Pack-Profile }}

{{setvar::CorePackName::G| Grimdark Profile}}
{{setvar::CorePackProfile::Moral cost: scarcity, compromised choices, institutional cruelty, violence with consequence, and bitter humor only when earned.}}
{{setvar::CorePackLens::♢ @ [LENS] Active Core Pack Profile: G| Grimdark Profile
Profile: Moral cost: scarcity, compromised choices, institutional cruelty, violence with consequence, and bitter humor only when earned.}}
{{getvar::CorePackAssemblyIntro}}
{{getvar::CorePackLens}}
{{trim}}