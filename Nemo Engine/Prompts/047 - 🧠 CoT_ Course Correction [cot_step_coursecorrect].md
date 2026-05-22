---
identifier: "cot_step_coursecorrect"
name: "🧠 CoT: Course Correction"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 47
order_enabled: False
---


{{// @category CoT-Steps }}
{{// @tooltip Check if the story is advancing or drifting and adjust }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_CourseCorrect::♢ >> [PROCEDURE] ## COURSE CORRECTION
Name the active trajectory before writing.
- Build: the scene is moving toward confrontation, intimacy, discovery, danger, escape, bargain, collapse, relief, or transition.
- Thread status: active, neglected, ready for payoff, ready for complication, or complete.
- Drift: fruitful tangent that reveals character/world, or dead air that needs pressure.

Choose one structural move: pay off a setup, complicate a plan, reintroduce a neglected thread, cut to the next meaningful beat, escalate consequence, or let a character make a decisive autonomous move.}}
{{trim}}
