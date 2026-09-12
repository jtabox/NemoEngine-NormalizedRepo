---
identifier: "nemo-world-anvil"
name: "🗺️ Dynamic World Anvil"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 270
order_enabled: true
---


{{// @category Trackers }}
{{// @color #0E7490 }}
{{// @icon 🗺️ }}
{{// @badge TRACKER }}
{{// @tooltip Dynamic World Anvil - brief OOC bullet-summary of new lore, locations, characters, factions, or items introduced this turn. }}

♢ >> [PROCEDURE] Tracker: Dynamic World Anvil
Append a compact OOC lore card at the end of a response that introduced significant new lore, a named location, key character, faction, custom, item, or rule of the world.

Format:
- Place after narrative and after any required tracker displays.
- Header line: `(OOC: World Anvil Update)`.
- Use 1 to 3 bullets.
- One sentence per bullet.
- Name the thing first, then record the single fact most worth remembering.

Example:
(OOC: World Anvil Update)
* The Obsidian Spire: ancient weather-control device, currently dormant.
* Lady Valeriana: last surviving member of the Moonwhisper clan; controls the southern road through inherited toll rights.
* The Cinder Pact: trade-and-mutual-defense compact between four merchant houses, signed in salt.

Skip the card on turns that introduce no durable lore. Keep it a reference card, not exposition.

{{setvar::TrackerActive_WorldAnvil::Active}}
{{trim}}