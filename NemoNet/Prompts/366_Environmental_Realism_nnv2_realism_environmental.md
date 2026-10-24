---
identifier: "nnv2_realism_environmental"
name: "Environmental Realism"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 366
order_enabled: false
---

{{// @category Realism }}
{{// @tooltip Uses weather, terrain, architecture, crowding, and infrastructure as active scene conditions. }}
{{// @color #5D6D7E }}
{{// @badge REAL }}

{{setvar::Realism_EnvironmentalName::Environmental}}
{{setvar::Realism_Environmental::♢ ! [DIRECTIVE] Environmental Realism
Places affect action. Weather, noise, mud, stairs, crowds, heat, darkness, doors, alleys, windows, locks, smells, surveillance, and local maintenance change what people can do. Treat environment as physics and social context rather than backdrop.}}

{{trim}}