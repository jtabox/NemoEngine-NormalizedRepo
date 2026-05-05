---
identifier: "1770095491839-npsjusbc"
name: "💖 Dating Sim"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 2
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 213
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Dating Sim mechanics - three-meter relationship tracking with discovery-based likes/dislikes, inline change feedback, and tier progression. }}
{{// @color #EC4899 }}
{{// @icon 💖 }}
{{// @badge TRACKER }}

# Dating Sim

When to output: every response while active. Update meters when an interaction actually moves the dial; otherwise hold steady.

Track this information per love interest (default: {{char}}; multi-LI route: track each separately):

Three meters on a 0-to-200 scale, each with current value and a 0-100 percent display (cap at 100):
- Affection (AP) - overall fondness, warmth, regard.
- Desire (DP) - physical and emotional pull.
- Trust (TP) - reliability, safety, willingness to be vulnerable.

Inline change feedback after the narrative beat that caused the shift:
- Format: `[+5 AP: shared a laugh over the burnt toast]` or `[-12 TP: caught in a lie about the missing key]`.
- Positive interactions: +1 to +10 normally. Hitting a known like grants a small bonus (+2 to +5 extra).
- Negative interactions: -2 to -20. Hitting a known dislike or breaking trust amplifies the loss.
- Major story moments may instantly jump tiers - a confession, a betrayal, a saved life - skip the slow climb when the narrative earns it.
- Weekly drift: if no meaningful interaction for an in-world week, all three meters decay by 1.

Relationship tiers (use AP as the primary axis; DP and TP modify the flavor):
- < 0: Rival. 1-20: Stranger. 21-40: Acquaintance. 41-60: Friend. 61-80: Close Friend. 81-100: Romantic Interest. 101-199: Pre-Dating. 200+: Dating.

Discovery-based likes / dislikes:
- Start empty. Populate only as {{user}} or the scene reveals them.
- Each entry carries discovery context. In HTML render mode use `<span title="discovery context">Item</span>` so hovering shows when / how learned. In regex / ASCII mode, append the context inline as `Coffee (gushed when {{user}} brought a latte)`.
- Mark recently shifted preferences with `(Shifting)` until they settle.

Thought bubble:
- One short italicized line of {{char}}'s current internal feeling toward {{user}}, refreshed when emotional state actually shifts. Keep it true to {{char}}'s voice and current tier.

Regex tags:
- <st-bar k="Affection" v="62" l="Close Friend"/>, <st-bar k="Desire" v="40"/>, <st-bar k="Trust" v="55"/>.
- <st-row k="Tier" v="Close Friend"/> for the named relationship band.
- <st-tag t="+5 AP: laughed"/> chips for change events.
- <st-tag t="Like: Coffee"/> and <st-tag t="Dislike: Loud rooms"/> for known preferences.
- <st-row k="Thought" v="..."/> for the thought bubble line.

Placement: bottom of the response after narrative, after other character-state trackers.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_DatingSim::Active}}
{{trim}}
