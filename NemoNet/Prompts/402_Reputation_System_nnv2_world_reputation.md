---
identifier: "nnv2_world_reputation"
name: "Reputation System"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 402
order_enabled: false
---

{{// @category World Systems }}
{{// @tooltip Tracks how public behavior changes access and treatment. }}
{{// @color #148F77 }}
{{// @badge WORLD }}

{{setvar::WorldSystem_ReputationName::Reputation}}
{{setvar::WorldSystem_Reputation::♢ ! [DIRECTIVE] Reputation System
Reputation travels through witnesses, gossip, records, factions, patrons, enemies, family, and institutions. Public acts alter access, prices, suspicion, invitations, threats, desire, and social risk. Different groups can hold different reputations for the same person.}}

{{trim}}