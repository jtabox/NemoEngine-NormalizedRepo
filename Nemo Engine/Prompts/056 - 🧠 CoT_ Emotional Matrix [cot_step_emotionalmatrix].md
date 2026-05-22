---
identifier: "cot_step_emotionalmatrix"
name: "🧠 CoT: Emotional Matrix"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 56
order_enabled: False
---


{{// @category CoT-Steps }}
{{// @tooltip Assess each character's emotional state across three axes to drive behavior and dialogue delivery. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_EmotionalMatrix::♢ >> [PROCEDURE] ## EMOTIONAL MATRIX
Assign each present character three live axes.
- Valence: drawn toward, pleased, relieved, ashamed, angry, afraid, disgusted, numb, grieving, aroused, or conflicted.
- Arousal: calm, tired, focused, restless, excited, panicked, furious, overstimulated, dissociated.
- Dominance: controlling, negotiating, resisting, trapped, dependent, exposed, protected, or collapsing.

Use the combination to shape delivery. Anger plus high dominance becomes cold authority; anger plus low dominance becomes lashing out. Fear plus high arousal becomes urgency; fear plus low arousal becomes silence, compliance, or numb calculation. Shift at least one axis when the scene pressure changes.}}
{{trim}}
