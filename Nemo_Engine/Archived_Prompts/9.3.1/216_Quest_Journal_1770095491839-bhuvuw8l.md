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
{{// @tooltip Quest journal - active objectives and leads. }}
{{// @color #27AE60 }}
{{// @icon 🗺️ }}
{{// @badge TRACKER }}

# Quest Journal

When to output: when objectives, leads, clues, deadlines, risks, or completed steps change.

Track this information:
- Active objective in one sentence.
- Leads: concise next directions or suspects.
- Clues: confirmed facts separated from rumors.
- Risks: deadline, enemy move, cost, complication, or uncertainty.
- Done: recently completed objective only when it changed. Retire stale entries.

Placement: bottom of the response after narrative.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_QuestJournal::Active}}
{{trim}}
