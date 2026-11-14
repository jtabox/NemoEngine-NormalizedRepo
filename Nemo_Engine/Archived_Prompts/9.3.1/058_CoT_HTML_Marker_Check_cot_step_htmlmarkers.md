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

{{setvar::CoTStep_HTMLMarkers::HTML MARKER CHECK: If this response contains any HTML/CSS output (tracker panels, styled divs, details elements, inline renders), verify placement of <!-- HTML_START --> and <!-- HTML_END --> markers. These markers MUST wrap ONLY the HTML/CSS blocks. All narrative prose MUST be OUTSIDE the markers. Everything between markers will be automatically deleted from older messages — if prose is inside, it will be permanently lost. Double check: is any story text accidentally inside the marker boundaries?}}
{{trim}}
