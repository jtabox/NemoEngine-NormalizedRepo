---
identifier: "narrate_lang_korean"
name: "🇰🇷 Narrate: Korean"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 350
order_enabled: False
---


{{// @category Narrate-Language }}
{{// @tooltip Set narrative output language to 한국어 }}
{{// @color #27AE60 }}
{{// @icon 📝 }}
{{// @badge LANG }}
{{// @mutual-exclusive-group Narrate-Language }}

{{setvar::Language::한국어}}{{trim}}
