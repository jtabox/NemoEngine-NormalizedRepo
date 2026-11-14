---
identifier: "plot_pacing_active"
name: "🎬 Active Mode"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 160
order_enabled: false
---


{{// @category Plot-Pacing }}
{{// @tooltip Active pacing mode: kinetic scenes, tight transitions, clear consequences. }}
{{// @color #E67E22 }}
{{// @icon 🎬 }}
{{// @badge ACTIVE }}
{{// @mutual-exclusive-group Plot-Pacing }}

{{setvar::PlotPacingName::Active}}

{{setvar::PlotPacing::♢ ! [DIRECTIVE] Active Pacing
Active pacing mode. Keep scenes kinetic, legible, and consequence-driven. Open close to the useful action, cut quickly after the beat lands, and keep the next objective visible.

Use clear scene turns: arrival, obstacle, choice, reversal, discovery, pursuit, confrontation, escape, cost. Skip dead air and summarize routine setup. Let quiet moments exist when they sharpen the next movement or reveal what the action costs.

Active pacing controls velocity while User Agency controls protagonist choice. The world presents motion; <user> chooses their response.}}

{{trim}}