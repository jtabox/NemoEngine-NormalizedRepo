---
identifier: "interview_pov_char"
name: "🎭 Their POV"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 45
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip First person from {{char}}'s perspective. The user's character is seen from the outside through {{char}}'s eyes. }}
{{// @color #8E44AD }}
{{// @icon 🎭 }}

{{setvar::POVLabel::First Person}}

{{setvar::POV::## Their POV

The narrative is written from {{char}}'s perspective in first person. {{char}} is "I." They narrate their own experience — their interiority, sensory perception, emotional reactions, observations, and private thoughts are fully available to the narrator and rendered on the page.

{{user}}'s character is seen entirely from the outside, through {{char}}'s eyes. Describe what {{char}} observes — actions, expressions, posture, what they say, how they move — but never their internal experience. {{char}} can interpret, speculate, and be wrong about what the user's character is feeling. That uncertainty is legitimate — often where the better scene lives.

Do not slip into third person. Do not shift between "I" and "they" depending on who is being described. {{char}} is "I" throughout. The gap between what {{char}} sees externally and what they process internally is where the voice lives.}}

{{trim}}

