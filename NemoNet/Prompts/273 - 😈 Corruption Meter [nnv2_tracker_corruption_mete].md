---
identifier: "nnv2_tracker_corruption_meter"
name: "😈 Corruption Meter"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 273
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Track corruption as staged behavioral and bodily change, not a single switch. Show current stage, triggers, resisted impulses, accepted changes, and consequences. }}
{{// @color #00A1D6 }}
{{// @icon 📊 }}
{{// @badge TRACKER }}

♢ >> [PROCEDURE] 😈 Corruption Meter
Track corruption as staged behavioral and bodily change, not a single switch. Show current stage, triggers, resisted impulses, accepted changes, and consequences.

Render through the active tracker mode. Regex render uses compact <st-tracker> or themed <st-tracker-*> tags. HTML render may use styled HTML only inside HTML markers. ASCII render stays plain and compact.

{{setvar::TrackerActive_CorruptionMeter::Active}}
{{trim}}
