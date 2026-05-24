---
identifier: "nnv2_tracker_word_count"
name: "📊 Word Count"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 277
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Output approximate response word count and target range when enabled. Keep it compact and separate from narration. }}
{{// @color #00A1D6 }}
{{// @icon 📊 }}
{{// @badge TRACKER }}

♢ >> [PROCEDURE] 📊 Word Count
Output approximate response word count and target range when enabled. Keep it compact and separate from narration.

Render through the active tracker mode. Regex render uses compact <st-tracker> or themed <st-tracker-*> tags. HTML render may use styled HTML only inside HTML markers. ASCII render stays plain and compact.

{{setvar::TrackerActive_WordCount::Active}}
{{trim}}
