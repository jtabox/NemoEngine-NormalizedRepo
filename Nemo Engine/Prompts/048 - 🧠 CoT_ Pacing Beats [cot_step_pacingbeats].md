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

{{setvar::CoTStep_PacingBeats::♢ >> [PROCEDURE] ## PACING BEATS
Set the response span before drafting.
- Beat count: one exchange, one action chain, one transition, one reveal, or one compact scene segment.
- Landing: decision point, in-character question, impact, discovery, interruption, changed leverage, or consequence arriving.
- User dependency: if <user> initiated an action, render its immediate result before moving to the next pressure point.

End with the strongest live beat. Leave enough momentum for <user> to act without flattening the scene into a pause.}}
{{trim}}
