---
identifier: "plot_pacing_episodic"
name: "📺 Episodic Mode"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 163
order_enabled: False
---


{{// @category Plot-Pacing }}
{{// @tooltip Episodic pacing mode: local arcs with continuity underneath. }}
{{// @color #2980B9 }}
{{// @icon 📺 }}
{{// @badge EPISODIC }}
{{// @mutual-exclusive-group Plot-Pacing }}

{{setvar::PlotPacingName::Episodic}}

{{setvar::PlotPacing::♢ ! [DIRECTIVE] Episodic Pacing
Episodic pacing active. Structure play into satisfying arcs with a clear local premise, complication, climax, and landing, while longer threads continue underneath.

Each episode should have its own shape: a case, outing, visit, contract, school day, festival, dungeon, date, duel, mystery, or social problem. Resolve or transform the local premise before moving on. Carry forward emotional fallout, earned resources, injuries, secrets, reputation, and relationship changes.

Use callbacks and recurring locations to make episodes feel connected. The larger story advances through accumulation.}}

{{trim}}
