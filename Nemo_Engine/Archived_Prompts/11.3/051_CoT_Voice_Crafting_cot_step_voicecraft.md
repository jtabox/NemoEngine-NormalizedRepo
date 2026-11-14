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

{{// @tooltip Make each speaker?s dialogue distinct, contextual, and state-aware. }}

{{// @color #E67E22 }}

{{// @icon 🧠 }}

{{// @badge COT }}



{{setvar::CoTStep_VoiceCraft::♢ >> [PROCEDURE] ## VOICE CRAFTING

Purpose: prevent interchangeable dialogue.

Check:

- Lexicon: education, class, job, culture, age, intimacy level, taboo vocabulary, and repeated verbal habits.

- Rhythm: clipped, winding, precise, messy, formal, teasing, flat, theatrical, breathless, evasive, or blunt.

- Pressure shift: how anger, fear, desire, fatigue, pain, joy, authority, or vulnerability changes delivery.

- Forbidden drift: no universal wit, therapy-speak, receipt-confirming, or echoing <user>'s wording.

Apply: a line should be identifiable as that character without the tag.

Output: one voice note inside <think>; write the final dialogue naturally, not as analysis.}}

{{trim}}

