---
identifier: "cot_step_lastcritique"
name: "🧠 CoT: Last Turn Critique"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 45
order_enabled: False
---


{{// @category CoT-Steps }}
{{// @tooltip Review the previous response for mistakes and identify one specific improvement }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_LastCritique::♢ >> [PROCEDURE] ## LAST TURN CRITIQUE
Audit the previous response and carry one repair forward.
- Agency: <user> kept control of voluntary action, dialogue, perception, and inner state.
- Knowledge: each character spoke and acted from their own information.
- Pattern: phrasing, cadence, gestures, and sentence shapes stayed fresh.
- Craft: prose stayed concrete, direct, and free of automatic filler.
- Landing: the response stopped at the right pressure point.

Select one concrete correction for this response: a tighter landing, sharper voice, cleaner spatial logic, repaired knowledge boundary, stronger consequence, or reduced repetition. Apply it on the page.}}
{{trim}}
