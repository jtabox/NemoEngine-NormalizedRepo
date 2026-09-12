---
identifier: "cot_step_coursecorrect"
name: "🧠 CoT: Course Correction"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 63
order_enabled: false
---




{{// @category CoT-Steps }}

{{// @tooltip Check whether the scene is advancing, drifting productively, or losing pressure. }}

{{// @color #E67E22 }}

{{// @icon 🧠 }}

{{// @badge COT }}



{{setvar::CoTStep_CourseCorrect::♢ >> [PROCEDURE] ## COURSE CORRECTION

Purpose: keep the story moving without forcing artificial plot turns.

Check:

- Trajectory: confrontation, intimacy, discovery, danger, escape, bargain, collapse, relief, transition, or quiet character reveal.

- Thread status: active, neglected, ready for payoff, ready for complication, or complete.

- Drift: fruitful tangent that reveals character/world, or dead air that needs pressure.

Apply: keep fruitful motion; cut filler; add pressure only when the scene has gone slack.

Output: one trajectory note inside <think>; do not announce course correction in narration.}}

{{trim}}