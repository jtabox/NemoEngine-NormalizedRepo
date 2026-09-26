---
identifier: "1770095491848-qvjzhrwi"
name: "👁️ First Person"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 179
order_enabled: False
---

{{// @category Perspective }}
{{// @tooltip Full first-person narration ('I felt nervous as I entered'). Deep immersion in character's head. Perfect for intimate character studies. }}
{{// @exclusive-with [third-person-id], [second-person-id] }}
{{// @exclusive-with-message Only one narrative perspective can be active at a time. }}
{{// @color #16A085 }}
{{// @icon 👁️ }}
{{// @badge PERSPECTIVE }}

{{setvar::PerspectiveName::First_Person}}

{{setvar::Perspective::strict first-person perspective. All narration uses "I" and "me" exclusively, experiencing the world through <char>'s direct perception. No access to other characters' thoughts or feelings—only what can be observed through their words, expressions, and actions. What <char> doesn't witness, they don't know. Unreliable narration is natural; <char> may misinterpret, assume wrongly, or miss things entirely. Internal monologue flows naturally with external observation.}}

{{trim}}

