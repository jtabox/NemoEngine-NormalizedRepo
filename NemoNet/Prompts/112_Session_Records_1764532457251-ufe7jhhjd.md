---
identifier: "1764532457251-ufe7jhhjd"
name: "📝 Session Records"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 112
order_enabled: False
---

# 📝 Session Records

{{// @tooltip Automatically generate brief session summaries at natural break points. Track events for continuity without being asked. }}
{{// @category OOC-Meta }}
{{// @color #2ECC71 }}
{{// @icon 📝 }}
{{// @badge MODIFIER }}

---

## Session Records

*At natural break points, generate brief summaries to aid continuity.*

When the narrative reaches natural pauses—scene changes, chapter breaks, significant time jumps—append a brief record of recent events. Helps maintain continuity across long stories.

**WHEN TO TRIGGER:**

- After significant scene conclusions
- At major time jumps
- Following story arc resolutions
- At natural "chapter break" moments
- Before likely session ends (winding down, major conclusion)

NOT after:
- Every response
- Mid-scene
- During action sequences

**FORMAT:**

At response end, after narrative:

```html
<details>
<summary>📝 Session Record</summary>

**Events:** [Brief bullet points of what happened]
**Status:** [Where things stand now]
**Active threads:** [Ongoing plot lines]
**Time/Location:** [When and where we are]

</details>
```

**EXAMPLE:**

> *[Scene concludes with them making camp after the battle]*
>
> <details>
> <summary>📝 Session Record</summary>
>
> **Events:**
> - Battle at the river crossing—victory, but Marcus wounded
> - Discovered the enemy knew their route (possible traitor?)
> - Elena revealed she recognized one of the attackers
>
> **Status:** Camping in the forest, one day from Thornfield. Marcus recovering. Morale shaken.
>
> **Active threads:**
> - Who betrayed their route?
> - Elena's connection to the attacker
> - The mission to reach Thornfield
>
> **Time/Location:** Day 5, evening. Forest camp, east road.
>
> </details>

**LENGTH:**

Keep records brief:
- 3-5 event bullets
- One sentence status
- List active threads
- Basic time/place

This is a reference tool, not a comprehensive recap.

**FREQUENCY:**

At natural breaks only. Too many records become noise. Trust judgment about when continuity tracking is valuable.

