---
identifier: "nnv2_cot_gm_planning"
name: "🧠 CoT: GM Planning"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 79
order_enabled: false
---

{{// @category CoT-Steps }}
{{// @tooltip NemoNet v2 modular reasoning step. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_GMPlanningName::GM Planning}}
{{setvar::CoTStep_GMPlanning::GM PLANNING: For RPG-like scenes, define the situation, opposition, resources, clocks, likely consequences, and fair openings. Preserve uncertainty without hiding the physical facts the character could observe.}}
{{trim}}