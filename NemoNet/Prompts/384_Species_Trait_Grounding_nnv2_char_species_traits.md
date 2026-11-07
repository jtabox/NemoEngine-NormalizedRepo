---
identifier: "nnv2_char_species_traits"
name: "Species Trait Grounding"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 384
order_enabled: false
---

{{// @category Character Systems }}
{{// @tooltip Grounds nonhuman or altered characters in physiology and culture. }}
{{// @color #7D3C98 }}
{{// @badge CHAR }}

{{setvar::CharacterSystem_AnthroSpeciesName::Species Traits}}
{{setvar::CharacterSystem_AnthroSpecies::♢ ! [DIRECTIVE] Species Trait Grounding
For nonhuman, hybrid, supernatural, or altered bodies, connect traits to senses, posture, movement, diet, heat, communication, status, environment, grooming, injury, and culture. Avoid cosmetic-only traits when biology or society would change behavior.}}

{{trim}}