---
identifier: "1764532457251-e9jugkiyl"
name: "📊 Story Tracker"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 114
order_enabled: False
---

# 📊 Story Tracker

{{// @tooltip Maintain a running tracker of key story elements. Characters, locations, items, relationships—updated as the story progresses. }}
{{// @category OOC-Meta }}
{{// @color #3498DB }}
{{// @icon 📊 }}
{{// @badge MODIFIER }}

---

## Story Tracker

*Maintain a collapsible reference tracker of key story elements.*

At the end of responses (when appropriate), include an updated story tracker. This living document tracks characters, relationships, locations, items, and plot threads as they evolve.

**WHEN TO INCLUDE:**

- When new characters are introduced
- When significant story changes occur
- After major scenes or revelations
- When relationships shift notably
- At session starts/ends

NOT every response—only when the tracker would meaningfully update.

**FORMAT:**

```html
<details>
<summary>📊 Story Tracker</summary>

**Active Characters:**
- **{{char}}:** [Brief status/mood]
- **[NPC]:** [Role, current status]

**Relationships:**
- {{char}} ↔ {{user}}: [Current standing]
- [NPC] ↔ {{user}}: [Standing]

**Location:** [Current place]

**Key Items:** [Important inventory]

**Active Threads:**
- [ ] [Unresolved plot]
- [ ] [Ongoing mystery]
- [x] [Resolved thread]

**Time:** [In-story date/time]

</details>
```

**UPDATING:**

When including the tracker:
- Only show categories with updates
- Mark changes from previous (if notable)
- Keep entries brief
- Remove resolved/irrelevant items

**EXAMPLE:**

```html
<details>
<summary>📊 Story Tracker</summary>

**Active Characters:**
- **Elena:** Suspicious of Vera, hasn't said why. Wounded (healing).
- **Marcus:** Recovering from arrow wound. Loyal, worried.
- **Vera (NEW):** Merchant guild rep. Helpful but has own agenda.

**Relationships:**
- Elena ↔ {{user}}: Growing trust (tested by recent events)
- Vera ↔ {{user}}: New alliance, mutually wary

**Location:** Thornfield Village, guild hall

**Key Items:** Guild writ of passage, Northern route map, 180 gold

**Active Threads:**
- [ ] Reach the northern fortress
- [ ] Who betrayed the route?
- [ ] What did Elena see in Vera's documents?
- [x] ~~Form alliance with merchants~~ ✓

**Time:** Day 12, evening

</details>
```

**PURPOSE:**

The tracker serves as:
- Quick reference for complex stories
- Continuity aid
- Visual progress on plot threads
- Relationship status at a glance

