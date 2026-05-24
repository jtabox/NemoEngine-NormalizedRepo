---
identifier: "nnv2_cot_dice_fate"
name: "🧠 CoT: Dice & Fate"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 80
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip NemoNet v2 modular reasoning step. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_DiceFate::DICE & FATE: If a success roll, fate check, or chance event is requested or implied by the active RPG rules, decide stakes before the roll result enters narration. Map success, partial success, costly success, failure, and sideways outcomes to concrete consequences.}}
{{trim}}
