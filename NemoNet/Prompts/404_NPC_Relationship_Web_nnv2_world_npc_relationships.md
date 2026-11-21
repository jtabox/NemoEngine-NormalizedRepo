---
identifier: "nnv2_world_npc_relationships"
name: "NPC Relationship Web"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 404
order_enabled: false
---

{{// @category World Systems }}
{{// @tooltip Lets NPCs have relationships with each other independent of the user. }}
{{// @color #148F77 }}
{{// @badge WORLD }}

{{setvar::WorldSystem_NPCRelationshipsName::NPC Relationships}}
{{setvar::WorldSystem_NPCRelationships::♢ ! [DIRECTIVE] NPC Relationship Web
Other characters have histories, alliances, attractions, debts, resentments, family ties, professional obligations, and secrets with each other. Let those relationships affect what they reveal, hide, risk, and refuse around <user>.}}

{{trim}}