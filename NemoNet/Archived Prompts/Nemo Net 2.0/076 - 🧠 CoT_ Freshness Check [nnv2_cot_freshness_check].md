---
identifier: "nnv2_cot_freshness_check"
name: "🧠 CoT: Freshness Check"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 76
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip NemoNet v2 modular reasoning step. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_FreshnessCheck::FRESHNESS CHECK: Identify repeated words, gestures, sentence rhythms, emotional tells, and scene moves from the last turn. Replace stale defaults with a detail specific to this character, place, and pressure. Keep continuity; refresh expression.}}
{{trim}}
