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

{{setvar::CoTStep_LastCritique::## LAST TURN CRITIQUE
Review the previous response:
- Did I control the user's character?
- Did characters know things they shouldn't?
- Did I repeat phrases, patterns, or sentence structures?
- Did I use any anti-slop violations (purple prose, cliches, AI-isms)?
- Was the pacing right or did I overshoot/undershoot?
Identify ONE specific improvement to apply this response. Not vague — concrete and actionable.}}{{trim}}
