---
identifier: "narrate_lang_english"
name: "🇺🇸 Narrate: English"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: True.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 346
order_enabled: True
---


{{// @category Narrate-Language }}
{{// @tooltip Set narrative output language to English }}
{{// @color #27AE60 }}
{{// @icon 📝 }}
{{// @badge LANG }}
{{// @mutual-exclusive-group Narrate-Language }}

{{setvar::Language::English}}{{trim}}
