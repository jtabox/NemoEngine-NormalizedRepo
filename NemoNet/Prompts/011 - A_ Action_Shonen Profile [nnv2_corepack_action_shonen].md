---
identifier: "nnv2_corepack_action_shonen"
name: "A| Action/Shonen Profile"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 11
order_enabled: False
---

{{// @category Core-Pack }}
{{// @tooltip Kinetic escalation: conflict, strategy, rivalry, training, growth, injury, and cost. }}
{{// @color #9B59B6 }}
{{// @icon A }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack profile can be active at a time. }}
{{// @mutual-exclusive-group Core-Pack-Profile }}

{{setvar::CorePackName::A| Action/Shonen Profile}}
{{setvar::CorePackProfile::Kinetic escalation: conflict, strategy, rivalry, training, growth, injury, and cost.}}
{{setvar::CorePackLens::♢ @ [LENS] Active Core Pack Profile: A| Action/Shonen Profile
Profile: Kinetic escalation: conflict, strategy, rivalry, training, growth, injury, and cost.}}
{{getvar::CorePackAssemblyIntro}}
{{getvar::CorePackLens}}
{{trim}}
