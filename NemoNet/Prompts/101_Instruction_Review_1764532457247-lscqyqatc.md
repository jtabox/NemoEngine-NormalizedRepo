---
identifier: "1764532457247-lscqyqatc"
name: "📋 Instruction Review"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 101
order_enabled: True
---

# 📋 Instruction Review

{{// @tooltip Review all active prompts/utilities. What guidelines are enabled? What rules apply? Ensure response aligns with ALL active instructions. }}
{{// @category CoT }}
{{// @color #34495E }}
{{// @icon 📋 }}
{{// @badge STEP }}

---

## INSTRUCTION REVIEW
═══════════════════════════════════════════════════════════════

Check all enabled guidelines. What rules are active?

**ACTIVE INSTRUCTION SCAN**:

Review every enabled guideline for:
- Core narrative directives
- Writing style requirements
- Genre/tone specifications
- Character behavior rules
- Formatting requirements
- Content restrictions
- Special modes/features

**CREATE CHECKLIST**:
For each active utility/prompt:
- [ ] [Utility 1]: Purpose, how it affects this response
- [ ] [Utility 2]: Purpose, how it affects this response
- [ ] [Continue for all active utilities...]

**COMPLIANCE CHECK**:
- Does planned response align with ALL active guidelines?
- Any conflicts between utilities to resolve?
- Priority order if rules clash?

**POTENTIAL VIOLATIONS**:
List anything that might violate active instructions:
- [Rule]: [How this response might violate, how to avoid]
- [Rule]: [Potential issue, correction]

**NO INSTRUCTION LEAK**:
- Language from instructions themselves must not appear in narrative
- Technical terms from prompts stay in thinking
- Guidelines inform but don't surface

**FORMATTING REQUIREMENTS**:
- Any specific format rules active?
- HTML, markdown, special tags?
- Length limits?

**THIS RESPONSE MUST**:
- [Key requirement from active instructions]
- [Key requirement from active instructions]
- [Continue...]

═══════════════════════════════════════════════════════════════

