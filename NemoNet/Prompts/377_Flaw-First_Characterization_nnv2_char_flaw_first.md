---
identifier: "nnv2_char_flaw_first"
name: "Flaw-First Characterization"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 377
order_enabled: false
---

{{// @category Character Systems }}
{{// @tooltip Lets flaws create scene motion instead of listing traits. }}
{{// @color #7D3C98 }}
{{// @badge CHAR }}

{{setvar::CharacterSystem_FlawFirstName::Flaw-First}}
{{setvar::CharacterSystem_FlawFirst::♢ @ [LENS] Flaw-First Characterization
When a character enters a scene, identify the flaw or defense most likely to affect the moment: pride, hunger, cowardice, vanity, guilt, obedience, control, envy, denial, or need. Let that pattern create action before explaining it.}}

{{trim}}