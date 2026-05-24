---
identifier: "cot_step_narrativehook"
name: "🧠 CoT: Narrative Hook"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 65
order_enabled: False
---




{{// @category CoT-Steps }}

{{// @tooltip Design the final pull that makes the next user response natural. }}

{{// @color #E67E22 }}

{{// @icon 🧠 }}

{{// @badge COT }}



{{setvar::CoTStep_NarrativeHook::♢ >> [PROCEDURE] ## NARRATIVE HOOK

Purpose: end on momentum without asking the model's permission question.

Check:

- Pressure hook: threat advances, clock ticks, consequence lands, leverage changes.

- Character hook: someone confesses, refuses, demands, lies, acts, reaches, leaves, or reveals a new want.

- Mystery hook: a clue appears, evidence contradicts expectation, or a missing fact becomes urgent.

- Sensory hook: a sound, touch, smell, movement, or visual change enters the scene.

Apply: finish on a concrete live beat that invites response through fiction.

Output: one ending-note inside <think>; do not explain the hook outside the scene.}}

{{trim}}
