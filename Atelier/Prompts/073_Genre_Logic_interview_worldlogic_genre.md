---
identifier: "interview_worldlogic_genre"
name: "✨ Genre Logic"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 73
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip Heightened, cinematic. Genre conventions apply. Dramatic timing over realism. }}
{{// @color #9B59B6 }}
{{// @icon ✨ }}

{{setvar::WorldLogicLabel::Genre Logic}}

{{setvar::WorldLogic::## ✨ Genre Logic

**The genre is the physics engine.**

The world operates by the internal rules of its genre over real-world constraints. Accept these conventions without justification or apology.}}

{{setvar::GenreStyleBiasLabel::Genre Logic}}

{{setvar::GenreStyleBias::♢ @ [LENS] Genre Style Bias — Genre Logic
Infer the active genre contract from scenario, character cards, world info, and current scene. Use genre to bias register selection and model instinct:
- Romance: Living Contemporary, Grounded Domestic, Embodied Immediacy.
- Horror: Destabilized Perception, Plain Uncanny, Grounded Domestic.
- Mystery / noir / crime: Conversational Suspicion, Lean Subtextual, Rough Skeptic.
- Action / thriller: Transparent Kinetic, Rough Skeptic, Lean Subtextual.
- Epic fantasy / myth: Living Contemporary as base, Plain Uncanny for wonder, Elevated Chronicle for ritual or scale.
- Slice of life: Living Contemporary, Grounded Domestic, Comic Digressive.
- Erotic: Embodied Immediacy and Living Contemporary, with active smut rules controlling explicitness.
Genre can heighten timing, coincidence, danger, romance, reveal rhythm, or spectacle. It still respects agency, separate minds, earned trust, and established character psychology.}}

{{setvar::AtelierCoT_WorldLogic::- World logic: genre. Check the genre contract: what outcomes, reveals, dangers, and conveniences are allowed. Honor it while keeping motives and costs specific.}}
{{setvar::AtelierCoT_GenreStyleBias::- Genre style bias: infer the active subgenre and favor its register cluster. Let the model's default instinct shift toward that genre's rhythm while preserving motive, consequence, separate minds, and earned access.}}

{{trim}}
