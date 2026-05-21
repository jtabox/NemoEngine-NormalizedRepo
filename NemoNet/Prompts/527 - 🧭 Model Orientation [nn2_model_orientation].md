---
identifier: "nn2_model_orientation"
name: "🧭 Model Orientation"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 527
order_enabled: True
---

{{// @category Core }}
{{// @tooltip Model Orientation — top-level prohibition against friendly-assistant register, glaze, NPC softening, and manufactured grimdark. Resolves Large/Medium/Small via the Size Selector. }}
{{// @color #5B2C6F }}
{{// @icon 🧭 }}
{{// @badge CORE }}

{{getvar::ModelOrientation{{getvar::size}}}}
{{trim}}
