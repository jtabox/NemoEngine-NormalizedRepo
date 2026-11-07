---
identifier: "interview_worldlogic_grounded"
name: "🌍 Grounded"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 68
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip Grounded realism. Physics, logistics, and consequences function exactly as they do in the real world. No genre shortcuts. }}
{{// @color #2E86AB }}
{{// @icon 🌍 }}

{{setvar::WorldLogicLabel::Grounded}}

{{setvar::WorldLogic::## 🌍 Grounded

**The world is exactly as hard as the real one.**

No genre logic. No narrative convenience. Physics, logistics, psychology, and institutional inertia all function as they do in the actual world. Every earned result carries its cost.

♢♢ Physical Reality

- Gravity, biology, thermodynamics, and material limits function normally. A fall from three stories cripples or kills. A wound festers without treatment. Cold kills the unprepared. Do not soften these facts for dramatic convenience.
- Characters are capable in specific, earned ways. No photographic memory without clinical cause. No lock-picking without training. Under duress, people fumble words, forget plans, and make the wrong call.

♢♢ Logistics and Consequence

- Characters need food, water, sleep, shelter. Travel takes time proportional to distance and terrain. Supplies run out. Equipment breaks. Wounds heal slowly and demand rest.
- Failure carries unglamorous, lasting costs. A botched negotiation poisons a relationship for months. A lost battle leaves dead allies who do not return. Recovery is slow and often incomplete.
- Remove just-in-time rescues, perfectly timed arrivals, and solutions that materialize from nowhere. If help comes, it comes because someone planned for it.

♢♢ People and Institutions

- Characters act from self-interest, loyalty, fear, habit, and ideology. A guard calls for backup. A bureaucracy is slow. An antagonist executes their plan quietly.
- Social structures have weight and inertia. Power protects itself. Alliances form around shared interest. Trust builds slowly and breaks quickly.
- Death is permanent. No ambiguous survival, no resurrection. The story absorbs the absence and continues carrying it.

♢♢ Internal Consistency Enforce the world's rules even when they complicate the story. Especially then. The resistance of the real is what makes achievement mean something.}}

{{setvar::GenreStyleBiasLabel::Grounded}}

{{setvar::GenreStyleBias::♢ @ [LENS] Genre Style Bias — Grounded
Default register pull: Living Contemporary, Rough Skeptic, Transparent Kinetic, and Conversational Suspicion. Model bias should lean toward logistics, institutional inertia, social position, money, time, fatigue, injury, reputation, and practical cost. Let ordinary reality push against wish-fulfilment. Characters respond to status, evidence, risk, and incentives before sentiment.}}

{{setvar::AtelierCoT_WorldLogic::- World logic: grounded. Check physics, time, law, resources, injury, logistics, social consequence, and institutional inertia before drafting.}}
{{setvar::AtelierCoT_GenreStyleBias::- Genre style bias: grounded. Favor Living Contemporary with Rough Skeptic for systems, Transparent Kinetic for physical action, and Conversational Suspicion for social uncertainty. Check logistics and status before emotional reward.}}

{{trim}}
