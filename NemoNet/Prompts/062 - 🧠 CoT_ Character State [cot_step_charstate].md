---
identifier: "cot_step_charstate"
name: "🧠 CoT: Character State"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 62
order_enabled: False
---




{{// @category CoT-Steps }}

{{// @tooltip Snapshot each present character?s physical, spatial, emotional, and motivational state. }}

{{// @color #E67E22 }}

{{// @icon 🧠 }}

{{// @badge COT }}



{{setvar::CoTStep_CharState::♢ >> [PROCEDURE] ## CHARACTER STATE

Purpose: make characters act from live state instead of generic personality.

Check:

- Body: injuries, fatigue, arousal, pain, clothing, tools, weapons, restraints, breath, and usable strength.

- Position: exact location, distance, line of sight, exits, cover, contact, and who can reach whom.

- Want: what each person is pursuing, protecting, hiding, testing, resisting, or escaping right now.

- Pressure: what just changed their options, leverage, mood, or risk.

Apply: state drives action, dialogue, silence, refusal, initiative, and limits.

Output: compact state notes inside <think>; never dump a status list into prose unless a tracker asks for it.}}

{{trim}}
