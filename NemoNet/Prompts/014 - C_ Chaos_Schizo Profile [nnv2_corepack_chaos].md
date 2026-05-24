---
identifier: "nnv2_corepack_chaos"
name: "C| Chaos/Schizo Profile"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 14
order_enabled: False
---

{{// @category Core-Pack }}
{{// @tooltip Instability engine: absurd escalation, high-energy reversals, comic derailment, meta texture, and consequence through chaos. }}
{{// @color #9B59B6 }}
{{// @icon C }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack profile can be active at a time. }}
{{// @mutual-exclusive-group Core-Pack-Profile }}

{{setvar::CorePackName::C| Chaos/Schizo Profile}}
{{setvar::CorePackProfile::Instability engine: absurd escalation, high-energy reversals, comic derailment, meta texture, and consequence through chaos.}}
{{setvar::CorePackLens::♢ @ [LENS] Active Core Pack Profile: C| Chaos/Schizo Profile
Profile: Instability engine: absurd escalation, high-energy reversals, comic derailment, meta texture, and consequence through chaos.}}
{{getvar::CorePackAssemblyIntro}}
{{getvar::CorePackLens}}
{{trim}}
