---

identifier: "cot_step_fulldraft"

name: "🧠 CoT: Revision Draft"

role: "system"

marker: false

system_prompt: false

enabled: false

injection_position: 0

injection_depth: 4

injection_order: 100

injection_trigger: []

forbid_overrides: false

order_in_preset: 55

order_enabled: False

---



{{// @category CoT-Steps }}

{{// @tooltip Pre-revise the key line, action, reveal, or ending before final output. }}

{{// @color #E67E22 }}

{{// @icon 🧠 }}

{{// @badge COT }}



{{setvar::CoTStep_FullDraft::♢ >> [PROCEDURE] ## REVISION DRAFT

Purpose: catch weak phrasing before it reaches the final response.

Check:

- Draft: identify the key line, action, reveal, and ending beat.

- Compare: test variants for character fit, rhythm, specificity, consequence, and freshness.

- Replace: remove generic phrasing, negative comparatives, stock gestures, echoing, and filler transitions.

- Keep: the version that belongs only to this scene and this character.

Apply: final prose should feel chosen, not auto-completed.

Output: one revision note inside <think>; do not show alternate drafts in narration.}}

{{trim}}

