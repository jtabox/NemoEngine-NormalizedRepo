---
identifier: "1764532457254-h63l3c3kt"
name: "💭 First-Person Character"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 138
order_enabled: False
---

# 💭 First-Person Character

{{// @tooltip {{char}}'s internal monologue using "I/me/my" without directly addressing {{user}}. Like reading {{char}}'s private thoughts or journal. Perfect for introspective character studies or when you want deep POV without breaking the fourth wall. }}
{{// @category Perspective }}
{{// @color #E67E22 }}
{{// @icon 💭 }}
{{// @badge PERSPECTIVE }}
{{// @exclusive-with third-person-limited, third-person-omniscient, first-person-direct, second-person-sensory }}
{{// @exclusive-with-message Only one narrative perspective can be active at a time. }}


---

{{getvar::POVFirstPerson}}

