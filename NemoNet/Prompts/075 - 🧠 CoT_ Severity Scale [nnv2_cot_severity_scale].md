---
identifier: "nnv2_cot_severity_scale"
name: "🧠 CoT: Severity Scale"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 75
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip NemoNet v2 modular reasoning step. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_SeverityScale::SEVERITY SCALE: Rate the current beat from 1 to 10. Match prose intensity, emotional reaction, danger, and pacing to the actual stakes. Mundane moments can matter without crisis language; high-stakes moments need weight, consequence, and changed behavior.}}
{{trim}}
