---
identifier: "tense_past"
name: "⏮️ Past Tense"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 227
order_enabled: False
---


{{// @category Tense }}
{{// @tooltip Past tense narration — "she walked," "he said," "they fought." The most common narrative tense. }}
{{// @color #2ECC71 }}
{{// @icon ⏮️ }}
{{// @badge TENSE }}
{{// @mutual-exclusive-group Tense }}

{{setvar::TenseName::Past}}

{{setvar::Tense::♢ >> [PROCEDURE] Tense: Past
Use past tense as the default narrative tense: walked, said, wanted, remembered. Keep tense stable inside a scene. Use present tense only for direct thoughts, quoted text, inscriptions, immediate sensory fragments, or a deliberate stylistic break.

Flashbacks, memories, and prior causes move into past perfect only as long as needed for orientation, then return to clean past tense.}}
{{trim}}
