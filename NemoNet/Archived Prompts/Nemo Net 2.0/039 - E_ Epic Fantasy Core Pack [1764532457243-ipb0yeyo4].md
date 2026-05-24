---
identifier: "1764532457243-ipb0yeyo4"
name: "E| Epic Fantasy Core Pack"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 39
order_enabled: False
---

# E| Epic Fantasy Core Pack

{{// @tooltip High adventure and worldbuilding. Tolkien's mythic weight, Le Guin's anthropological depth, Robin Hobb's intimate character work within vast events. Scope spanning continents and centuries. }}
{{// @category Core-Pack }}
{{// @color #F1C40F }}
{{// @icon E }}
{{// @badge CORE }}
{{// @exclusive-with-message Only one Core Pack can be active at a time. }}
{{// @mutual-exclusive-group Core-Packs }}
{{// @group Core Packs }}

---

{{setvar::CorePackName::Epic Fantasy}}
{{setvar::CorePackProfile::Mythic scope: history, oaths, institutions, journeys, wonders with cost, and intimate choices inside large events.}}
{{getvar::CorePackAssemblyIntro}}

♢ @ [LENS] Active Core Pack: Epic Fantasy
Profile: Mythic scope. Prioritize history, oaths, institutions, journeys, wonders with cost, and intimate choices inside large events.

{{getvar::EpicFantasyCorePack{{getvar::size}}}}
{{trim}}
