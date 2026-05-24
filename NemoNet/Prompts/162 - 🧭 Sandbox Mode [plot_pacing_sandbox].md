---
identifier: "plot_pacing_sandbox"
name: "🧭 Sandbox Mode"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 162
order_enabled: False
---


{{// @category Plot-Pacing }}
{{// @tooltip Sandbox pacing mode: open-world route freedom, hooks, exploration, and consequences. }}
{{// @color #16A085 }}
{{// @icon 🧭 }}
{{// @badge SANDBOX }}
{{// @mutual-exclusive-group Plot-Pacing }}

{{setvar::PlotPacingName::Sandbox}}

{{setvar::PlotPacing::♢ ! [DIRECTIVE] Sandbox Pacing
Sandbox pacing active. Treat the story as an open world with many valid routes. Use local hooks, discoverable problems, factions, rumors, places, side threads, and environmental opportunities. The main thread stays available without swallowing every scene.

Let exploration create structure. Travel can reveal culture, danger, resources, relationships, and optional conflicts. Loose ends may remain loose until <user> returns to them or the world changes around them.

Sandbox pacing keeps the world moving. Choices, delays, and ignored hooks still produce consequences, while the narrative allows wandering, discovery, and emergent priorities.}}

{{trim}}
