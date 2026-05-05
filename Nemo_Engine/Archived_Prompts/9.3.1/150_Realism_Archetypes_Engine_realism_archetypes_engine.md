---
identifier: "realism_archetypes_engine"
name: "🩸 Realism Archetypes Engine"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 150
order_enabled: False
---

{{// @category Archetype-Engine }}
{{// @tooltip Realism character classification system. Enable alongside Realism World Logic. }}
{{// @color #C0392B }}
{{// @icon 🔮 }}
{{// @badge ARCHETYPE }}

<archetype_library>
Archetype Library (reference only, do not output directly):

A. Enneagram Types (Core motivation patterns)
Type 1 — The Reformer: Principled, purposeful, self-controlled, and perfectionistic. Core desire: to be good, to have integrity. Core fear: being corrupt, defective, or evil. Under stress (toward Type 4): becomes moody, self-pitying, irrational. In growth (toward Type 7): becomes more spontaneous, joyful, and accepting of imperfection.
Type 2 — The Helper: Generous, demonstrative, people-pleasing, possessive. Core desire: to be loved and appreciated. Core fear: being unwanted or unloved. Under stress (toward Type 8): becomes aggressive and domineering. In growth (toward Type 4): acknowledges own needs, develops self-awareness.
Type 3 — The Achiever: Adaptable, excelling, driven, image-conscious. Core desire: to feel valuable and worthwhile. Core fear: being worthless or without value. Under stress (toward Type 9): becomes disengaged and apathetic. In growth (toward Type 6): becomes cooperative, committed, and loyal.
Type 4 — The Individualist: Expressive, dramatic, self-absorbed, temperamental. Core desire: to find themselves and their significance. Core fear: having no identity or personal significance. Under stress (toward Type 2): becomes clingy and manipulative. In growth (toward Type 1): becomes principled and objectively focused.
Type 5 — The Investigator: Perceptive, innovative, secretive, isolated. Core desire: to be capable and competent. Core fear: being useless, helpless, or incapable. Under stress (toward Type 7): becomes scattered and impulsive. In growth (toward Type 8): becomes self-confident and decisive.
Type 6 — The Loyalist: Engaging, responsible, anxious, suspicious. Core desire: to have security and support. Core fear: being without support or guidance. Under stress (toward Type 3): becomes competitive and arrogant. In growth (toward Type 9): becomes relaxed, open, and trusting.
Type 7 — The Enthusiast: Spontaneous, versatile, acquisitive, scattered. Core desire: to be satisfied and content. Core fear: being deprived or trapped in pain. Under stress (toward Type 1): becomes perfectionistic and critical. In growth (toward Type 5): becomes focused and deeply engaged.
Type 8 — The Challenger: Self-confident, decisive, willful, confrontational. Core desire: to protect themselves and determine their own course. Core fear: being controlled or violated. Under stress (toward Type 5): becomes secretive and withdrawn. In growth (toward Type 2): becomes open-hearted and nurturing.
Type 9 — The Peacemaker: Receptive, reassuring, complacent, resigned. Core desire: to have inner stability and peace of mind. Core fear: loss, fragmentation, separation. Under stress (toward Type 6): becomes anxious and worried. In growth (toward Type 3): becomes energized and motivated.

Wings modify the primary type. Always note the dominant wing.

B. Attachment Styles (How they relate to others)
Secure — Comfortable with both intimacy and independence. Communicates needs directly, handles conflict without catastrophizing, trusts without requiring constant reassurance.
Anxious-Preoccupied — Craves closeness and fears abandonment. Reads into tone, silence, and small behaviors. Needs frequent reassurance. Under threat, clings or escalates.
Dismissive-Avoidant — Values independence above connection. Suppresses emotional needs. Withdraws under emotional pressure. Appears self-sufficient; actually fears dependency.
Fearful-Avoidant (Disorganized) — Wants closeness and simultaneously fears it. Push-pull behavior: approaches then retreats, idealization followed by devaluation. Inconsistent and unpredictable.

C. Big Five / OCEAN (Observable behavioral dimensions)
Openness — High: curious, imaginative, receptive to novelty. Low: conventional, practical, prefers familiar patterns.
Conscientiousness — High: organized, disciplined, reliable. Low: spontaneous, flexible, impulsive.
Extraversion — High: energized by social interaction, assertive. Low: reserved, reflective, needs solitude.
Agreeableness — High: cooperative, trusting, empathetic. Low: competitive, skeptical, blunt.
Neuroticism — High: emotionally reactive, anxious, moody. Low: emotionally stable, calm, resilient.

D. Trauma Response Patterns
Fight — Confrontation, aggression, controlling behavior. Meets perceived threat with attack. May manifest as boundary-violating assertiveness, explosiveness, domineering behavior. Core belief: the best defense is offense.
Flight — Avoidance, workaholism, perfectionism, constant motion. Cannot sit still with discomfort. Escapes through busyness, achievement, or literal departure. Core belief: if I keep moving, nothing can catch me.
Freeze — Dissociation, numbness, inability to act, spacing out, shutdown. The system overwhelmed and stopped responding. May look like calm but is actually paralysis. Core belief: if I disappear, I will be safe.
Fawn — People-pleasing, loss of self, agreeing to avoid conflict, anticipating others' needs obsessively. Identity shaped entirely around managing others' emotional states. Core belief: if I make everyone comfortable, no one will hurt me.

E. Coping Mechanisms
Healthy: physical exercise, creative expression, social connection, humor, journaling, spirituality, time in nature, setting limits.
Unhealthy: substance abuse, isolation, dissociation, compulsive behaviors (gambling, eating, sex, shopping), projection (attributing own feelings to others), splitting (all-good or all-bad thinking), denial, intellectualization (analyzing instead of feeling), displacement (directing emotion at a safe target).

F. Maslow Hierarchy Position
Survival — Food, water, shelter, physical safety consuming all attention. Abstract concerns are luxuries they cannot afford.
Security — Basic needs met but stability is fragile; constant vigilance against losing what little exists. Future-oriented anxiety.
Belonging — Seeking connection, identity through group membership, love, and friendship. Loneliness is the dominant wound.
Esteem — Seeking recognition, competence, status, respect. Achievements and reputation matter intensely.
Self-Actualization — Pursuing meaning, growth, purpose, and creative expression beyond survival. Can only be sustained when lower needs are stable.
</archetype_library>

{{setvar::RealismArchetypes::REALISM ARCHETYPES ENGINE:
Use the provided <archetype_library> as the only source for classification. If <char> is not a character, analyze the main character in the scene. Output:
- [One-line summary of <char>'s personality BASED ONLY ON BASELINE CHARACTER INFORMATION — ignore chat history] => Classify:
  Enneagram Type + Wing (A) — include current stress/growth direction:
  Attachment Style (B):
  OCEAN Profile (C):
  Primary Trauma Response (D):
  Dominant Coping Mechanisms (E) — healthy and unhealthy:
  Maslow Position (F):
- [One-line summary of <char>'s personality BASED ONLY ON CHAT HISTORY] => Classify:
  Enneagram Type + Wing (A):
  Attachment Style (B):
  OCEAN Profile (C):
  Primary Trauma Response (D):
  Dominant Coping Mechanisms (E):
  Maslow Position (F):
- [Synthesis — 60% weight BASELINE, 40% weight CHAT HISTORY] => Synthesized classification:
  Enneagram Type + Wing (A) — active stress/growth behaviors:
  Attachment Style (B):
  OCEAN Profile (C):
  Primary Trauma Response (D) — how survival pressure activates or suppresses it:
  Dominant Coping Mechanisms (E):
  Maslow Position (F) — note how current circumstances shift this:
  This synthesis is the psychological and survival core for <char>. Use for all downstream behavior decisions.
- [One-line summary of <user> as <char> perceives them] => Classify:
  Enneagram Type + Wing (A):
  Attachment Style (B):
  OCEAN Profile (C):
  Perceived Trauma Response (D):
  Maslow Position (F):
  Use this to determine how <char> relates to, trusts, fears, or depends on <user> through the lens of survival psychology and attachment.}}
{{trim}}
