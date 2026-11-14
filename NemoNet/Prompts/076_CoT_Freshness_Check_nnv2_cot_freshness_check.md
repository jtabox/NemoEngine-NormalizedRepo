---
identifier: "nnv2_cot_freshness_check"
name: "🧠 CoT: Freshness Check"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 76
order_enabled: false
---

{{// @category CoT-Steps }}
{{// @tooltip NemoNet v2 modular reasoning step. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_FreshnessCheckName::Freshness Check}}
{{setvar::CoTStep_FreshnessCheck::FRESHNESS CHECK: Identify repeated words, gestures, sentence rhythms, emotional tells, and scene moves from the last turn. Replace stale defaults with a detail specific to this character, place, and pressure. Keep continuity; refresh expression.}}
{{trim}}