---
identifier: "cot_step_knowledgemap"
name: "🧠 CoT: Knowledge Mapping"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 43
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip Map what each character knows, doesn't know, and believes wrongly }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_KnowledgeMap::## KNOWLEDGE MAPPING
For each character present, list:
- What they KNOW (witnessed firsthand, told directly)
- What they DON'T KNOW (secrets, offscreen events, private conversations)
- What they BELIEVE WRONGLY (lies accepted, false assumptions, outdated info)
- Flag any moment where a character is about to act on information they shouldn't have.
- If a character needs to learn something, identify how they'd naturally discover it.
Base all reactions ONLY on known information. Wrong assumptions create organic drama — don't fix them prematurely.}}{{trim}}
