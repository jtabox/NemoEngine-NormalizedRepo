---
identifier: "1770095491839-npsjusbc"
name: "💖 Dating Sim"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 2
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 213
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Dating sim tracker - relationship states and flags. }}
{{// @color #E91E63 }}
{{// @icon 💖 }}
{{// @badge TRACKER }}

# Dating Sim

When to output: when affection, trust, tension, jealousy, intimacy, or relationship flags change.

Track this information:
- Focus character or relationship being tracked.
- Affinity/trust/tension meter when useful.
- Mood as observable state plus one physical tell.
- Flags: promises, secrets, boundaries, jealousy, attraction, suspicion, recent gains/losses.
- Next pull: what the relationship is pressuring toward. Do not invent {{user}} feelings.

Placement: bottom of the response after narrative.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_DatingSim::Active}}
{{trim}}
