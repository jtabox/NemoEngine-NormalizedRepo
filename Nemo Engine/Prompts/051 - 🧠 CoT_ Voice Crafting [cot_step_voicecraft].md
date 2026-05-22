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

{{setvar::CoTStep_VoiceCraft::♢ >> [PROCEDURE] ## VOICE CRAFTING
Assign each speaker a voice signature before dialogue.
- Lexicon: education, class, job, culture, age, intimacy level, and taboo vocabulary.
- Rhythm: clipped, winding, precise, messy, formal, teasing, flat, theatrical, breathless, evasive.
- Pressure shift: how anger, fear, desire, fatigue, pain, joy, or authority changes delivery.
- Blind spot: the subject they circle, soften, weaponize, over-explain, or refuse.

Every line should belong to its speaker. The same sentence in another mouth should lose force.}}
{{trim}}
