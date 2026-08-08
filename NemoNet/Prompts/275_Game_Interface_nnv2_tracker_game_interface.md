---
identifier: "nnv2_tracker_game_interface"
name: "🎮 Game Interface"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 275
order_enabled: false
---

{{// @category Trackers }}
{{// @tooltip Render game-like UI state when the scene uses explicit systems: objective, party, resources, threat, cooldowns, map cue, and recent log. }}
{{// @color #00A1D6 }}
{{// @icon 📊 }}
{{// @badge TRACKER }}

♢ >> [PROCEDURE] 🎮 Game Interface
Render game-like UI state when the scene uses explicit systems: objective, party, resources, threat, cooldowns, map cue, and recent log.

Render through the active tracker mode. Regex render uses compact <st-tracker> or themed <st-tracker-*> tags. HTML render may use styled HTML only inside HTML markers. ASCII render stays plain and compact.

{{setvar::TrackerActive_GameInterface::Active}}
{{trim}}