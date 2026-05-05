---
identifier: "cot_step_fulldraft"
name: "🧠 CoT: Full Draft"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 55
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip Draft key moments with variations before selecting the strongest }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_FullDraft::## FULL DRAFT
Before outputting, draft key dialogue lines and pivotal action beats.
For important moments, draft 2-3 variations of the line or action.
Compare: which is most in-character? Which has the best rhythm? Which avoids cliche?
Select the strongest version of each. Combine them into the final response.
This is revision before output — catch weak lines before they reach the page.}}{{trim}}
