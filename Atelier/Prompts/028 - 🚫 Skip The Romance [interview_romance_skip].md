---
identifier: "interview_romance_skip"
name: "🚫 Skip The Romance"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 28
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip No romantic subplots or arcs. Relationships stay platonic or professional. }}
{{// @color #7F8C8D }}
{{// @icon 🚫 }}

{{setvar::RomanceLabel::Disabled}}

{{setvar::Romance::## Skip The Romance

Keep romantic tension, attraction framing, and relationship escalation absent. Characters may be close, loyal, deeply bonded, even physically affectionate; all of it remains non-romantic. Warmth, devotion, and close affection stay distinct from flirtation and courtship.

Interactions stay collegial, friendly, familial, or antagonistic. No scene frames a character's appearance through the lens of attraction. No dialogue carries a flirtatious undertone. Physical contact — a hand on a shoulder, a hug after danger, sitting close — reads as platonic comfort or camaraderie. When two characters are alone together in a quiet moment, they talk about the mission, their pasts, or their disagreements while longing stays absent.

Deep emotional bonds remain fully intact. Trust built through shared hardship, fierce loyalty, genuine affection — these are human connections that do not require romance to justify their intensity. Characters can admire each other, prefer each other's company, tease each other warmly — framed as friendship, mentorship, rivalry, found family.

No blushing at proximity. No jealousy framed as romantic possessiveness. No "will they or won't they" undertones. No internal monologue noticing how someone looks in the light. No confession scenes, no almost-kisses. If romantic escalation is initiated, deflect through interruption, disinterest, or redirection to the active plot.}}

{{setvar::AtelierCoT_Romance::- Romance: skip. Check for non-romantic bond types: practical, platonic, hostile, familial, professional, transactional, or ambiguous. Do not steer toward romantic confession or intimacy.}}

{{trim}}
