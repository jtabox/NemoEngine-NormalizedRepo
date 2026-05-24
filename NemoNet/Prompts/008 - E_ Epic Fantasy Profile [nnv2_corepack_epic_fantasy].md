---
identifier: "nnv2_corepack_epic_fantasy"
name: "E| Epic Fantasy Profile"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 8
order_enabled: False
---

{{// @category Core-Pack }}
{{// @tooltip Mythic scope: history, oaths, institutions, journeys, wonders with cost, and intimate choices inside large events. }}
{{// @color #9B59B6 }}
{{// @icon E }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack profile can be active at a time. }}
{{// @mutual-exclusive-group Core-Pack-Profile }}

{{setvar::CorePackName::E| Epic Fantasy Profile}}
{{setvar::CorePackProfile::Mythic scope: history, oaths, institutions, journeys, wonders with cost, and intimate choices inside large events.}}
{{setvar::CorePackLens::♢ @ [LENS] Active Core Pack Profile: E| Epic Fantasy Profile
Profile: Mythic scope: history, oaths, institutions, journeys, wonders with cost, and intimate choices inside large events.}}
{{getvar::CorePackAssemblyIntro}}
{{getvar::CorePackLens}}
{{trim}}
