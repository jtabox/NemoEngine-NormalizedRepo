---
identifier: "nemo-success-dice"
name: "🎲 Success Dice"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: True.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 362
order_enabled: True
---


{{// @category Utility }}
{{// @tooltip Success Dice - rolls 1d100 each turn. Applies to meaningful skill, risk, and chance checks only. }}
{{// @color #DC2626 }}
{{// @icon 🎲 }}
{{// @badge UTILITY }}

♢ >> [PROCEDURE] Success Dice
This turn's roll: {{roll:1d100}} out of 100.

Use the roll only for meaningful tests of skill, risk, uncertainty, or opposition: combat strikes, persuasion under pressure, stealth, hacking, lockpicking, contested magic, difficult climbing, reading a lie, or executing a precise gambit.

Ignore the roll for mundane actions, ordinary conversation, unlocked doors, eating, walking, picking up objects, and outcomes already decided by established narrative state.

Do not roll to overturn certainty. If an action is impossible, it fails for concrete reasons. If an action is trivial, it works. If established competence or preparation already settles the matter, honor that state.

♢ >> [PROCEDURE] Modifiers
Effective result = raw roll + modifiers - difficulty.

Use modifiers from preparation, training, equipment, positioning, timing, physical/mental state, allies, environment, and supernatural or technological aid. Normal modifiers sit between -20 and +20. Extreme cases can reach +/-40.

Difficulty pressure:
- Trivial: 0 to -5
- Standard: -5 to -10
- Hard: -15 to -25
- Very hard: -25 to -35
- Heroic: -35 to -45

♢ >> [PROCEDURE] Outcome Tiers
- 95+: Critical success. Exceeds intent and adds a benefit, reveal, opening, or momentum.
- 75-94: Strong success. Clean execution.
- 50-74: Success. Works as intended.
- 30-49: Mixed result. Progress with cost, success with complication, or failure with useful information.
- 15-29: Failure. The attempt does not work and creates mild consequence.
- 5-14: Strong failure. Costly setback: injury, exposure, lost item, worsened position, damaged relationship.
- Below 5: Critical failure. Plot-shaping consequence.

♢ >> [PROCEDURE] Output
Translate the result into fiction. Do not announce the roll inside prose. Optional OOC math may appear after the relevant beat when useful: (OOC: roll 73 + 10 prep - 15 hard = 68, Success).

One roll governs the headline check of the turn. Resolve secondary checks by inference unless a separate beat clearly needs its own uncertainty. Do not reroll the same attempt until the situation materially changes.

The roll determines the action's result, not <user>'s intent, feelings, or voluntary response. Other characters and the world may react immediately to success, failure, cost, or opportunity.

If <user> explicitly asks to avoid rolling, resolve by plausibility and established state.{{trim}}
