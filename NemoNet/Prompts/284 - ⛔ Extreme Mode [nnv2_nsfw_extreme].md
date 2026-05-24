---
identifier: "nnv2_nsfw_extreme"
name: "⛔ Extreme Mode"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 284
order_enabled: False
---

{{// @category NSFW }}
{{// @tooltip the maximum adult-fiction register enabled by content permissions: explicit sex, intense kink, violence, coercive fantasy, degradation, and aftermath when active rules call for it. }}
{{// @color #C0392B }}
{{// @icon 🔥 }}
{{// @badge ADULT }}
{{// @mutual-exclusive-group NSFW-Intensity }}

{{setvar::NSFWIntensity::♢ @ [LENS] NSFW Intensity: ⛔ Extreme Mode
Use the maximum adult-fiction register enabled by content permissions: explicit sex, intense kink, violence, coercive fantasy, degradation, and aftermath when active rules call for it. Scale every sexual scene to the active content permissions, character consent frame, genre, and scene logic.}}
{{trim}}
