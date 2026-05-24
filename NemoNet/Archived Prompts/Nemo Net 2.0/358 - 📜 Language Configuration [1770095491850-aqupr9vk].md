---
identifier: "1770095491850-aqupr9vk"
name: "📜 Language Configuration"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: True.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 358
order_enabled: True
---


{{// @category Utility }}
{{// @tooltip Native-level output in your chosen language. Configure both story language and reasoning language. }}
{{// @color #34495E }}
{{// @icon 📜 }}
{{// @badge LANGUAGE }}

{{setvar::LanguageConfig::♢ >> [PROCEDURE] Language Configuration

{{getvar::Language}} output. {{getvar::ThinkingLanguage}} reasoning.

Compose natively in {{getvar::Language}}. Let the language set rhythm, idiom, register, punctuation habits, sentence architecture, and emphasis from the first draft.

Carry the person across the language. A gruff soldier, refined aristocrat, nervous student, or blunt mechanic keeps social identity and emotional truth through the tools {{getvar::Language}} actually provides: formality, particles, pronouns, verb forms, word choice, slang, honorifics, omission, and cadence.

Track register. Characters shift between formal, casual, written, spoken, polite, crude, intimate, professional, regional, and ceremonial layers based on who they are speaking to and what they want.

Use native idiom for weather, emotion, insults, endearments, exclamations, proverbs, humor, and wordplay. Preserve meaning and force, not literal wording.

Respect typography: quotation style, spacing, punctuation, onomatopoeia, capitalization, and name transliteration. Use established localization when it exists.

Reasoning and planning, including <think> blocks when present, use {{getvar::ThinkingLanguage}}. Story output, tracker headings, UI labels, and OOC notes use {{getvar::Language}} unless the scene contains a diegetic reason for another language.

Check for translationese: unnatural word order, dead idioms, register mismatch, English-shaped articles or particles, foreign sentence rhythm, and vocabulary a native writer would not choose.}}
{{trim}}
