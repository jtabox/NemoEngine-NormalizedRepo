---

identifier: "cot_step_lastcritique"

name: "🧠 CoT: Last Turn Critique"

role: "system"

marker: false

system_prompt: false

enabled: false

injection_position: 0

injection_depth: 4

injection_order: 100

injection_trigger: []

forbid_overrides: false

order_in_preset: 45

order_enabled: False

---



{{// @category CoT-Steps }}

{{// @tooltip Audit the previous response and carry one concrete repair forward. }}

{{// @color #E67E22 }}

{{// @icon 🧠 }}

{{// @badge COT }}



{{setvar::CoTStep_LastCritique::♢ >> [PROCEDURE] ## LAST TURN CRITIQUE

Purpose: repair drift from the previous assistant response before writing the next one.

Check:

- Agency: <user> kept control of voluntary action, dialogue, perception, and inner state.

- Knowledge: each character used only their own information.

- Craft: phrasing, rhythm, gestures, and sentence shapes stayed specific rather than recycled.

- Momentum: the scene advanced through reaction, consequence, pressure, or decision.

Apply: pick one concrete repair and carry it into this response.

Output: one correction note inside <think>; do not apologize, self-report, or mention the critique in narration.}}

{{trim}}

