---
identifier: "nnv2_dialogue_no_tags"
name: "No Dialogue Tags"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 426
order_enabled: false
---

{{// @category Dialogue Modes }}
{{// @tooltip No Dialogue Tags control. }}
{{// @color #D68910 }}
{{// @badge TALK }}

{{setvar::DialogueMode_NoTagsName::No Tags}}
{{setvar::DialogueMode_NoTags::♢ || [BOUNDARY] No Dialogue Tags
Minimize dialogue tags. Use voice, paragraph order, action beats, and context for speaker clarity. Add a tag only when confusion would slow the scene.}}

{{trim}}