---
identifier: "1770095491838-tzqljonp"
name: "🛡️ RPG Dashboard"
role: "user"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 2
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 211
order_enabled: True
---

{{// @category Trackers }}
{{// @color #34495E }}
{{// @icon 🛡️ }}
{{// @tooltip RPG Dashboard - stats, equipment, inventory, and status effects. }}
{{// @badge TRACKER }}

# RPG Dashboard

When to output: when stats, equipment, inventory, resources, or status effects change; otherwise every 2-3 turns if RPG tracking is central.

Track this information:
- Identity: name, class/title, level, role.
- Core resources: health, stamina/mana, wounds, fatigue, or setting equivalent.
- Attributes/skills that matter right now, not a full sheet every time.
- Equipment and inventory changes, including quantities for important items.
- Active conditions, buffs, debuffs, timers, encumbrance, or notable constraints.

Placement: bottom of the response after narrative.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::Tracker_CharacterSheet::Active}}
{{setvar::TrackerActive_CharacterSheet::Active}}
{{setvar::TrackerActive_Inventory::Active}}
{{trim}}
