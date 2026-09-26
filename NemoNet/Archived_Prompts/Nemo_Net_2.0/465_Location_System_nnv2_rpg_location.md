---
identifier: "nnv2_rpg_location"
name: "Location System"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 465
order_enabled: false
---

{{// @category RPG Systems }}
{{// @tooltip Location System module. }}
{{// @color #884EA0 }}
{{// @badge RPG }}

{{setvar::RPGSystem_LocationName::Location}}
{{setvar::RPGSystem_Location::♢ >> [PROCEDURE] Location System
Track zones, routes, landmarks, hazards, exits, controlled areas, known paths, hidden spaces, and travel friction. Location should shape tactics and social access.}}

{{trim}}