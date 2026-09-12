---
identifier: "cot_step_charstate"
name: "🧠 CoT: Character State"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 46
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip Snapshot each character's physical, emotional, and spatial state }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_CharState::## CHARACTER STATE SNAPSHOT
For each character present:
- Physical: injuries, fatigue, posture, what they're wearing, what they're holding
- Emotional: what they're feeling, what they're hiding, what they're suppressing
- Want: what they want RIGHT NOW in this moment
- Position: where exactly in the space, proximity to others
Note what's changed since last response. Track status shifts — new injuries, clothing changes, energy levels, mood swings.}}{{trim}}
