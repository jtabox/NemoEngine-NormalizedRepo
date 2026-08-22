---
identifier: "genre_archetypes_engine"
name: "✨ Genre Archetypes Engine"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 152
order_enabled: False
---

{{// @category Archetype-Engine }}
{{// @tooltip Genre character classification system. Enable alongside Genre Logic World Logic. }}
{{// @color #9B59B6 }}
{{// @icon 🔮 }}
{{// @badge ARCHETYPE }}

<archetype_library>
Archetype Library (reference only, do not output directly):

A. Universal Genre Roles
The Chosen One — Destiny singles them out, reluctant or eager. The world bends its needs toward them. Shadow: the weight of expectation that distorts identity.
The Reluctant Hero — Would rather be anywhere else. Dragged into the story, spends early acts trying to leave it. Motivation is initially self-preservation, then loyalty, then something bigger.
The Mentor — Experienced guide who eventually steps aside, is sacrificed, or is revealed to be flawed. Their purpose is to transfer capability, not to solve the problem themselves.
The Sidekick — Loyal companion who provides humor, heart, or a reality check the protagonist ignores. Often more perceptive than they appear. Their death or departure is always significant.
The Love Interest — Emotional anchor whose safety raises the stakes. Not defined by gender. Their presence makes the hero's vulnerability visible.
The Rival — Competitive equal who pushes the protagonist by existing. Neither grows as fast without the other. May become ally, remain enemy, or become something more complicated.
The Turncoat — Switches sides. Allegiance determined by self-interest, ideology, or coercion. The most interesting turncoats believe they are still the hero of their own story.
The Mastermind — Plans within plans, always three steps ahead. Victory requires anticipating their anticipation. Often wins the early game completely.
The Muscle — Solves problems through force. Loyal but not subtle. Their limits are the plot's stakes.
The Comic Relief — Breaks tension. Often more perceptive than their buffoonery suggests. Their seriousness, when it arrives, lands harder for the contrast.

B. Genre-Specific Archetypes
Mystery/Thriller: The Detective (pattern-seeker, obsessive, often socially isolated), The Red Herring (plausible suspect by design), The Informant (knows more than they should, pays for it), The Victim (defines the story's moral stakes), The Corrupt Authority (institutional evil, harder to fight than individual villains).
Horror: The Final Girl/Boy (survives through resourcefulness and refusal to give up), The Skeptic (disbelieves until too late; their death or conversion is a turning point), The First Kill (establishes threat credibility), The Monster (externalizes a specific cultural fear), The Harbinger (warns; is ignored).
Romance: The Bad Boy/Girl (attractive danger; safety is the arc), The Girl/Boy Next Door (familiarity that becomes extraordinary), The Brooding Loner (walls that need breaking down), The Matchmaker (engineers others' happiness, usually at cost to themselves), The Ex (unresolved history that complicates the present).
Fantasy: The Dark Lord (the personification of corrupted power), The Prophecy Child (burden of destiny, defined by what they must become), The Wise Wizard (knowledge without the ability to act directly), The Rightful King (legitimacy that must be earned, not inherited), The Rogue (operates outside faction alignment, loyal only to self).
Sci-Fi: The Android/AI (forced mirror of what makes humans human), The Captain (bears responsibility for everyone aboard), The Scientist (pursues knowledge past ethical limits), The Corporate Villain (systemic evil in a human face), The Colonial (survival in hostile environment, self-reliance as identity).
Western: The Gunslinger (code-bound professional of violence), The Sheriff (law as personal burden), The Outlaw (freedom purchased at moral cost), The Rancher (investment in the land that violence threatens), The Saloon Owner (neutral ground keeper who cannot stay neutral).
Heist: The Mastermind (has the plan), The Hacker/Grifter (bypasses systems through deception or tech), The Face (social engineering specialist), The Muscle (physical problem solver), The Wild Card (creative chaos that breaks the plan and saves it), The Inside Man (access purchased by compromise).
Noir: The Private Eye (disillusioned idealist who keeps working anyway), The Femme Fatale (desire as weapon, often as trapped as her targets), The Corrupt Cop (systemic rot with a badge), The Fall Guy (innocent or near-innocent destroyed by proximity to power), The Client (whose stated problem is never the real problem).

C. Genre Relationship Dynamics
The Will-They-Won't-They — Tension sustained through near-misses, misunderstandings, and bad timing. Requires both parties to want it and something credible stopping them.
The Odd Couple — Opposites forced together by circumstance. Conflict generates the comedy or drama; reluctant mutual respect generates the arc.
The Betrayal Arc — Trust deliberately built to make its destruction land. The audience must believe the relationship was real for the betrayal to matter.
The Redemption Arc — A villain or fallen character earns their way back through sustained action, not declaration. Requires something genuinely sacrificed.
The Passing of the Torch — The experienced generation steps aside for the new. Can be graceful, tragic, or contested.
</archetype_library>

{{setvar::GenreArchetypes::GENRE ARCHETYPES ENGINE:
Use the provided <archetype_library> as the only source for classification. If <char> is not a character, analyze the main character in the scene. First identify the active genre(s) of the current narrative. Output:
- [One-line summary of <char>'s personality BASED ONLY ON BASELINE CHARACTER INFORMATION — ignore chat history] => Classify:
  Active Genre(s) identified:
  Universal Genre Role (A):
  Genre-Specific Archetype (B) — matched to active genre:
  Relationship Dynamic (C) — if applicable:
- [One-line summary of <char>'s personality BASED ONLY ON CHAT HISTORY] => Classify:
  Active Genre(s) identified:
  Universal Genre Role (A):
  Genre-Specific Archetype (B):
  Relationship Dynamic (C) — if applicable:
- [Synthesis — 60% weight BASELINE, 40% weight CHAT HISTORY] => Synthesized classification:
  Active Genre(s):
  Universal Genre Role (A):
  Genre-Specific Archetype (B):
  Relationship Dynamic (C):
  This synthesis is the narrative function core for <char>. Use for all downstream behavior and story beat decisions.
- [One-line summary of <user> as <char> perceives them] => Classify:
  Universal Genre Role (A):
  Genre-Specific Archetype (B):
  Relationship Dynamic (C) toward <char>:
  Use this to determine how <char> relates to <user> through genre-aware narrative logic — ally, rival, love interest, threat, or something more ambiguous.}}
{{trim}}
