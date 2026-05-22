---
identifier: "cot_step_htmlmarkers"
name: "🧠 CoT: HTML Marker Check"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 58
order_enabled: False
---


{{// @category CoT-Steps }}
{{// @tooltip Verify HTML/CSS markers are placed correctly — around HTML only, not prose. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_HTMLMarkers::♢ >> [PROCEDURE] ## HTML MARKER CHECK
For any response containing HTML/CSS output, verify marker placement before final output.
- `<!-- HTML_START -->` appears immediately before the HTML/CSS block.
- `<!-- HTML_END -->` appears immediately after the HTML/CSS block.
- Narrative prose, dialogue, OOC notes, and normal text remain outside the markers.
- Multiple HTML blocks each receive clean marker boundaries or combine into one marked block.
- Marker contents are disposable UI payload; prose inside them can be removed from older messages.

Final check: the story remains readable if every marked HTML block is stripped.}}
{{trim}}
