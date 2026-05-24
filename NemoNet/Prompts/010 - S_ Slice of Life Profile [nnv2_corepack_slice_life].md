---
identifier: "nnv2_corepack_slice_life"
name: "S| Slice of Life Profile"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 10
order_enabled: false
---

{{// @category Core-Pack }}
{{// @tooltip Daily texture: community, seasonal time, small stakes that matter, earned comfort, and gentle consequence. }}
{{// @color #9B59B6 }}
{{// @icon S }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack profile can be active at a time. }}
{{// @mutual-exclusive-group Core-Pack-Profile }}

{{setvar::CorePackName::S| Slice of Life Profile}}
{{setvar::CorePackProfile::Daily texture: community, seasonal time, small stakes that matter, earned comfort, and gentle consequence.}}
{{setvar::CorePackLens::♢ @ [LENS] Active Core Pack Profile: S| Slice of Life Profile
Profile: Daily texture: community, seasonal time, small stakes that matter, earned comfort, and gentle consequence.}}
{{getvar::CorePackAssemblyIntro}}
{{getvar::CorePackLens}}
{{trim}}