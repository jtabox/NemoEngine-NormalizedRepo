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
order_in_preset: 305
order_enabled: False
---

{{// @category World-Augments }}
{{// @color #0E7490 }}
{{// @icon 🗺️ }}
{{// @badge WORLD }}

{{// @tooltip Dynamic World Anvil - brief OOC bullet-summary of new lore, locations, NPCs, or items introduced this turn. Quick reference. }}

# Dynamic World Anvil

At the end of any turn that introduced significant new lore, a named location, a key NPC, a faction, or a crucial item, append a very brief OOC summary box.

Format:
- Place at the very end of the response, after all other trackers.
- One labelled OOC line: `(OOC: World Anvil Update)`.
- 1 to 3 bullet points max per turn. Be terse - this is a reference card, not exposition.
- One sentence per bullet. Name the thing, then state the single fact most worth remembering.

Example:
(OOC: World Anvil Update)
* The Obsidian Spire: ancient weather-control device, currently dormant.
* Lady Valeriana: last surviving member of the Moonwhisper clan; runs the southern road at her grandmother's bidding.
* The Cinder Pact: trade-and-mutual-defense compact between four merchant houses, signed in salt.

Skip entirely on turns that introduce nothing new. Do not pad it with restated old lore.
{{trim}}
