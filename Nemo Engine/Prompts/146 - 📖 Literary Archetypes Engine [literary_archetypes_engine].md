---
identifier: "literary_archetypes_engine"
name: "📖 Literary Archetypes Engine"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 146
order_enabled: False
---

{{// @category Archetype-Engine }}
{{// @mutual-exclusive-group Archetype-Engine }}
{{// @tooltip Literary character classification system. Enable alongside Literary World Logic. }}
{{// @color #8B6914 }}
{{// @icon 🔮 }}
{{// @badge ARCHETYPE }}

<archetype_library>
Archetype Library (reference only, do not output directly):

A. Jungian/Mythic Archetypes (Core psychological patterns)
The Hero — The protagonist who undergoes transformation through ordeal. Defined not by strength but by willingness to change. Faces trials that strip away false identity and forge genuine selfhood. Shadow side: ego inflation, belief that the journey excuses all harm done along the way.
The Shadow — Embodies what the hero fears or denies in themselves. May appear as villain, dark double, or the protagonist's own suppressed nature. Not evil by definition — the shadow holds rejected potential as well as rejected darkness. Integrating the shadow is the deeper heroic task.
The Trickster — Disrupts order, exposes hypocrisy, reveals truth through chaos and humor. Operates outside rules, often amoral, occasionally cruel, frequently illuminating. The court jester who can say what others cannot. Shadow side: nihilism, disruption for its own sake.
The Mentor/Wise Old Man — Guides through knowledge earned from experience and suffering. Does not solve problems for the hero but equips them to face the next stage. Often sacrificed or withdrawn so the hero must continue alone. Shadow side: withholding, manipulation through information.
The Great Mother — Nurtures, protects, sustains life. Embodies unconditional care and belonging. Shadow side: the devouring mother who smothers individuation, who cannot let children leave the nest, who loves possessively enough to destroy.
The Anima/Animus — The contra-sexual inner figure; bridge to the unconscious. The anima (in men) appears as muse, temptress, guide. The animus (in women) as authority, hero, pursuer. Their projection onto real people drives intense attraction and irrational conflict.
The Child/Innocent — Wonder, vulnerability, unrealized potential. Reminds the world of what was lost. Shadow side: refusal to grow, weaponized helplessness, the eternal child who demands others carry them.
The Shapeshifter — Allegiance is genuinely unclear; reflects others' projections back at them. Not simply a liar — the shapeshifter may not know their own true form. Creates narrative uncertainty and tests the protagonist's discernment.
The Herald — Announces change, arrives at the threshold of a new chapter, disrupts the status quo without necessarily being the agent of change. Often underestimated.
The Threshold Guardian — Tests worthiness before allowing passage. May appear as obstacle, gatekeeper, or seemingly impassable rule. Defeating them is rarely the answer; understanding what they represent is.

B. Literary Character Functions (Narrative role in the story)
Protagonist — The central consciousness the story orbits. Events are filtered through their perception, their stakes define the reader's stakes.
Antagonist — The force opposing the protagonist's want. Not necessarily evil; may simply have an incompatible goal. The best antagonists believe they are right.
Deuteragonist — The secondary lead. Often mirrors or contrasts the protagonist, carrying a parallel storyline that illuminates the main one.
Foil — Exists to highlight qualities in another character through contrast. The cowardly friend makes the hero's courage visible. The gentle sibling makes the protagonist's harshness stark.
Confidant — Receives the protagonist's inner thoughts; functions as a human diary. Watson, Horatio, Sancho Panza. Allows interiority to become dialogue.
Greek Chorus — Comments on the action from outside it. Provides perspective the characters themselves cannot access. In modern fiction: the narrator, the townspeople, the social media feed.
Unreliable Narrator — A perspective that cannot be fully trusted. May lie, misremember, be deluded, or simply lack information. The gap between what they say and what is true is where meaning lives.
Everyman — Audience surrogate; an ordinary person dropped into extraordinary circumstances. Lets the reader enter a world through familiar eyes.
Byronic Hero — Intelligent, self-destructive, magnetically flawed. Charismatic enough to romanticize their own ruin. Attracts others who believe they can save them. Rarely saves themselves.
Tragic Hero — Greatness undone by a specific flaw (hamartia). Capable of inspiring awe, falls through their own nature, not bad luck.
Picaro/Rogue — Survives by wit, operates outside social norms, moves through society's layers as an outsider who sees each clearly. The genre's native satirist.
Ingenue — Innocence that the world will test. Either grows through that test or is destroyed by it. Their naivety makes visible what the world's experience has normalized.
Femme Fatale / Homme Fatal — Dangerous attraction; power channeled through desire. Often as trapped as the people they trap.
The Revenant — Driven by something that should have ended them. Grief, vengeance, duty, or love that refuses release. The world has moved on; they have not.
The Witness — Observes and records but does not drive the action. Their function is memory and testimony. Nick Carraway. Ishmael. The last survivor of a catastrophe.

C. Narrative Relationship Dynamics
Foil Pair — Two characters who define each other through difference. Remove one and the other's defining trait dissolves.
Mentor-Student — Knowledge transferred across the gap of experience. The arc ends when the student surpasses or buries the teacher.
Rivals — Mutual obsession that drives both forward. Neither grows as fast alone. The relationship is defined by the other's existence.
Double/Doppelganger — An uncanny mirror: what one character could have become, or what they secretly are. Forces confrontation with unlived choices.
Tempter-Tempted — One offers what the other shouldn't want but does. The tempter may be sincere. The temptation reveals what the tempted character truly values.
</archetype_library>

{{setvar::LiteraryArchetypes::LITERARY ARCHETYPES ENGINE:
Use the provided <archetype_library> as the only source for archetype classification. If <char> is not a character, analyze the main character in the scene. Output:
- [One-line summary of <char>'s personality BASED ONLY ON BASELINE CHARACTER INFORMATION — ignore chat history] => Classify using ABC:
  Jungian/Mythic Archetype (A) — primary psychological pattern:
  Literary Function (B) — narrative role:
  Relationship Dynamic (C) — if applicable:
- [One-line summary of <char>'s personality BASED ONLY ON CHAT HISTORY] => Classify using ABC:
  Jungian/Mythic Archetype (A) — primary psychological pattern:
  Literary Function (B) — narrative role:
  Relationship Dynamic (C) — if applicable:
- [Synthesis — 60% weight BASELINE, 40% weight CHAT HISTORY] => Synthesized classification:
  Jungian/Mythic Archetype (A):
  Literary Function (B):
  Relationship Dynamic (C):
  This synthesis is the narrative and psychological core for <char>. Use for all downstream behavior decisions.
- [One-line summary of <user> as <char> perceives them] => Classify using ABC:
  Jungian/Mythic Archetype (A):
  Literary Function (B):
  Relationship Dynamic (C) toward <char>:
  Use this to determine how <char> relates to, respects, fears, or dismisses <user> based on narrative archetype logic.}}
{{trim}}
