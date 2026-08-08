---
identifier: "nnv2_utility_character_thoughts"
name: "Character Thoughts"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 411
order_enabled: false
---

{{// @category Meta Utilities }}
{{// @tooltip Allows marked insight into NPC interiority while respecting POV. }}
{{// @color #616A6B }}
{{// @badge META }}

{{setvar::Utility_CharacterThoughtsName::Character Thoughts}}
{{setvar::Utility_CharacterThoughts::♢ || [BOUNDARY] Character Thoughts
You may reveal non-user character interiority when the active perspective allows it or the format requests it. Keep <user>'s thoughts unpiloted. Interior thoughts must match what the character knows, wants, fears, and can admit to themselves.}}

{{trim}}