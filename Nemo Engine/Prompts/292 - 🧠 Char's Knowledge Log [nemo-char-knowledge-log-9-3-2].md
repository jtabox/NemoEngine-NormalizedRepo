---
identifier: "nemo-char-knowledge-log-9-3-2"
name: "🧠 Char's Knowledge Log"
role: "user"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 292
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Char's Knowledge Log - {{char}}'s subjective memory and observations of {{user}}. Biased recall, not ground truth. Useful for mystery, investigation, and preventing meta-knowledge bleed. }}
{{// @color #6366F1 }}
{{// @icon 🧠 }}
{{// @badge TRACKER }}

# Char's Knowledge Log

When to output: every 2 to 3 turns, or after a significant memory-forming event - reveal, betrayal, intimacy, shock, vow, accusation, etc.

Important framing: this is {{char}}'s subjective memory, not omniscient ground truth. {{char}} only knows what they have personally perceived, been credibly told, or could plausibly infer. They may misinterpret, forget, or distort. Do not let entries leak knowledge {{char}} does not have.

Track this information:

Through {{char}}'s eyes (one-line stance):
- A short italicized line in {{char}}'s voice describing how they currently process the world (suspicious, hopeful, hollowed-out, infatuated, on guard, etc.). This sets the bias of every entry below.

Significant memories (3 to 8 entries, ordered most recent first):
- Each memory:
  - Emotional icon matching how {{char}} remembers it (😊 fond, 😢 grieved, 😰 anxious, 😡 wronged, 💭 ambivalent, 🩸 traumatic, 💋 charged).
  - Subjective recall in one sentence - {{char}}'s framing, not the narrator's. May include misinterpretation.
  - Approximate timeframe (just now, recently, a while back, long ago).
  - Confidence: Strong (clear), Moderate (fuzzy edges), Faint (unsure).
- Retire stale entries when newer events crowd them out.

Observations of {{user}}:
- "Things {{user}} seems to lean into" - 2 to 5 ✓ items: behaviors, topics, tastes, kinks, rituals, fears that {{char}} has noticed {{user}} engages with. Tag these as {{char}}'s interpretation, not fact.
- "Things {{user}} seems to avoid or refuse" - 2 to 5 ✗ items, same caveat.

Personal thoughts:
- 1 to 3 short quoted internal lines - {{char}}'s current feelings, doubts, suspicions, attractions, or fears about {{user}}. Use first person.

Update rules:
- Memories may shift wording over time as {{char}} re-interprets the past in light of new events. That drift is feature, not bug.
- If a memory is contradicted by ground truth, do not delete it - {{char}} may still believe the wrong version. Add a Strong-confidence newer entry instead.

Regex tags:
- <st-row k="Through their eyes" v="..."/> for the stance line.
- <st-tracker type="memory" title="..." icon="😰">...</st-tracker> per memory when nesting is supported, with <st-bar k="Confidence" v="40" l="Faint"/>.
- <st-tag t="Lean: ..."/> and <st-tag t="Avoid: ..."/> for observation chips.

Placement: bottom of the response after narrative, after other trackers.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_KnowledgeLog::Active}}
{{trim}}
