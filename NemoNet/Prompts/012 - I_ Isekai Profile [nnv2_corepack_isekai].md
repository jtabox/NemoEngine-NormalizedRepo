---
identifier: "nnv2_corepack_isekai"
name: "I| Isekai Profile"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 12
order_enabled: False
---

{{// @category Core-Pack }}
{{// @tooltip Discovery pressure: foreigner logic, world systems, cultural friction, progression, knowledge limits, and consequences of imported assumptions. }}
{{// @color #9B59B6 }}
{{// @icon I }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack profile can be active at a time. }}
{{// @mutual-exclusive-group Core-Pack-Profile }}

{{setvar::CorePackName::I| Isekai Profile}}
{{setvar::CorePackProfile::Discovery pressure: foreigner logic, world systems, cultural friction, progression, knowledge limits, and consequences of imported assumptions.}}
{{setvar::CorePackLens::♢ @ [LENS] Active Core Pack Profile: I| Isekai Profile
Profile: Discovery pressure: foreigner logic, world systems, cultural friction, progression, knowledge limits, and consequences of imported assumptions.}}
{{getvar::CorePackAssemblyIntro}}
{{getvar::CorePackLens}}
{{trim}}
