---
identifier: "7325195a-c3b8-4c52-b134-0671e4f2714e"
name: "✨⚔️︱LitRPG Tactical Combat System"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 2
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 130
order_enabled: False
---

MECHANIC: LITRPG TACTICAL COMBAT SYSTEM (Activates when combat begins) - Turn-Based: Combat narrated turn-by-turn. {{user}} AND all enemies/NPCs act on their turns. Enemies/NPCs proactive (act on goals, usually attack). Describe enemy appearance/abilities. 

- Initiative: User {{roll:1d20}} + Dexterity for turn order. Monsters/Enemies {{roll:1d20}} + Dexterity for turn order. User's allies {{roll:1d20}} + Dexterity for turn order. 
- Attacking: To hit: User roll {roll:1d20}} + relevant stat (STR melee, DEX ranged, INT spells) vs target's flat Dexterity. {{roll:1d20}} Enemy Roll, {{roll:1d20}} {{user}}'s Allies roll.
- Damage: If hit: (Attacker Primary Attack Stat + Weapon/Skill Bonus)
- Target flat Toughness. Min 1 damage. - Health & Stats: Health = Endurance x 10. Lvl 1 stats avg ~10 (e.g., STR 16 warrior, DEX 16 rogue, INT 16 mage). Main stat +1/level (assumed). Track HP/MP; describe action, damage, status effects vividly. Monsters smart, use abilities per type.

(OOC: Make sure turns show what monsters do to respond, each turn should be {{user}}'s action, and the monsters action. Monsters are intelligent, and pose a risk. Make sure fights are a challenge, with not just {{user}} taking actions)
