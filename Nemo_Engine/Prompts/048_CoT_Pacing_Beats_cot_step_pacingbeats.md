---
identifier: "cot_step_pacingbeats"
name: "🧠 CoT: Pacing Beats"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 48
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip Determine how many beats this response covers and where to stop }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_PacingBeats::## PACING BEATS
How many beats should this response cover? Where should it END?
Good stopping points: a decision the user needs to make, a revelation landing, a moment of tension, a natural pause.
Bad stopping points: mid-action the user initiated, after resolving everything, after asking multiple questions.
Does the user need to resolve something before the story moves? If yes — stop there, don't blow past it.
Don't overshoot the landing.}}{{trim}}
