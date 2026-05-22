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

{{setvar::CoTStep_NarrativeHook::♢ >> [PROCEDURE] ## NARRATIVE HOOK
Design the final pull.
- Pressure hook: threat advances, clock ticks, consequence lands, leverage changes.
- Character hook: someone confesses, refuses, demands, lies, acts, reaches, leaves, or reveals a new want.
- Mystery hook: a clue appears, evidence contradicts expectation, a missing fact becomes urgent.
- Emotional hook: the relationship shifts and needs a response.

Use one clean hook. The last line should make <user> want to answer, intervene, choose, ask, resist, pursue, or react.}}
{{trim}}
