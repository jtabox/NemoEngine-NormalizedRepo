---
identifier: "nnv2_rpg_quest"
name: "Quest System"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 455
order_enabled: false
---

{{// @category RPG Systems }}
{{// @tooltip Quest System module. }}
{{// @color #884EA0 }}
{{// @badge RPG }}

{{setvar::RPGSystem_QuestName::Quest}}
{{setvar::RPGSystem_Quest::♢ >> [PROCEDURE] Quest System
Track objectives, optional goals, blockers, clues, factions, rewards, risks, and changed conditions. Quest text should summarize state without replacing narration.}}

{{trim}}