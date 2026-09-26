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
order_in_preset: 159
order_enabled: False
---

{{// @category Utility }}
{{// @tooltip Render in-world objects as styled HTML — screens, phones, terminals, letters, signs, newspapers, maps, anything the character would see or interact with. }}
{{// @color #2C3E50 }}
{{// @icon 🖥️ }}
{{// @badge IMMERSIVE }}

♢ >> [PROCEDURE] Immersive World HTML
Render diegetic visual objects as standalone HTML/CSS when a character sees, reads, or interacts with them. Show the object at the point of contact in the scene.

Use this for phone screens, message apps, call logs, terminals, emails, documents, signs, notices, newspapers, broadcasts, maps, diagrams, magical inscriptions, sci-fi interfaces, security feeds, dashboards, and similar in-world artifacts.

Build the object with compact inline HTML/CSS. Match the artifact's own aesthetic: phone UI, terminal, handwritten note, newspaper, parchment, hologram, occult page, social post, tactical display. Use emoji icons only where they belong inside the artifact. The object should feel like a prop in the world, not a reusable status dashboard.

Wrap the standalone block in HTML markers. Keep story prose outside the markers. If the object contains plot-critical information, let the prose around the block acknowledge the important beat so context survives after old HTML is stripped. Do not hide essential story state only inside HTML.

Keep scale proportional. A text message is small. A full terminal or map can be larger. Use one object block unless the scene genuinely contains multiple separate artifacts. The HTML supports immersion; it should not drown the surrounding prose.

Use CSS motion only for things that visibly move or blink in-world: cursors, notifications, scanner lines, loading indicators, flickering holograms.}}{{trim}}
