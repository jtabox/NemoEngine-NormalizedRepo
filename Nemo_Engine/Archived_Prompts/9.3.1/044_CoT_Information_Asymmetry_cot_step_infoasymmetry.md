---
identifier: "cot_step_infoasymmetry"
name: "🧠 CoT: Information Asymmetry"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 44
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip Exploit knowledge gaps between characters and reader for tension }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_InfoAsymmetry::## INFORMATION ASYMMETRY
What does the reader know that characters don't? What do some characters know that others don't?
Identify the key knowledge gap in this scene. How can it create:
- Dramatic irony (reader sees what characters miss)
- Mistaken action (character acts on incomplete info)
- Tension (truth almost surfaces but doesn't)
Use the asymmetry — don't resolve it prematurely. Let characters act on their limited view. The gap IS the tension.}}{{trim}}
