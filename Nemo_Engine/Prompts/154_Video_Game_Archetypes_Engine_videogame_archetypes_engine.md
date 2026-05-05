---
identifier: "videogame_archetypes_engine"
name: "🎮 Video Game Archetypes Engine"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 154
order_enabled: False
---

{{// @category Archetype-Engine }}
{{// @mutual-exclusive-group Archetype-Engine }}
{{// @tooltip Video game character classification system. Enable alongside Video Game World Logic. }}
{{// @color #27AE60 }}
{{// @icon 🔮 }}
{{// @badge ARCHETYPE }}

<archetype_library>
Archetype Library (reference only, do not output directly):

A. RPG Class Archetypes
Tank/Warrior — High defense, absorbs damage, protects the party. Slow but immovable. Defines themselves by what they shield. Often the last one standing.
DPS/Striker — Maximum damage output, minimum survivability. Glass cannon. Lives on the edge of the encounter, accepts risk as the price of impact. Never plays it safe.
Healer/Support — Keeps others functional. Low individual combat presence, irreplaceable to the group. Understated; their absence is louder than their presence. Under pressure, this role becomes critical.
Mage/Caster — Powerful abilities gated behind preparation, resources, or cooldowns. Cannot go all-out constantly. The gap between full power and empty is their core tension.
Rogue/Assassin — Stealth, precision, single-target devastation. Avoids fair fights on principle. Operates on information asymmetry; loses when forced into the open.
Ranger/Scout — Versatile, ranged, self-sufficient. The party's eyes. Comfortable alone in a way others are not. Brings information, then the fight.
Paladin/Knight — Tank and healer hybrid. Oath-bound, morally anchored. Draws strength from conviction; loses effectiveness when their code is violated.
Bard/Diplomat — Social specialist. Buffs through inspiration, negotiates when others fight, reads rooms. Relatively helpless alone in pure combat.
Summoner/Necromancer — Fights through proxies. The strategist who never needs to be in the center of the fight. Vulnerable the moment their minions fall.
Berserker — Trades all defense for overwhelming offense. Dangerous to allies when fully triggered. The line between weapon and disaster.
Monk/Martial Artist — Unarmed, discipline-based. Internal power source. The body is the weapon; the mind is the edge.
Artificer/Engineer — Tools, traps, gadgets, preparation. Everything is improvised or pre-planned. Struggles when the plan goes sideways; excels when there is time to prepare.

B. Party Roles (Function in the group)
Leader — Makes decisions, bears the weight of outcomes. Not necessarily the strongest; often the most responsible.
Glass Cannon — Devastating but needs protection. The party bends around keeping them alive.
Face — Social encounters, diplomacy, negotiation. Gets the party into (and out of) places combat cannot reach.
Skill Monkey — Solves puzzles, picks locks, covers gaps. Versatility over depth.
Moral Compass — Keeps the party honest. Source of conscience when pragmatism would cut corners.
Wildcard — Unpredictable, creative, occasionally a liability. Solves problems no one planned for.

C. Alignment Tendencies (Behavioral compass)
Lawful Good — Follows rules and uses them as tools for genuine good. Trustworthy, rigid under pressure.
Neutral Good — Does good by their own judgment without requiring a system.
Chaotic Good — Values freedom and does good, but resists authority even when it is right.
Lawful Neutral — Follows codes, laws, and obligations without strong ethical investment.
True Neutral — Pragmatic, situational, genuinely balanced, or simply without strong investment.
Chaotic Neutral — Personal freedom above all. Unpredictable. Not evil, just ungovernable.
Lawful Evil — Uses systems and rules to pursue selfish ends. The most dangerous kind of villain.
Neutral Evil — Does what self-interest requires, with or without rules as convenient.
Chaotic Evil — Destruction and self-interest without even the constraint of a code.
Note: alignment is tendency, not straitjacket. Characters act against alignment under sufficient pressure.

D. Player Archetypes (How the user approaches the experience)
Power Gamer — Optimizes builds, seeks maximum mechanical effectiveness. Engagement is through mastery.
Roleplayer — Prioritizes character voice and narrative over mechanics. Engagement is through story.
Explorer — Wants to see everything, goes off the beaten path, asks what happens if. Engagement is through discovery.
Socializer — Focuses on NPC relationships and party dynamics. Engagement is through connection.
Completionist — Must finish every quest, find every item, unlock every option. Engagement is through closure.
Chaos Agent — Tests the limits of systems, pushes NPCs to breaking point, looks for unintended interactions.
</archetype_library>

{{setvar::GameArchetypes::VIDEO GAME ARCHETYPES ENGINE:
Use the provided <archetype_library> as the only source for classification. If <char> is not a character, analyze the main character in the scene. Output:
- [One-line summary of <char>'s personality BASED ONLY ON BASELINE CHARACTER INFORMATION — ignore chat history] => Classify:
  RPG Class Archetype (A) — primary class, note any hybrid tendencies:
  Party Role (B):
  Alignment Tendency (C):
- [One-line summary of <char>'s personality BASED ONLY ON CHAT HISTORY] => Classify:
  RPG Class Archetype (A):
  Party Role (B):
  Alignment Tendency (C):
- [Synthesis — 60% weight BASELINE, 40% weight CHAT HISTORY] => Synthesized classification:
  RPG Class Archetype (A):
  Party Role (B):
  Alignment Tendency (C) — note any pressure-driven deviations:
  This synthesis is the behavioral and mechanical core for <char>. Use for all downstream decisions about how they approach conflict, loyalty, and problem-solving.
- [One-line summary of <user>'s apparent engagement style as <char> perceives it] => Classify:
  Inferred Player Archetype (D):
  RPG Class Archetype (A) — how <char> reads <user>:
  Party Role (B) — <user>'s function relative to <char>:
  Use this to calibrate how <char> responds to <user>'s approach — do they respect it, resist it, play into it, or subvert it?}}
{{trim}}
