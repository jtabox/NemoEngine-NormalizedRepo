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
{{// @tooltip RPG Dashboard - identity, attributes, skills, equipment, inventory, conditions, and currency. Living character sheet. }}
{{// @badge TRACKER }}

# RPG Dashboard

When to output: when stats, equipment, inventory, resources, skills, or status effects change. Otherwise once every 2 to 3 turns if RPG mechanics are central; skip if the scene is purely social.

Track this information:

Identity panel:
- {{user}}'s in-character name, class or title, level (number plus tier label like "Apprentice", "Veteran", "Legendary"), and role within the current party or faction.
- Optional ASCII or emoji portrait if a render mode that supports it is active. Keep it small and class-flavoured.

Core attributes (use the system the world expects - D&D-style STR/DEX/CON/INT/WIS/CHA, FATE aspects, World of Darkness traits, Pathfinder, custom Vex setting, etc.):
- Show 4 to 6 attributes that matter right now, with current value and a 0-to-100 meter or numeric range appropriate to the system.
- Note any temporary modifiers (e.g., "STR 18 (+2 from Berserker)").

Skills and abilities:
- 4 to 8 skills relevant to the current scene, with mastery tier (Untrained, Novice, Skilled, Expert, Master) or experience meter.
- Highlight any skill being tested this turn.

Equipment:
- Slot list: weapon, off-hand, armor, accessory 1, accessory 2, focus or class-specific slot. Mark empty slots clearly.
- Each equipped item shows name, rarity tier, and one-line effect or signature trait.

Inventory by category:
- Weapons and tools, Consumables, Treasures and valuables, Quest items, Miscellaneous. Skip empty categories.
- Each item: name, quantity, rarity tier, weight or carry cost when encumbrance matters.
- Rarity ladder: Common, Uncommon, Rare, Epic, Legendary, Artifact, Mythic. Use the same words consistently.

Resources and conditions:
- Health, stamina or mana, wounds, fatigue, or setting equivalents - with current / max and a meter.
- Active buffs, debuffs, status effects, timers (e.g., "Poisoned 3 turns left", "Blessed +2 WIL"), encumbrance state.
- Currency: gold, credits, favor, bottle caps, soul shards - whatever the setting uses.

Update philosophy:
- Only show what changed or is currently relevant. Do not dump the entire sheet every turn.
- When something changes, surface it visibly (new item flagged, tier-up highlighted, condition expiring soon emphasized).

Regex tags:
- <st-row k="Class" v="Knight Errant, Lv 7"/> for identity lines.
- <st-bar k="HP" v="62" l="62/100"/> for resources and attributes.
- <st-tag t="Rare"/> for rarity badges, <st-tag t="Poisoned 3T"/> for conditions.
- Group equipment and each inventory category in nested <st-tracker type="slot" title="Weapon">...</st-tracker> when the theme supports nesting.

Placement: bottom of the response after narrative.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::Tracker_CharacterSheet::Active}}
{{setvar::TrackerActive_CharacterSheet::Active}}
{{setvar::TrackerActive_Inventory::Active}}
{{trim}}
