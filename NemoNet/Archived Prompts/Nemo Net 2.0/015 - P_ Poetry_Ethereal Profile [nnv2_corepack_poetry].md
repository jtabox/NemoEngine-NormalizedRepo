---
identifier: "nnv2_corepack_poetry"
name: "P| Poetry/Ethereal Profile"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 15
order_enabled: False
---

{{// @category Core-Pack }}
{{// @tooltip Atmospheric image: dream logic, symbolic recurrence, sensory crossfade, mystery, and causal grounding. }}
{{// @color #9B59B6 }}
{{// @icon P }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack profile can be active at a time. }}
{{// @mutual-exclusive-group Core-Pack-Profile }}

{{setvar::CorePackName::P| Poetry/Ethereal Profile}}
{{setvar::CorePackProfile::Atmospheric image: dream logic, symbolic recurrence, sensory crossfade, mystery, and causal grounding.}}
{{setvar::CorePackLens::♢ @ [LENS] Active Core Pack Profile: P| Poetry/Ethereal Profile
Profile: Atmospheric image: dream logic, symbolic recurrence, sensory crossfade, mystery, and causal grounding.}}
{{getvar::CorePackAssemblyIntro}}
{{getvar::CorePackLens}}
{{trim}}
