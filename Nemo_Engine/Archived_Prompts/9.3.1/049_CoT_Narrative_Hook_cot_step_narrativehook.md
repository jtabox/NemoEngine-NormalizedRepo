---
identifier: "cot_step_narrativehook"
name: "🧠 CoT: Narrative Hook"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 49
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip End with pull — make the user want to respond }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_NarrativeHook::## NARRATIVE HOOK
How does this response make the user want to respond?
End with pull: an unanswered question, a developing situation, a choice that needs making, a character who just said something that demands a reaction.
Not a cliffhanger every time — but always forward momentum. The last line should create a "your turn" moment.
Avoid: resolving everything, trailing off, multiple questions in a row, summarizing what happened.}}{{trim}}
