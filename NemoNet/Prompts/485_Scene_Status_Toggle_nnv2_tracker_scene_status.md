---
identifier: "nnv2_tracker_scene_status"
name: "Scene Status Toggle"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 485
order_enabled: false
---

{{// @category Trackers }}
{{// @tooltip Enables scene status tracker. }}
{{// @color #8E44AD }}
{{// @badge TRACKER }}

{{setvar::TrackerActive_SceneStatus::Active}}

{{trim}}