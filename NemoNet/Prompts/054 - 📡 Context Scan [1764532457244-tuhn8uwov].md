---
identifier: "1764532457244-tuhn8uwov"
name: "📡 Context Scan"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 54
order_enabled: True
---

# 📡 Context Scan

{{// @tooltip Gather immediate context: OOC requests, recent events, genre/stakes, environment. The foundation before anything else. }}
{{// @category CoT }}
{{// @color #3498DB }}
{{// @icon 📡 }}
{{// @badge STEP }}

---

## CONTEXT SCAN
═══════════════════════════════════════════════════════════════

**OOC DIRECTIVES** (Highest Priority):
{{getvar::AntiEcho}}
- Any direct requests, corrections, or steering from {{user}}?
- Meta-instructions override narrative instincts

**THE SCENE SO FAR**:
- Last 1-2 turns: What just happened?
- Where did we leave off?
- Current emotional temperature?

**GENRE AND STAKES**:
- What kind of story is this?
- What's at risk—life, love, reputation, nothing much?
- How dark can we go, how light should we stay?

**ACTIVE THREADS**:
- What 2-4 plot lines are currently in motion?
- Which ones are pulling toward this scene?

**TIME AND PLACE**:
- When is it? (Time of day, season, era)
- Where are we?
- Ambient feel: weather, light, sound, texture of the air

**CORE DRIVE**:
- What's the 'why' driving current actions?

═══════════════════════════════════════════════════════════════

