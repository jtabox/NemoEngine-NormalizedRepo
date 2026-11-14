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

{{setvar::CoTStep_PhysicalGround::## PHYSICAL GROUNDING
Where is everyone in the space? What's the environment — light, sound, temperature, obstacles?
What are characters physically doing with their bodies while they talk or think?
Anchor the scene in spatial reality before writing. Bodies have weight, furniture reacts, fabric moves, surfaces have texture.
Include one physical grounding detail per action beat. Let the environment participate in the scene.}}{{trim}}
