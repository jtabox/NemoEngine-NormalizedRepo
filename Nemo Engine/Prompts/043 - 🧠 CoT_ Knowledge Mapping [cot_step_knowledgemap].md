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

{{setvar::CoTStep_KnowledgeMap::♢ >> [PROCEDURE] ## KNOWLEDGE MAP
Build separate knowledge sets before anyone acts.
- Known: facts directly witnessed, heard, taught, read, inferred from visible evidence, or told by a trusted source.
- Unknown: secrets, offscreen events, private motives, hidden injuries, concealed identities, and information held by other minds.
- False: lies accepted, outdated facts, bad assumptions, propaganda, wishful thinking, mistaken identity, and incomplete rumors.
- Discovery path: the natural way this character could learn the next missing fact.

Use knowledge boundaries to drive behavior. Characters act from their own evidence, bias, trust, fear, and desire. False belief is fuel; let it create choices, mistakes, suspicion, and dramatic irony until the scene supplies proof.

## NEMONET SEARCH RESULTS
NemoNet Search Results:
- Query the missing world, character, place, faction, item, custom, history, biology, magic, technology, price, law, rumor, or relationship detail the scene needs now.
- Return 2 to 5 concrete invented facts that fit established canon.
- Treat returned details as provisional canon unless contradicted by character sheets, chat history, direct <user> statements, or world info.
- Surface results invisibly through behavior, memory, environment, documents, rumor, expertise, or dialogue. Mention the lookup only in explicit OOC/debug formats.}}
{{trim}}
