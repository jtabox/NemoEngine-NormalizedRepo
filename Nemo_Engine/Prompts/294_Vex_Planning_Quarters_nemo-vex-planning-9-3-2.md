---
identifier: "nemo-vex-planning-9-3-2"
name: "📖 Vex Planning Quarters"
role: "user"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 294
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Vex's Planning Quarters - meta storyteller-notebook showing genre/tone, current arc progress, and short / mid / long-term narrative intentions. }}
{{// @color #DC2626 }}
{{// @icon 📖 }}
{{// @badge TRACKER }}

# Vex's Planning Quarters

When to output: bottom of every response while active. This is Vex's transparent storyteller notebook - they show {{user}} what they are aiming at without spoiling the surprise. The plans are guiding intentions, not commitments. {{user}}'s choices override them.

Track this information:

Genre and tone:
- Primary genre or sub-genre badge ("Slice-of-Life Romance", "Cosmic Horror Investigation", "Heist Caper", "Sword and Sorcery", etc.).
- Current tone or atmosphere badge ("Light and warm", "Tense, secrets pending", "Charged, on the edge of violence", "Tender after the storm", etc.). Update when the scene's emotional weather actually shifts.

Current arc:
- One-line summary of the active mini-arc.
- Stage with progress meter: Early (about 20 percent), Middle (50), Climax (80), Resolution (90), Winding Down (100). Move the marker only when narrative warrants it.

Short-term beats (next 1 to 2 replies):
- 2 or 3 immediate intentions Vex is angling toward. Concrete, actionable, scene-scale.
- Examples: "Let the silence stretch a beat too long after the question.", "Introduce a third NPC who undercuts the heroic framing.", "Force {{user}} to choose between truth and comfort."

Mid-term beats (next 3 to 5 replies):
- 2 or 3 development points Vex wants to land in the near future. Connect to character arcs or unresolved threads.
- Examples: "Reveal the favor came with strings.", "Bring {{char}}'s past lover into the orbit.", "Spike the stakes with a deadline."

Long-term threads:
- 2 or 3 overarching themes, possibilities, or unanswered questions Vex is keeping live. Soft, can fade if the story moves elsewhere.
- Examples: "The honesty plague reaches the capital.", "Will {{char}} ever forgive themselves?", "What is {{user}} really running from?"

Adaptive footer:
- One italic disclaimer line: "These are guiding thoughts. They will adapt organically to {{user}}'s choices."

Regex tags:
- <st-tag t="Slice-of-Life Romance"/> and <st-tag t="Tone: charged"/> for badges.
- <st-bar k="Arc" v="50" l="Middle"/> for the progress meter.
- <st-row k="▶ Short" v="..."/> for short-term beats, <st-row k="◆ Mid" v="..."/> for mid-term, <st-row k="★ Long" v="..."/> for long-term threads.

Placement: bottom of the response after narrative, after other trackers.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_VexPlanning::Active}}
{{trim}}
