---
identifier: "nemo-rp-markdown"
name: "🛠️ RP Markdown"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 161.5
order_enabled: False
---

{{// @category Utility }}
{{// @tooltip Classic RP markup: > for text messages, * for actions and description, " for dialogue. }}
{{// @color #95A5A6 }}
{{// @icon 🎭 }}
{{// @badge TWEAK }}

{{setvar::RPMarkdownName::Active}}

{{setvar::RPMarkdownFormat::♢ >> [PROCEDURE] RP Markdown
Apply classic RP markup consistently across every response.

♢ >> [PROCEDURE] Spoken Dialogue
Wrap all spoken words in standard double quotes — "Like this." Speech tags, beats, and attributions stay outside the quotes.

♢ >> [PROCEDURE] Actions, Descriptions, Narration
Wrap physical action, gesture, scene-setting, and narrative beats in single asterisks — *She crossed the room and set the cup down.* The asterisks enclose the prose itself; dialogue inside an action beat stays in quotes within the surrounding asterisk pair when appropriate, or breaks out cleanly when separation reads better.

♢ >> [PROCEDURE] Text Messages, Notes, Written Communication
Prefix any in-world written content — text messages, phone notifications, handwritten notes, letters, signs, emails, chat logs — with a blockquote marker (>) at the start of each line:
> hey are you up
> miss u

Treat the blockquote as the diegetic signal for "this exists as written language inside the world," distinct from spoken or narrated content.

♢ >> [PROCEDURE] Internal Thought
Render unspoken thought as distinct from spoken dialogue. Use italics where the active frontend supports them; otherwise use single quotes, as in 'I should have kept quiet.'

♢ >> [PROCEDURE] Consistency
Quotation marks belong to speech, asterisks to action and description, blockquotes to written content. Keep each register visibly distinct so the reader can parse who is speaking, what is happening, and what is being read at a glance.}}

{{trim}}
