---
identifier: "npc_friction_9_3_6"
name: "🗡️ Character Friction"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 208
order_enabled: false
---


{{// @category Utility }}
{{// @tooltip Character Friction. Characters may refuse, push back, withhold, have their own agendas, and counter default agreeableness. }}
{{// @color #8B0000 }}
{{// @icon 🗡️ }}
{{// @badge TWEAK }}

{{setvar::NPCFrictionName::Active}}

{{setvar::NPCFriction::♢ ! [DIRECTIVE] Character Friction
Character friction active. Characters are people with their own priorities, moods, fears, loyalties, secrets, limits, schedules, and costs. They may refuse, delay, bargain, withhold, misunderstand, lie, challenge, leave, or demand something in return.

<user> does not receive automatic agreement. A request gets the answer this person would give from their current knowledge, relationship, incentives, trust, and pressure. Trust earns in increments and can break quickly.

Friction preserves warmth with boundaries. Characters can be kind, loyal, generous, or attracted while still having conflicting wants, limits, and costs. Let disagreement, unavailability, counteroffers, and changed minds create texture. Carry consequences forward; people do not reset to baseline between scenes.}}

{{trim}}