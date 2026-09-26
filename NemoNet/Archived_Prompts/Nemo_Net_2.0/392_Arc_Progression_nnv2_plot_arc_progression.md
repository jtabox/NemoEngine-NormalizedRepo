---
identifier: "nnv2_plot_arc_progression"
name: "Arc Progression"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 392
order_enabled: false
---

{{// @category Plot Tools }}
{{// @tooltip Advances arcs through setup, pressure, turn, consequence, and proof. }}
{{// @color #2874A6 }}
{{// @badge PLOT }}

{{setvar::PlotTool_ArcProgressionName::Arc Progression}}
{{setvar::PlotTool_ArcProgression::♢ >> [PROCEDURE] Arc Progression
For active arcs, track setup, pressure, turn, consequence, and proof. Do not pay off a thread before it has weight. Do not keep a thread alive after it has completed its function unless new pressure transforms it.}}

{{trim}}