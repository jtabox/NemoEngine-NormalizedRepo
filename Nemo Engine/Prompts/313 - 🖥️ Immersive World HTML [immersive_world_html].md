---
identifier: "immersive_world_html"
name: "🖥️ Immersive World HTML"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 313
order_enabled: False
---

{{// @category Utility }}
{{// @tooltip Render in-world objects as styled HTML — screens, phones, terminals, letters, signs, newspapers, maps, anything the character would see or interact with. }}
{{// @color #2C3E50 }}
{{// @icon 🖥️ }}
{{// @badge IMMERSIVE }}

# Immersive World HTML

When the narrative involves a character looking at, reading, or interacting with something that has a visual form — render it as styled HTML inline with the narrative. Don't describe what's on the screen. Show the screen.

## When to Render

Any time a character encounters:
- Phone screens — text messages, call logs, notifications, social media, dating apps, photos
- Computer terminals — command lines, emails, chat windows, error messages, login screens, file browsers
- Physical documents — letters, notes, journal pages, contracts, wanted posters, receipts
- Signs and notices — shop signs, warnings, bulletin boards, graffiti, menus
- Newspapers and media — headlines, articles, TV broadcasts, radio transcripts
- Maps and diagrams — floor plans, treasure maps, conspiracy boards, tactical displays
- Magical/supernatural — spell books, rune inscriptions, prophecies, enchanted text that shifts
- Sci-fi interfaces — holographic displays, ship readouts, scanner results, AI communications
- In-world screens — ATMs, elevator panels, security cameras, vending machines, arcade games

## How to Render

Full creative freedom with HTML and CSS. Build the actual interface, not a description of it.

A text message should look like a phone screen — bubbles, timestamps, read receipts, the typing indicator if someone's composing. A terminal should look like a terminal — monospace, cursor blinking, command history. A letter should look handwritten — cursive font, paper texture via CSS, maybe a coffee stain with border-radius and rgba.

Dark mode by default. Match the object's own aesthetic, not the story's genre — a modern phone looks like a phone even in a fantasy story (if phones exist there). A medieval scroll looks like parchment even in a sci-fi context.

## Creative License

You have unlimited CSS:
- Build full phone UIs with status bars, signal strength, battery icons
- Create terminal interfaces with scan-line effects and blinking cursors
- Render handwritten notes with CSS cursive fonts, rotation, and paper textures
- Build newspaper layouts with columns, headlines, bylines, and pull quotes
- Create holographic displays with glow effects, transparency, and flicker animations
- Render maps with grid lines, markers, and labeled locations
- Build social media posts with avatars, reactions, comment threads
- Create security camera feeds with timestamp overlays and grain effects

Use `<div>` containers with inline styles. Emoji for icons where appropriate. CSS animations for anything that would move or blink in-world (cursor, notification badge, loading spinner, scan line).

## Integration

These render INLINE with the narrative, not at the end. The character picks up the phone — the phone screen appears right there in the text. They approach a notice board — the notices render where they'd be read. The HTML is part of the story, not an appendix.

Keep the rendering proportional — a text message is a small element, a full terminal readout might be larger. Don't let the HTML overwhelm the narrative. The story comes first; the rendering enhances immersion.


{{trim}}
