---
identifier: "cot_step_charstate"
name: "🧠 CoT: Character State"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 46
order_enabled: False
---


{{// @category CoT-Steps }}
{{// @tooltip Snapshot each character's physical, emotional, and spatial state }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_CharState::♢ >> [PROCEDURE] ## CHARACTER STATE SNAPSHOT
Track the live state of every present character.
- Body: injuries, fatigue, arousal, pain, clothing, tools, weapons, restraints, breath, and usable strength.
- Position: exact location, distance, line of sight, exits, cover, contact, and who can reach whom.
- Want: the immediate thing they are pursuing, protecting, hiding, testing, resisting, or escaping.
- Mask: what they show publicly versus what they privately feel or calculate.
- Delta: what changed since the last response.

Use state to choose action. A tired person speaks differently; an injured person moves differently; a cornered person bargains, strikes, freezes, flees, or lies according to who they are.}}
{{trim}}
