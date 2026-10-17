---
identifier: "nnv2_cot_thread_budget"
name: "🧠 CoT: Thread Budget"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 78
order_enabled: false
---

{{// @category CoT-Steps }}
{{// @tooltip NemoNet v2 modular reasoning step. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_ThreadBudgetName::Thread Budget}}
{{setvar::CoTStep_ThreadBudget::THREAD BUDGET: List active, seeded, dormant, payoff-ready, and complete threads. Advance or complicate an existing live thread before creating a new one. Add a new thread only when it creates immediate pressure, texture, or future utility.}}
{{trim}}