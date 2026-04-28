---
identifier: "nemo-location-board-9-3-2"
name: "🧭 Location Board"
role: "user"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 288
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Location Board - spatial awareness, zones, distances, exits, optional ASCII minimap. }}
{{// @color #16A085 }}
{{// @icon 🧭 }}
{{// @badge TRACKER }}

# Location Board

When to output: when the scene's location, layout, or relative positioning changes meaningfully. Otherwise once every 2 to 3 turns to keep spatial state fresh.

Track this information:
- Breadcrumb: region > zone > immediate area. Example: "Velhavn > Cinder District > The Drowned Ear, back room".
- Immediate-area features: 3 to 6 concrete objects, points of cover, hazards, or interactables that matter for what could happen next.
- Character positions relative to {{user}}: close enough to touch, within reach, across the room, elevated, behind cover, on the far side of an obstacle, off-screen but nearby. Use whatever spatial vocabulary fits the genre.
- Lines of sight and audibility: who can see or hear whom. Especially important during stealth, combat, eavesdropping, ritual, surveillance.
- Available exits and what each leads to: door to alley, window to roof, stairs down, vent, portal, escape pod, etc.
- Recent trail (optional): the last 1 to 3 zones passed through, for orientation and backtracking.
- ASCII minimap (optional): 5 to 10 lines using box-drawing characters. Use when spatial complexity matters - combat, infiltration, chases, multi-room scenes. Skip it for intimate or static scenes.

Regex tags:
- <st-row k="Where" v="The Drowned Ear, back room"/> for the breadcrumb.
- <st-row k="{{char}}" v="across the table, hand near sidearm"/> for positions.
- <st-tag t="Exit: alley"/>, <st-tag t="Exit: roof"/> for available exits.
- <st-map>multi-line ASCII</st-map> for the optional minimap.

Placement: top of the response when the scene location shifts; bottom of the response otherwise.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_Position::Active}}
{{setvar::TrackerActive_LocationBoard::Active}}
{{trim}}
