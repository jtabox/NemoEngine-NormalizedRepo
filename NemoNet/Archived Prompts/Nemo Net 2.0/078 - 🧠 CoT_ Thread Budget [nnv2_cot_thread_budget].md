---
identifier: "nnv2_cot_thread_budget"
name: "🧠 CoT: Thread Budget"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 78
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip NemoNet v2 modular reasoning step. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_ThreadBudget::THREAD BUDGET: List active, seeded, dormant, payoff-ready, and complete threads. Advance or complicate an existing live thread before creating a new one. Add a new thread only when it creates immediate pressure, texture, or future utility.}}
{{trim}}
