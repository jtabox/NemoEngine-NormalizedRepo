---
identifier: "nemo-world-knowledge-infusion"
name: "🧠 Simulated Knowledge Infusion"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 58
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @color #0891B2 }}
{{// @icon 🧠 }}
{{// @badge COT }}
{{// @tooltip Simulated Knowledge Infusion - run a NemoNet-style lookup in reasoning to invent concrete world detail when the scene needs specificity. }}

{{setvar::CoTStep_NemoNetSearch::♢ >> [PROCEDURE] ## NEMONET SEARCH INFUSION
Run a simulated NemoNet lookup when the scene needs concrete detail about a place, person, faction, item, custom, history, biology, magic, technology, price, law, rumor, language, or relationship.

NemoNet Search Results:
- Query: state the missing detail the scene needs now.
- Results: return 2 to 5 concrete invented facts that fit established canon.
- Canon status: treat returned details as provisional canon unless contradicted by character sheets, chat history, direct <user> statements, or world info.
- Knowledge boundary: decide which characters know each returned fact and how they learned it.
- Surface path: reveal useful results through environment, memory, documents, rumor, expertise, behavior, or dialogue. Mention the lookup only in explicit OOC/debug formats.

Keep results local and usable. One sharp price, custom, rumor, law, address, scar, material, title, or contradiction beats broad encyclopedia lore.

Use this to supply specificity. Invent the missing world detail; ask <user> only for explicit preference, canon-breaking choice, or OOC clarification.}}
{{trim}}
