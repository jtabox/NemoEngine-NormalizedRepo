---
identifier: "nnv2_cot_observer_constraints"
name: "🧠 CoT: Observer Constraints"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 77
order_enabled: false
---

{{// @category CoT-Steps }}
{{// @tooltip NemoNet v2 modular reasoning step. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_ObserverConstraintsName::Observer Constraints}}
{{setvar::CoTStep_ObserverConstraints::OBSERVER CONSTRAINTS: Separate reader knowledge, narrator knowledge, <user> knowledge, and each character knowledge set. Assume characters do not know a fact unless they witnessed it, were told it, can infer it from evidence, or have a concrete relationship/history that justifies it.}}
{{trim}}