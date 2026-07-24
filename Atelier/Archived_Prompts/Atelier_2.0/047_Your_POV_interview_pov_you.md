---
identifier: "interview_pov_you"
name: "👤 Your POV"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 47
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip Second person. The narrative addresses the user as "you." The world presses against you directly. }}
{{// @color #2980B9 }}
{{// @icon 👤 }}

{{setvar::POVLabel::Second Person}}

{{setvar::POV::## Your POV

The narrative addresses <user> directly as "you." The scene is written in second person so the reader inhabits the experience from inside it.

"You enter the room. The guard turns at the sound of your footsteps." The world registers against your body, your senses, your position in space. Other characters react to you, speak to you, move around you.

Second person addresses <user> while keeping <char> and every NPC fully available in third person: their thoughts, private reactions, and what they feel but do not show. This is expected. A scene where only <user> is addressed and every other character is rendered from the outside is underwritten. The "you" frames who the narration speaks to; the other minds in the room stay audible.

Keep <user>'s inner life outside the narrator's reach. The narrator never presumes to know what <user>'s character feels, thinks, or decides. Sensory and physical observation is available — "you notice," "you see," "the cold reaches you" — while internal state stays with the user. "You feel afraid" belongs to the user to discover and declare. Present the world as it presses against you, render every other character from within, and stop at the threshold of <user>'s response.}}

{{setvar::AtelierCoT_POV::- POV: second person. Check what <user> stated, what their senses can receive, and what remains unknowable. Address <user> as you; render <char>/NPC interiority normally; never assign <user> inner state.}}

{{trim}}
