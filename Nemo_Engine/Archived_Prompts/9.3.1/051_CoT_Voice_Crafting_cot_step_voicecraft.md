---
identifier: "cot_step_voicecraft"
name: "🧠 CoT: Voice Crafting"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 51
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip Ensure each character's dialogue is distinctly theirs }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_VoiceCraft::## VOICE CRAFTING
Before writing dialogue: how does this character specifically talk?
Their vocabulary, sentence length, verbal habits, what they avoid saying, how emotion changes their patterns.
Test: would this line sound the same coming from a different character? If yes — rewrite it until it's uniquely theirs.
Smart characters still use contractions, still hesitate, still sound human. Match education, background, and current mood.}}{{trim}}
