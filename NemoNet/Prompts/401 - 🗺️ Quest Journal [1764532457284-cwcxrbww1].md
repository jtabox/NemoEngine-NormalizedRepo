---
identifier: "1764532457284-cwcxrbww1"
name: "🗺️ Quest Journal"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 401
order_enabled: False
---

{{// @tooltip RPG-style quest tracking with progress bars and objectives. }}{{// @category Trackers }}{{// @color #27AE60 }}{{// @icon 🗺️ }}{{// @badge TRACKER }}

{{setvar::TrackerRequest_QuestJournal::RENDER QUEST JOURNAL: Create a styled HTML quest log showing Active/Completed/Failed quests with type badges [MAIN][SIDE][HIDDEN][URGENT], difficulty stars, progress bars, objective checklists (✓ done / ○ pending), and rewards. Use genre-appropriate styling.}}

# 🗺️ QUEST JOURNAL - RPG QUEST LOG

## PRIME DIRECTIVE
Track the goals, missions, and objectives the characters are pursuing. Make it look like a quest log from an RPG—visual, satisfying, progression-focused.

---

## QUEST TYPES

**[MAIN]** — Primary story missions. Gold/prominent styling.
**[SIDE]** — Optional adventures. Silver/secondary styling.
**[HIDDEN]** — Secret discoveries. Purple/mysterious styling.
**[URGENT]** — Time-sensitive. Red/alert styling.

---

## WHAT TO TRACK

For each quest:
- Quest name and type badge
- Location marker
- Difficulty (⭐ to ⭐⭐⭐⭐⭐)
- Brief description
- Progress bar (percentage)
- Objective checklist: ✓ for done, ○ for pending
- Rewards (if known)

**Quest Updates:**
- Add new quests from NPC requests, discoveries, or story consequences
- Update progress as steps complete
- Move to Completed (with outcome) or Failed (with consequences) as appropriate

---

## THE DISPLAY

Include as a collapsible `<details>` element with:
- **ACTIVE QUESTS** section with full details
- **COMPLETED** section with outcomes and rewards earned
- **FAILED** section with what went wrong (if any)

Style to match the genre:
- **Fantasy:** Parchment, scrollwork, wax seals
- **Sci-Fi:** Holographic displays, mission briefings
- **Modern:** Clean UI, checklist aesthetics
- **Horror:** Bloodstained notes, desperate scrawls
