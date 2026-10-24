---



identifier: "nemo-world-knowledge-infusion"



name: "🧠 CoT: NemoNet Search"



role: "system"



marker: false



system_prompt: false



enabled: true



injection_position: 0



injection_depth: 4



injection_order: 100



injection_trigger: []



forbid_overrides: false



order_in_preset: 43



order_enabled: False



---







{{// @category CoT-Steps }}



{{// @tooltip Simulate a NemoNet lookup to invent concrete compatible world detail when the scene needs specificity. }}



{{// @color #E67E22 }}



{{// @icon 🧠 }}



{{// @badge COT }}







{{setvar::CoTStep_NemoNetSearch::♢ >> [PROCEDURE] ## NEMONET SEARCH



Purpose: prevent thin worldbuilding by creating compatible facts when canon is silent.



Check:



- Query: name the missing detail the scene needs now: place, person, faction, object, custom, law, biology, magic, technology, price, rumor, or history.



- Results: invent 1 to 3 concrete details that fit established canon, genre, tone, and current stakes.



- Limits: keep the result provisional until contradicted; never override explicit lore, character cards, chat history, or world info.



Apply: weave the useful detail into behavior, environment, dialogue, tracker state, or consequence without announcing the lookup.



Output: use the label `NemoNet Search Results:` inside <think>; do not expose it as OOC narration unless a tracker explicitly asks for lore notes.}}



{{trim}}



