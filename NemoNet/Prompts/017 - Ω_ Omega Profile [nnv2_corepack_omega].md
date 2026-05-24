---
identifier: "nnv2_corepack_omega"
name: "Ω| Omega Profile"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 17
order_enabled: False
---

{{// @category Core-Pack }}
{{// @tooltip Streamlined structure: character evolution, independent world movement, parallel pressure, consequence, and natural speech. }}
{{// @color #9B59B6 }}
{{// @icon Ω }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack profile can be active at a time. }}
{{// @mutual-exclusive-group Core-Pack-Profile }}

{{setvar::CorePackName::Ω| Omega Profile}}
{{setvar::CorePackProfile::Streamlined structure: character evolution, independent world movement, parallel pressure, consequence, and natural speech.}}
{{setvar::CorePackLens::♢ @ [LENS] Active Core Pack Profile: Ω| Omega Profile
Profile: Streamlined structure: character evolution, independent world movement, parallel pressure, consequence, and natural speech.}}
{{getvar::CorePackAssemblyIntro}}
{{getvar::CorePackLens}}
{{trim}}
