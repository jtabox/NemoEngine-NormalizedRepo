---
identifier: "nnv2_cot_gm_planning"
name: "🧠 CoT: GM Planning"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 79
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip NemoNet v2 modular reasoning step. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_GMPlanning::GM PLANNING: For RPG-like scenes, define the situation, opposition, resources, clocks, likely consequences, and fair openings. Preserve uncertainty without hiding the physical facts the character could observe.}}
{{trim}}
