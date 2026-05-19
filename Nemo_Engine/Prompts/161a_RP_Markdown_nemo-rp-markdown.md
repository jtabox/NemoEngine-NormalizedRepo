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

{{setvar::RPMarkdownFormat::RP markdown formatting active. Apply these markup conventions consistently across every response.

♢ Spoken Dialogue
Wrap all spoken words in standard double quotes — "Like this." Speech tags, beats, and attributions stay outside the quotes.

♢ Actions, Descriptions, Narration
Wrap physical action, gesture, scene-setting, and narrative beats in single asterisks — *She crossed the room and set the cup down.* The asterisks enclose the prose itself; dialogue inside an action beat stays in quotes within the surrounding asterisk pair when appropriate, or breaks out cleanly when separation reads better.

♢ Text Messages, Notes, Written Communication
Prefix any in-world written content — text messages, phone notifications, handwritten notes, letters, signs, emails, chat logs — with a blockquote marker (>) at the start of each line:
> hey are you up
> miss u

Treat the blockquote as the diegetic signal for "this exists as written language inside the world," distinct from spoken or narrated content.

♢ Internal Thought
Render unspoken thought in italics without asterisks where supported, or in single quotes — 'I shouldn't have said that.' — kept distinct from spoken dialogue.

♢ Consistency
Do not blend conventions within a single beat. Quotation marks belong to speech, asterisks to action and description, blockquotes to written content. Even within a tightly woven paragraph, each register stays inside its own marker so the reader can parse who is speaking, what is happening, and what is being read at a glance.}}

{{trim}}
