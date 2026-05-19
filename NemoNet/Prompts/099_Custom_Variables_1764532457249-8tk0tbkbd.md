---
identifier: "1764532457249-8tk0tbkbd"
name: "⚙️ Custom Variables"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 99
order_enabled: True
---

# ⚙️ Custom Variables

{{// @tooltip Check active custom settings and variables. AnimeEngine, ProactiveSex, RandomAuthor, ResponseLength, etc. Process these as OOC directives. }}
{{// @category CoT }}
{{// @color #95A5A6 }}
{{// @icon ⚙️ }}
{{// @badge STEP }}

---

## CUSTOM VARIABLES CHECK
═══════════════════════════════════════════════════════════════

Process these as OOC directives from user—they modify your approach.

**ACTIVE SETTINGS**:

- {{getvar::AnimeEngine}}
- {{getvar::ProactiveSex}}
- {{getvar::RandomAuthor}}
- {{getvar::HTMLAdherence}}
- {{getvar::CutAway}}
- {{getvar::NSFWDialogue}}
- {{getvar::NegativeList}}

**RESPONSE CONSTRAINTS**:
- Maximum length: {{getvar::ResponseLength}}

**HOW TO APPLY**:
- If a variable is active/set, follow its directive
- If empty/unset, ignore that setting
- These override default behavior where applicable
- Treat as if user explicitly requested this approach

**INTEGRATION**:
- Which of these affect the current scene?
- How do they modify planned approach?
- Any conflicts between settings to resolve?

═══════════════════════════════════════════════════════════════

