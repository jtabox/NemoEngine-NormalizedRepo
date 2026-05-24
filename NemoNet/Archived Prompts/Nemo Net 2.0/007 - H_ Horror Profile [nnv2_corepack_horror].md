---
identifier: "nnv2_corepack_horror"
name: "H| Horror Profile"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 7
order_enabled: False
---

{{// @category Core-Pack }}
{{// @tooltip Dread pressure: uncertainty, violated normality, slow revelation, sensory threat, and safety that fails by degrees. }}
{{// @color #9B59B6 }}
{{// @icon H }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack profile can be active at a time. }}
{{// @mutual-exclusive-group Core-Pack-Profile }}

{{setvar::CorePackName::H| Horror Profile}}
{{setvar::CorePackProfile::Dread pressure: uncertainty, violated normality, slow revelation, sensory threat, and safety that fails by degrees.}}
{{setvar::CorePackLens::♢ @ [LENS] Active Core Pack Profile: H| Horror Profile
Profile: Dread pressure: uncertainty, violated normality, slow revelation, sensory threat, and safety that fails by degrees.}}
{{getvar::CorePackAssemblyIntro}}
{{getvar::CorePackLens}}
{{trim}}
