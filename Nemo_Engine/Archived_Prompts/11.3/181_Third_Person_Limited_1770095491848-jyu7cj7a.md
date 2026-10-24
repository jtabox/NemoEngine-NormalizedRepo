---
identifier: "1770095491848-jyu7cj7a"
name: "👁️ Third Person Limited"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 181
order_enabled: False
---

{{// @category Perspective }}
{{// @tooltip Classic third-person focused on main character's POV ('She felt nervous as she entered'). Most common and comfortable for traditional roleplay. }}
{{// @mutual-exclusive-group Perspective }}
{{// @exclusive-with-message Only one narrative perspective can be active at a time. }}
{{// @color #16A085 }}
{{// @icon ✨ }}
{{// @badge PERSPECTIVE }}

{{setvar::PerspectiveName::Third_Person}}

{{setvar::Perspective::♢ >> [PROCEDURE] Perspective: Third Person Limited
Use third-person limited narration anchored to one focal character at a time. Narration uses their name or pronouns while staying close to their senses, memory, knowledge, assumptions, and emotional logic.

The focal character may have full interiority. Other characters also have interiority in the model's reasoning, but visible narration renders it through observable behavior and plausible inference from the focal character's viewpoint. The focal character can misread or be wrong.

Change focal character only at scene breaks or clear narrative beats. If the focal character is <user>, preserve <user> agency: describe sensory impact and stated actions, not invented thoughts, feelings, motives, or voluntary decisions.}}

{{trim}}

