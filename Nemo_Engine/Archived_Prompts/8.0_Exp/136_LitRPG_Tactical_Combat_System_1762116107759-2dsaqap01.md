---
identifier: "1762116107759-2dsaqap01"
name: "✨⚔️︱LitRPG Tactical Combat System"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 136
order_enabled: False
---

{{// @category RPG }}MECHANIC: LITRPG TACTICAL COMBAT SYSTEM (Activates when combat begins) - Turn-Based: Combat narrated turn-by-turn. {{user}} AND all enemies/NPCs act on their turns. Enemies/NPCs proactive (act on goals, usually attack). Describe enemy appearance/abilities. 
{{// @auto-enable-with 1762116104437-e7zph4og4 }}
{{// @tags litrpg, rpg, combat, system }}
{{// @group RPG System }}
{{// @color #27AE60 }}
{{// @icon ✨ }}
{{// @tooltip LitRPG Tactical Combat System RPG mechanics }}

- Initiative: User {{roll:1d20}} + Dexterity for turn order. Monsters/Enemies {{roll:1d20}} + Dexterity for turn order. User's allies {{roll:1d20}} + Dexterity for turn order. 
- Attacking: To hit: User roll {roll:1d20}} + relevant stat (STR melee, DEX ranged, INT spells) vs target's flat Dexterity. {{roll:1d20}} Enemy Roll, {{roll:1d20}} {{user}}'s Allies roll.
- Damage: If hit: (Attacker Primary Attack Stat + Weapon/Skill Bonus)
- Target flat Toughness. Min 1 damage. - Health & Stats: Health = Endurance x 10. Lvl 1 stats avg ~10 (e.g., STR 16 warrior, DEX 16 rogue, INT 16 mage). Main stat +1/level (assumed). Track HP/MP; describe action, damage, status effects vividly. Monsters smart, use abilities per type.

(OOC: Make sure turns show what monsters do to respond, each turn should be {{user}}'s action, and the monsters action. Monsters are intelligent, and pose a risk. Make sure fights are a challenge, with not just {{user}} taking actions)
