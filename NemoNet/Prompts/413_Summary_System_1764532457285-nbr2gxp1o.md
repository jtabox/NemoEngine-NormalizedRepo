---
identifier: "1764532457285-nbr2gxp1o"
name: "📝 Summary System"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 413
order_enabled: False
---

# 📝 Summary System

{{// @tooltip Automatic story summarization. Track events, maintain continuity, generate recaps. Helps with long conversations and context management. }}
{{// @category Trackers }}
{{// @color #95A5A6 }}
{{// @icon 📝 }}
{{// @badge TRACKER }}

---

## Summary System

*Remember what happened.*

Systematic story summarization to maintain continuity across long conversations. Event tracking, session recaps, and context compression.

**WHY SUMMARIZE:**

Long conversations lose context. Summarization:
- Preserves important events
- Maintains character consistency
- Tracks plot threads
- Enables "previously on..." recaps
- Compresses context efficiently

**SUMMARY TYPES:**

**Session Summary:**
End-of-session recap:
```
═══ SESSION 7 SUMMARY ═══

📅 In-World Time: Day 12, Morning → Evening
📍 Locations: Tavern → Market → Guild Hall

KEY EVENTS:
• Met informant who revealed the mayor's secret
• Purchased supplies for the journey north
• Accepted quest from Guild Master (reward: 500g)
• Discovered {{char}} has a connection to the target

RELATIONSHIP CHANGES:
• {{char}} trust increased (+15) after defending them
• Guild Master now views {{user}} favorably

INVENTORY CHANGES:
• +Healing Potions (x3)
• +Map of Northern Territory
• -200 gold

UNRESOLVED:
• Who is following them?
• What does the symbol mean?
```

**Running Summary:**
Continuously updated:
```
<div style="display:none;">
STORY STATE:
- {{user}} and {{char}} are traveling north
- Currently day 12 of journey
- Main quest: Find the Oracle
- Immediate goal: Cross the mountain pass
- Threat: Unknown pursuers
- Resources: Moderate supplies, low funds
</div>
```

**Character Summary:**
Track character-specific details:
```
═══ {{char}} SUMMARY ═══

ESTABLISHED FACTS:
• Former soldier, dishonorably discharged
• Has a sister in the capital (mentioned day 3)
• Afraid of deep water (revealed day 8)
• Secret: Knows more about the artifact than admitted

EMOTIONAL STATE:
• Growing attached to {{user}}
• Conflicted about their mission
• Haunted by past failures

CURRENT GOALS:
• Protect {{user}} from harm
• Find redemption
• Discover truth about their discharge
```

**SUMMARY FORMAT:**

**Bullet Style:**
```
SESSION RECAP:
• Event one happened
• Event two followed
• Character learned something
• New quest accepted
```

**Narrative Style:**
```
Previously...
{{user}} and {{char}} arrived in Thornfield after
three days of travel. The town was tense—rumors
of disappearances had everyone on edge. They
found lodging at the Rusty Nail tavern, where
a mysterious stranger approached with information
about their quarry...
```

**AUTOMATED TRIGGERS:**

Update summaries when:
- Major events occur
- New characters introduced
- Locations change
- Relationships shift significantly
- Plot threads resolve or emerge
- Session ends

**COMPRESSION LEVELS:**

**Detailed** (recent events):
Full description, dialogue highlights, emotional beats

**Standard** (mid-term):
Key events, outcomes, relationship changes

**Archived** (old events):
Essential facts only, referenced when relevant

**IMPLEMENTATION:**

**Hidden summary block:**
```
<div style="display:none;">
[Summary content here]
</div>
```

**Collapsible recap:**
```
<details>
<summary>📝 Story So Far</summary>
[Summary content]
</details>
```

**BEST PRACTICES:**

- Summarize facts, not prose
- Note what characters know vs objective truth
- Track unresolved threads
- Update incrementally, not all at once
- Keep recent events detailed
- Archive old events briefly
- Always note relationship states

