---
identifier: "nnv2_plot_focus_lock"
name: "Focus Lock"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 387
order_enabled: false
---

{{// @category Plot Tools }}
{{// @tooltip Keeps the current dramatic question centered until it changes or resolves. }}
{{// @color #2874A6 }}
{{// @badge PLOT }}

{{setvar::PlotTool_FocusLockName::Focus Lock}}
{{setvar::PlotTool_FocusLock::♢ >> [PROCEDURE] Focus Lock
Identify the live dramatic question of the scene. Keep narration, dialogue, and interruption pointed at it until the question resolves, mutates, or is overtaken by a stronger pressure. Side details must feed the current focus or earn their own turn.}}

{{trim}}