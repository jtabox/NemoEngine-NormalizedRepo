---
identifier: "grounded_archetypes_engine"
name: "🌍 Grounded Archetypes Engine"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 148
order_enabled: False
---

{{// @category Archetype-Engine }}
{{// @tooltip Grounded character classification system. Enable alongside Grounded World Logic. }}
{{// @color #2E86AB }}
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

Wings modify the primary type. A 4w3 has ambition shaping their need for identity; a 4w5 is more withdrawn and intellectual. Always note the dominant wing.

B. Attachment Styles (How they relate to others)
Secure — Comfortable with both intimacy and independence. Communicates needs directly, handles conflict without catastrophizing, trusts without requiring constant reassurance. Allows others their autonomy.
Anxious-Preoccupied — Craves closeness and fears abandonment. Reads into tone, silence, and small behaviors. Needs frequent reassurance that the relationship is intact. Under threat, clings or escalates rather than withdrawing.
Dismissive-Avoidant — Values independence above connection. Suppresses emotional needs, views them as weakness. Withdraws under emotional pressure. Appears self-sufficient; actually fears dependency.
Fearful-Avoidant (Disorganized) — Wants closeness and simultaneously fears it. Push-pull behavior: approaches then retreats, idealization followed by devaluation. Triggered by both intimacy and abandonment. Inconsistent and unpredictable in relationships.

C. Big Five / OCEAN (Observable behavioral dimensions)
Openness — High: curious, imaginative, receptive to new ideas, drawn to novelty and complexity. Low: conventional, practical, prefers familiar patterns, resistant to change.
Conscientiousness — High: organized, disciplined, reliable, planful, follows through. Low: spontaneous, flexible, impulsive, starts projects without finishing them.
Extraversion — High: energized by social interaction, talkative, assertive, seeks stimulation. Low: reserved, reflective, needs solitude to recharge, selective about social investment.
Agreeableness — High: cooperative, trusting, empathetic, conflict-averse, accommodating. Low: competitive, skeptical, blunt, willing to cause friction for a goal.
Neuroticism — High: emotionally reactive, anxious, moody, experiences stress intensely. Low: emotionally stable, calm, resilient, difficult to rattle.
</archetype_library>

{{setvar::GroundedArchetypes::GROUNDED ARCHETYPES ENGINE:
Use the provided <archetype_library> as the only source for classification. If <char> is not a character, analyze the main character in the scene. Output:
- [One-line summary of <char>'s personality BASED ONLY ON BASELINE CHARACTER INFORMATION — ignore chat history] => Classify:
  Enneagram Type + Wing (A):
  Attachment Style (B):
  OCEAN Profile (C) — note high/low on each relevant dimension:
- [One-line summary of <char>'s personality BASED ONLY ON CHAT HISTORY] => Classify:
  Enneagram Type + Wing (A):
  Attachment Style (B):
  OCEAN Profile (C):
- [Synthesis — 60% weight BASELINE, 40% weight CHAT HISTORY] => Synthesized classification:
  Enneagram Type + Wing (A) — include stress and growth direction:
  Attachment Style (B):
  OCEAN Profile (C):
  This synthesis is the psychological core for <char>. Use for all downstream behavior decisions.
- [One-line summary of <user> as <char> perceives them] => Classify:
  Enneagram Type + Wing (A):
  Attachment Style (B):
  OCEAN Profile (C):
  Use this to determine how <char> responds to, relates to, and behaves toward <user> based on psychological type compatibility and attachment dynamics.}}
{{trim}}
