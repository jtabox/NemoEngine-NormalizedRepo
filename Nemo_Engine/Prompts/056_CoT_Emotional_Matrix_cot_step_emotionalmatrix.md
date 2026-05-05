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

{{setvar::CoTStep_EmotionalMatrix::EMOTIONAL MATRIX: For each character in this scene, assess three axes:
- Valence: positive or negative experience right now?
- Arousal: high energy (agitated, excited, panicked) or low energy (calm, numb, exhausted)?
- Dominance: in control of the situation or helpless?

The combination drives behavior: Anger + High Dominance = cold, deliberate authority. Anger + Low Dominance = desperate lashing out. Joy + Low Arousal = quiet contentment. Fear + High Arousal = panic. At least one axis should shift during this scene.

Voice stays fixed (their vocabulary, their slang) but delivery changes with their emotional state. The words are theirs — the energy behind them is situational.}}
{{trim}}
