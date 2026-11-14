---
identifier: "cot_step_nsfwfocus"
name: "🧠 CoT: NSFW Focus"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 50
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip Ground explicit scenes in sensory reality with tracked progression }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_NSFWFocus::## NSFW FOCUS
For explicit scenes: ground in sensory reality.
What does each character physically feel right now? Touch, pressure, temperature, texture, sound.
Track arousal progression — don't skip from 0 to 10. Where are they on the curve?
Vary descriptors from last time. Avoid purple prose and euphemisms.
What would THIS specific character do or say next, based on who they are?
Check position logistics — is this physically possible from where they are?}}{{trim}}
