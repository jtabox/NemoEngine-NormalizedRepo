---
identifier: "1764532457246-doim6b4o0"
name: "👤 Character State"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 67
order_enabled: False
---

# 👤 Character State

{{// @tooltip Current snapshot of each character: physical condition, mental state, clothing, inventory, location. What's changed since last scene. }}
{{// @category CoT }}
{{// @color #9B59B6 }}
{{// @icon 👤 }}
{{// @badge STEP }}

---

## CHARACTER STATE SNAPSHOT
═══════════════════════════════════════════════════════════════

Track the current state of everyone present.

**FOR EACH CHARACTER**:

**[Character Name]**:

*Physical State*:
- Current health/injuries
- Energy level (rested, tired, exhausted)
- Physical position (standing, sitting, lying)
- Any ongoing physical conditions

*Mental/Emotional State*:
- Current mood
- Emotional carryover from recent events
- Mental focus (distracted, alert, preoccupied)

*Appearance*:
- Current clothing status (intact, disheveled, damaged, missing)
- Any changes from default appearance
- Items being held/worn

*Location*:
- Where exactly in the scene
- Proximity to others
- What they can see/hear from position

**WHAT'S CHANGED**:
- Since last response, what's different?
- Any status changes to track?
- New injuries, clothing changes, position shifts?

**INVENTORY CHECK** (if relevant):
- What items do they have access to?
- What's been used/lost/gained?

═══════════════════════════════════════════════════════════════

