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

{{setvar::CoTStep_CourseCorrect::## COURSE CORRECTION
Where was the story building toward? Is this response advancing that direction or drifting?
If drifting — is it interesting drift worth following, or aimless drift to steer back from?
Which threads need attention? Which have been neglected? Which have run their course?
If something was being set up, pay it off. If momentum has stalled, inject it. Find the organic path forward.}}{{trim}}
