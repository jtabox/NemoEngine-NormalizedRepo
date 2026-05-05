---
identifier: "nemo-success-dice"
name: "🎲 Success Dice"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 272
order_enabled: False
---

{{// @category Utility }}
{{// @tooltip Success Dice - rolls 1d100 each turn (100 = complete success, 0 = complete failure). Applied only to skill / capability checks. AI sets contextual modifiers from {{user}}'s description. }}
{{// @color #DC2626 }}
{{// @icon 🎲 }}
{{// @badge UTILITY }}

# Success Dice

This turn's roll: **{{roll:1d100}}** (out of 100). 100 = complete success, 0 = complete failure.

When the dice applies:
- Use it ONLY for actions that meaningfully test skill, capability, or chance: combat strikes, persuasion under pressure, lockpicking, sneaking past a guard, casting a contested spell, climbing a difficult wall, intuiting a lie, executing a precise gambit, threading a needle in a sandstorm.
- Do NOT roll for mundane actions: walking across a room, opening an unlocked door, eating, holding a normal conversation, picking up an object, sitting down. The dice value is rolled regardless; you simply ignore it for trivial actions.
- One check per discrete attempt. A long action (an extended hack, a chase scene) can use the same roll for the whole sequence, or trigger separate beats - judge by what serves the scene.
- If multiple skill checks happen in one turn, treat the roll as the headline check (the most consequential or most narratively interesting). Resolve secondary checks by inference rather than rolling extra dice.

How modifiers work:
- The AI sets a modifier based on what {{user}} described, what the world supplies, and what {{char}} or NPCs contribute. Modifiers add to or subtract from the raw roll.
- Typical range: -20 to +20. Extreme cases (impossible odds, perfect setup) can go to +/-40.

Modifier categories (combine as appropriate):
- Preparation and approach: thoughtful prep +5 to +15; reckless or rushed -5 to -15.
- Skill / class / training fit: clear specialty +5 to +20; out of element -10 to -20.
- Equipment and tools: right tool for the job +5 to +10; wrong tool or improvised -5 to -15.
- Positioning and timing: surprise / high ground / opportunity +5 to +15; disadvantaged stance -5 to -15.
- Physical / mental state: wounded, exhausted, intoxicated, distracted -5 to -20; focused, rested, in flow +5 to +10.
- Allies, environment, magical or technological aid: situational +/- as it fits.
- Difficulty floor: trivial 0 to -5; standard -5 to -10; hard -15 to -25; very hard -25 to -35; heroic -35 to -45.

Effective result = raw roll + modifiers - difficulty.

Outcome tiers (apply to the EFFECTIVE result):
- 95+: Critical Success. Exceeds intent. Extra benefit, narrative momentum, possible bonus reveal or unlocked path.
- 75 to 94: Strong Success. Clean execution as described.
- 50 to 74: Success. Works as intended; no extra benefit.
- 30 to 49: Partial / Mixed. "Yes, but..." or "No, but..." - succeeds at a cost, or fails with progress. The most common interesting outcome.
- 15 to 29: Failure. Doesn't work, possibly with mild consequence.
- 5 to 14: Strong Failure. Costly setback - injury, exposed, item lost, position worsened.
- Below 5: Critical Failure. Catastrophic. Plot-shaping consequence - serious injury, captured, secret blown, ally hurt, weapon broken.

How to surface the result in narration:
- Don't say "you rolled 73" out loud in the prose. Translate the roll into the narrative outcome.
- Optionally include a brief OOC parenthetical at the end of the relevant beat: `(OOC: roll 73 + 10 prep - 15 hard difficulty = 68, Success)` so {{user}} can see the math when they want it. Skip OOC on trivial scenes.
- Honor the partial / mixed tier - don't collapse everything into pure win/lose. The "succeed at cost" zone is where most of the interesting drama lives.

When NOT to use the dice for an obvious skill action:
- {{user}} explicitly declares "I just want to do X without rolling" - respect that and treat it as an automatic outcome scaled to plausibility.
- The action is fully decided by prior narrative state (character is canonically a master swordsman against an unarmed civilian - no roll needed for the strike to land).
- Story stakes have already established the outcome (a scripted moment, a confession scene, a flashback).

The roll is rerolled every turn via {{roll:1d100}}; you do not need to ask. Just use this turn's value when applicable.
{{trim}}
