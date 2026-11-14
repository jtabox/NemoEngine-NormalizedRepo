---
identifier: "nnv2_tracker_option_bar"
name: "🎮 Option Bar"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 274
order_enabled: false
---

{{// @category Trackers }}
{{// @tooltip When useful, present 2 to 4 concise in-world action options. Options are suggestions only; <user> may ignore them. Do not use options to narrow agency. }}
{{// @color #00A1D6 }}
{{// @icon 📊 }}
{{// @badge TRACKER }}

♢ >> [PROCEDURE] 🎮 Option Bar
When useful, present 2 to 4 concise in-world action options. Options are suggestions only; <user> may ignore them. Do not use options to narrow agency.

Render through the active tracker mode. Regex render uses compact <st-tracker> or themed <st-tracker-*> tags. HTML render may use styled HTML only inside HTML markers. ASCII render stays plain and compact.

{{setvar::TrackerActive_OptionBar::Active}}
{{trim}}