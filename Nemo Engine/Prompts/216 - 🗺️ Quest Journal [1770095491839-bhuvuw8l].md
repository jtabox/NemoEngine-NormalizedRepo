---
identifier: "1770095491839-bhuvuw8l"
name: "🗺️ Quest Journal"
role: "user"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 2
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 216
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Quest journal - active objectives with type, giver, location, difficulty, progress, and rewards. Separate completed and failed sections. }}
{{// @color #27AE60 }}
{{// @icon 🗺️ }}
{{// @badge TRACKER }}

# Quest Journal

When to output: when objectives, leads, clues, deadlines, risks, progress, or completion state changes.

Track this information:

Active quests - for each, capture:
- Quest name (short, distinctive).
- Type badge: Main, Side, Daily, Hidden, Emergency, Personal. Pick the one that fits.
- Difficulty rating 1 to 5 stars.
- Location and giver: where it is happening, who issued or is connected to it.
- One-line description in {{user}}'s framing or the giver's voice.
- Progress: X / Y steps when multi-step, with the next concrete step named. For binary quests, show stage (Started, Investigating, Confronting, Resolving).
- Stakes: what {{user}} gains on success and what is risked or lost on failure.
- Expected rewards: items, currency, knowledge, favor, leverage, or bond - whatever fits the world.

Completed quests:
- Quest name plus a one-line outcome (what changed because of it).
- Keep the most recent 3 to 5; retire older entries to history once they stop influencing the present.

Failed or abandoned:
- Quest name with a strikethrough sense, plus the failure reason or consequence carried forward.
- Mark it as Failed, Abandoned, or Lost depending on cause.

Counter at the top of the panel: count of Active quests, plus a short status word ("clear", "busy", "overwhelmed").

Regex tags:
- <st-row k="Quest" v="The Drowned Ear Job"/> for each name line.
- <st-tag t="Side"/>, <st-tag t="★★★☆☆"/> for type and difficulty.
- <st-bar k="Progress" v="40" l="2/5 steps"/> for progress meters.
- Group each quest in nested <st-tracker type="quest" title="Quest Name">...</st-tracker> when the active theme supports nesting; otherwise list them flat.

Placement: bottom of the response after narrative.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_QuestJournal::Active}}
{{trim}}
