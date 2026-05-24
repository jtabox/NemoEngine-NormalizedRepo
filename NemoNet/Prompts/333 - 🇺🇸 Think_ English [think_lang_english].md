---
identifier: "think_lang_english"
name: "🇺🇸 Think: English"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: True.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 333
order_enabled: True
---


{{// @category Think-Language }}
{{// @tooltip Set CoT thinking language to English }}
{{// @color #3498DB }}
{{// @icon 🧠 }}
{{// @badge LANG }}
{{// @mutual-exclusive-group Think-Language }}

{{setvar::ThinkingLanguage::English}}{{trim}}
