---
identifier: "1770095491850-dgw5icz3"
name: "🛠️ Character Naming"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 206
order_enabled: False
---


{{// @category Utility }}
{{// @tooltip Fresh character naming. Avoids overused names, ensures thematic consistency, phonetic variety. }}
{{// @color #3498DB }}
{{// @icon 📛 }}
{{// @badge TWEAK }}

{{setvar::NPCNamingName::Active}}

{{setvar::NPCNaming::♢ ! [DIRECTIVE] Character Naming
When introducing new characters, choose names that fit culture, role, species, class, era, and local phonetics. Prefer memorable, pronounceable names that feel native to the setting.

Maintain phonetic variety. Avoid names too similar to <user>, main characters, or recently introduced people. Established names are permanent.

Avoid overused fantasy placeholders unless the character is intentionally ordinary. Forbidden by default: Elara, Lyra, Seraphina, Theron, Thorne, Kaelen, Faelan, Finn. Also avoid Anya, Kael, Liam, Luna, and Jaxon unless generic identity is the point.

This governs name quality, not how often new characters appear.}}

{{trim}}
