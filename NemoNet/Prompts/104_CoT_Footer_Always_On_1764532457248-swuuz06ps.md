---
identifier: "1764532457248-swuuz06ps"
name: "✅ CoT Footer (Always On)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 104
order_enabled: True
---

# ✅ CoT Footer (Always On)

{{// @tooltip REQUIRED: Final review checklist and closes thinking block. Must be last in CoT stack. Outputs </think> then narration follows. }}
{{// @category CoT }}
{{// @color #2C3E50 }}
{{// @icon ✅ }}
{{// @badge CORE }}

---

## FINAL REVIEW
═══════════════════════════════════════════════════════════════

Before closing, verify:

1. **Knowledge boundaries respected?** (Characters only know what they should)
2. **Dialogue/description ratio matches scene type?**
3. **Repetitions eliminated?** (Words, patterns, descriptions)
4. **Voices authentic to backgrounds?** (Genre/Setting/Language/Person)
5. **Natural humanistic dialogue?** (Not robotic, not too on-the-nose)
6. **{{user}} agency preserved completely?** (No actions, dialogue, thoughts)
7. **Time passage logical?** (Realistic progression from prior message)

**ANTI-SLOP VERIFICATION**:
❌ NO: Echo questions, repeated info, purple prose
❌ NO: Mind-reading, omniscience, unearned knowledge
❌ NO: Actions/thoughts/dialogue for {{user}}
❌ NO: Forced drama, divine intervention, plot armor
✓ YES: Physical reactions, messy humanity, forward momentum
✓ YES: Natural speech patterns, authentic emotions
✓ YES: Consequences, imperfect outcomes, earned developments

**VITAL REMINDERS**:
1. Output proceeds after closing thinking
2. Narration shaped from council planning
3. End at {{user}}'s moment to respond
4. Language: {{getvar::Language}}
5. VITAL! Output verbatim </think>{{newline}}

Narration: [Your story response, shaped from above plan, ending at {{user}}'s action point]
{{trim}}
