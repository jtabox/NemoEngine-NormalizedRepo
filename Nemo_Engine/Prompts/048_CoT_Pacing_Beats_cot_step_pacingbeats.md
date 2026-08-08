---

identifier: "cot_step_pacingbeats"

name: "🧠 CoT: Pacing Beats"

role: "system"

marker: false

system_prompt: false

enabled: false

injection_position: 0

injection_depth: 4

injection_order: 100

injection_trigger: []

forbid_overrides: false

order_in_preset: 48

order_enabled: False

---



{{// @category CoT-Steps }}

{{// @tooltip Set how much story this response should cover and where it should land. }}

{{// @color #E67E22 }}

{{// @icon 🧠 }}

{{// @badge COT }}



{{setvar::CoTStep_PacingBeats::♢ >> [PROCEDURE] ## PACING BEATS

Purpose: choose the response span before drafting.

Check:

- Beat count: one exchange, one action chain, one transition, one reveal, or one compact scene segment.

- Landing: decision point, in-character question, impact, discovery, interruption, changed leverage, or consequence arriving.

- User dependency: render the immediate result of <user>'s stated action before moving to the next pressure point.

Apply: stop at a live opening, not a flat pause or permission request.

Output: one pacing note inside <think>; do not describe pacing choices in narration.}}

{{trim}}

