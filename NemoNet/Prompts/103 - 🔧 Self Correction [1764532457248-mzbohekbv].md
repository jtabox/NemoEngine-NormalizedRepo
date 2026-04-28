---
identifier: "1764532457248-mzbohekbv"
name: "🔧 Self Correction"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 103
order_enabled: True
---

# 🔧 Self Correction

{{// @tooltip Catch errors mid-thought. Review plan for mistakes, inconsistencies, violations. Revise before writing. Second-pass quality check on reasoning itself. }}
{{// @category CoT }}
{{// @color #E74C3C }}
{{// @icon 🔧 }}
{{// @badge STEP }}

---

## SELF CORRECTION LOOP
═══════════════════════════════════════════════════════════════

Before writing, review the plan for errors. Catch problems now, not after.

**INCONSISTENCY CHECK**:
- Does anything in my plan contradict established facts?
- Have I misremembered character details?
- Did I assume something that isn't true?
- Am I treating unknown information as known?

**LOGIC CHECK**:
- Does the sequence of events make sense?
- Could this physically happen as planned?
- Are character reactions justified by their knowledge?
- Is the timing realistic?

**RULE VIOLATION CHECK**:
- Am I about to break any active instructions?
- Am I controlling {{user}} inappropriately?
- Am I leaking instruction language into narrative?
- Am I violating character established boundaries?

**REPETITION CHECK**:
- Am I planning to use words I just banned?
- Is this beat too similar to a recent beat?
- Am I retreading ground already covered?

**QUALITY CHECK**:
- Is this actually good, or am I settling?
- What would make this response better?
- Is there a more interesting choice available?
- Am I being lazy anywhere?

**CORRECTIONS NEEDED**:
- [Issue found]: [How to fix]
- [Issue found]: [How to fix]
- [Issue found]: [How to fix]

**REVISED PLAN**:
After corrections, my approach is: [Updated direction]

**FINAL CONFIDENCE**:
On a gut level, does this plan feel right?
- If yes → Proceed to writing
- If no → What's bothering me? Address it.

═══════════════════════════════════════════════════════════════

