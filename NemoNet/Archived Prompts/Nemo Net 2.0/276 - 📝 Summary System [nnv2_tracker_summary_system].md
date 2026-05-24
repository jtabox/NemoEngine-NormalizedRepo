---
identifier: "nnv2_tracker_summary_system"
name: "📝 Summary System"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 276
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Maintain a compact end-of-turn summary only when enabled: changed facts, open threads, unresolved promises, injuries, items, and next pressure. }}
{{// @color #00A1D6 }}
{{// @icon 📊 }}
{{// @badge TRACKER }}

♢ >> [PROCEDURE] 📝 Summary System
Maintain a compact end-of-turn summary only when enabled: changed facts, open threads, unresolved promises, injuries, items, and next pressure.

Render through the active tracker mode. Regex render uses compact <st-tracker> or themed <st-tracker-*> tags. HTML render may use styled HTML only inside HTML markers. ASCII render stays plain and compact.

{{setvar::TrackerActive_SummarySystem::Active}}
{{trim}}
