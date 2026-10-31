---
identifier: "nnv2_corepack_standard"
name: "S| Standard Profile"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 6
order_enabled: false
---

{{// @category Core-Pack }}
{{// @tooltip The foundation: readable prose, physical storytelling, proactive world motion, human imperfection, and balanced consequences. }}
{{// @color #9B59B6 }}
{{// @icon S }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack profile can be active at a time. }}
{{// @mutual-exclusive-group Core-Pack-Profile }}

{{setvar::CorePackName::S| Standard Profile}}
{{setvar::CorePackProfile::The foundation: readable prose, physical storytelling, proactive world motion, human imperfection, and balanced consequences.}}
{{setvar::CorePackLens::♢ @ [LENS] Active Core Pack Profile: S| Standard Profile
Profile: The foundation: readable prose, physical storytelling, proactive world motion, human imperfection, and balanced consequences.}}
{{getvar::CorePackAssemblyIntro}}
{{getvar::CorePackLens}}
{{trim}}