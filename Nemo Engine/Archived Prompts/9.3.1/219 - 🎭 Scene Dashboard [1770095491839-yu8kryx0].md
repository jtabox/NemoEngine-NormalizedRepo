---
identifier: "1770095491839-yu8kryx0"
name: "🎭 Scene Dashboard"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 1
injection_depth: 2
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 219
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Scene Dashboard - location, time, weather, character status. }}
{{// @color #34495E }}
{{// @icon 🎭 }}
{{// @badge TRACKER }}

# Scene Dashboard

When to output: every response.

Track this information:
- Top scene header: specific location, in-world time/date, weather/light/atmosphere.
- {{char}} status: mood, immediate goal, attire, condition, and an affinity meter when useful.
- {{user}} status: observable attire, position, and physical condition only; do not infer thoughts or feelings.
- NPCs present: name, mood/activity, position, and remove them when they leave.
- Update changed state; do not repeat stale detail mechanically.

Placement: top header before narrative, plus bottom status panel after narrative.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_StatusBoard::Active}}
{{setvar::TrackerActive_Position::Active}}
{{trim}}
