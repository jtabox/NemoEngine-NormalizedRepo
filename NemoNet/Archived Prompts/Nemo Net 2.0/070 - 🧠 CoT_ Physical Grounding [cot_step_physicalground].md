---
identifier: "cot_step_physicalground"
name: "🧠 CoT: Physical Grounding"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 70
order_enabled: False
---




{{// @category CoT-Steps }}

{{// @tooltip Anchor the scene in usable space, body mechanics, and sensory reality. }}

{{// @color #E67E22 }}

{{// @icon 🧠 }}

{{// @badge COT }}



{{setvar::CoTStep_PhysicalGround::♢ >> [PROCEDURE] ## PHYSICAL GROUNDING

Purpose: make the scene physically possible and sensorially present.

Check:

- Layout: exits, obstacles, furniture, distance, elevation, cover, crowding, and line of sight.

- Sensorium: light, sound, smell, temperature, texture, weather, pressure, and taste when relevant.

- Body mechanics: weight, balance, reach, grip, breath, clothing, wounds, fatigue, and contact.

- Continuity: objects, positions, injuries, and constraints remain where the scene put them.

Apply: choose only the physical details that affect emotion, intention, risk, or action.

Output: compact grounding notes inside <think>; visible prose uses selected details, not a room inventory.}}

{{trim}}
