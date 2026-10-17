---
identifier: "narrate_lang_english"
name: "🇺🇸 Narrate: English"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 256
order_enabled: True
---

{{// @category Narrate-Language }}
{{// @tooltip Set narrative output language to English }}
{{// @color #27AE60 }}
{{// @icon 📝 }}
{{// @badge LANG }}
{{// @mutual-exclusive-group Narrate-Language }}

{{setvar::Language::English}}{{trim}}
