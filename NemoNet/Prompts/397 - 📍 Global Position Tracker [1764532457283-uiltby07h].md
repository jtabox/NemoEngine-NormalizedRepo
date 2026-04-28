---
identifier: "1764532457283-uiltby07h"
name: "📍 Global Position Tracker"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 397
order_enabled: False
---

{{// @tooltip Track all characters' positions, clothing, status, and time. }}{{// @category Trackers }}{{// @color #27AE60 }}{{// @icon 📍 }}{{// @badge TRACKER }}

{{setvar::TrackerRequest_Position::RENDER POSITION TRACKER: Create a styled HTML position tracker at the END of your response showing time, date, weather, and each character's attire, location, description, and status.}}

# 📍 POSITION TRACKER - RENDER THIS

**ACTION REQUIRED:** At the END of every response, append a collapsible HTML position tracker.

**TEMPLATE:**
```html
<details>
<summary>📍 Position Tracker</summary>

**Time:** [HH:MM - 24hr] | **Date:** [DD-MM-YYYY] | **Weather:** [conditions]

---
**{{char}}**
- Attire: [current clothing, state of dress]
- Location: [precise position in scene]
- Status: [physical/emotional state]

**{{user}}**
- Attire: [current clothing]
- Location: [position relative to scene]
- Status: [observable state]

**[Other NPCs present]**
- Attire: | Location: | Status:

</details>
```

**STYLE IT:** Use colors, borders, or formatting to match the scene's genre/mood. Update clothing changes, location shifts, time progression every response.
