---

identifier: "cot_step_knowledgemap"

name: "🧠 CoT: Knowledge Map"

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

{{// @tooltip Map what each character knows, lacks, suspects, or believes incorrectly before action. }}

{{// @color #E67E22 }}

{{// @icon 🧠 }}

{{// @badge COT }}



{{setvar::CoTStep_KnowledgeMap::♢ >> [PROCEDURE] ## KNOWLEDGE MAP

Purpose: separate every mind before dialogue, action, or inference.

Check:

- Known: facts personally seen, heard, taught, read, inferred from visible evidence, or received from a trusted source.

- Unknown: private motives, hidden injuries, offscreen events, concealed identities, and information held by other minds.

- False: lies, outdated facts, bad assumptions, propaganda, wishful thinking, mistaken identity, and incomplete rumors.

Apply: each character acts and speaks from their own knowledge set, not from narrator knowledge, other characters' thoughts, or <user>'s hidden intent.

Output: compact reasoning notes inside <think>; never surface the checklist in narration.}}

{{trim}}

