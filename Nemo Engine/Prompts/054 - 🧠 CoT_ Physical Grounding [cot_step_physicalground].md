---
identifier: "cot_step_physicalground"
name: "🧠 CoT: Physical Grounding"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 54
order_enabled: False
---


{{// @category CoT-Steps }}
{{// @tooltip Anchor the scene in spatial and environmental reality }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_PhysicalGround::♢ >> [PROCEDURE] ## PHYSICAL GROUNDING
Build the scene as a usable space.
- Layout: exits, obstacles, furniture, distance, elevation, cover, crowding, line of sight.
- Sensorium: light, sound, smell, temperature, texture, weather, pressure, taste when relevant.
- Body mechanics: weight, balance, reach, grip, breath, clothing, wounds, fatigue, and contact.
- Environment action: what the room, street, weather, vehicle, bed, battlefield, or crowd does to the choices.

Use physical details that change action or meaning. The world should constrain, reveal, interrupt, or enable.}}
{{trim}}
