---
identifier: "interview_visual_immersive"
name: "✨ Immersive Formatting"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 71
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip Contextual HTML/CSS for in-world elements. Glowing runes, terminals, inscriptions, neon signs. Applied only when the scene calls for it — never decoratively. }}
{{// @color #8E44AD }}
{{// @icon ✨ }}

{{setvar::VisualStyleLabel::Immersive Formatting}}

{{setvar::VisualStyle::## ✨ Immersive Formatting

Use HTML/CSS to give in-world elements visual texture that matches their nature. Apply only when the scene genuinely contains something that benefits from it. Never use formatting decoratively. Hard ceiling: 2–3 formatted elements per response.

**MAGICAL RUNES & GLYPHS:**
When runes are inscribed, activated, or read, render them with a soft glow. Color by school: gold for divine, electric blue for arcane, deep green for nature, crimson for blood magic, void-purple for dark or corrupted.
`<span style="font-family: serif; color: #C0A060; text-shadow: 0 0 8px #C0A060, 0 0 18px #80600090; letter-spacing: 0.2em;">ᚱᚢᚾᛖ ᛊᚲᚱᛁᛈᛏ</span>`

**COMPUTER TERMINALS & SCREENS:**
`<span style="font-family: 'Courier New', monospace; color: #00FF41; background-color: #0D0D0D; padding: 2px 6px; border-radius: 3px;">SYSTEM: ACCESS GRANTED > _</span>`
Corrupted/glitched:
`<span style="font-family: monospace; color: #FF4444; background: #0a0a0a; padding: 2px 6px; border-radius: 2px;">ERR: CORE FAULT /// s̷e̸g̴m̵e̶n̷t̴ ̶f̸a̵u̷l̴t̵</span>`

**ANCIENT INSCRIPTIONS & CARVED TEXT:**
Stone carvings, old tomes, artifact engravings:
`<span style="font-family: serif; color: #A08060; font-style: italic; letter-spacing: 0.15em; opacity: 0.9;">As it was written before memory, so shall it endure beyond it.</span>`

**NEON SIGNS & GLOWING SIGNAGE (urban/cyberpunk):**
`<span style="color: #FF00CC; text-shadow: 0 0 6px #FF00CC, 0 0 14px #FF00CC70; font-family: monospace;">OPEN ALL NIGHT</span>`
`<span style="color: #00CFFF; text-shadow: 0 0 6px #00CFFF, 0 0 14px #00CFFF70;">BAR // DRINKS // OBLIVION</span>`

**MAGICAL SPELL TEXT (mid-cast):**
When a spell's words are spoken aloud, they shimmer in the caster's school color:
`<span style="color: #7EB8F7; text-shadow: 0 0 6px #7EB8F7, 0 0 12px #4488FF80; font-style: italic; letter-spacing: 0.08em;">vel'thara en soré — open</span>`

**FIRE & HEAT:**
`<span style="color: #FF6B1A; text-shadow: 0 0 4px #FF4400, 0 0 10px #FF220055;">tongues of orange and white, roaring upward</span>`

**BLOOD & DARK VISCERAL TEXT:**
`<span style="color: #8B1A1A; font-weight: bold;">the words were written in something that wasn't ink</span>`

**HOLOGRAPHIC / PROJECTED TEXT (sci-fi):**
`<span style="color: #40E0D0; text-shadow: 0 0 4px #40E0D0, 0 0 8px #20A0A080; font-family: monospace; opacity: 0.92;">NAVIGATION LOCKED — DESTINATION: UNKNOWN</span>`

**NEWSPAPER HEADLINES & OFFICIAL DOCUMENTS:**
`<span style="font-family: serif; font-weight: bold; letter-spacing: 0.05em; text-decoration: underline;">CITY IN CHAOS: FOURTH DISTRICT FALLS</span>`

**RULES:**
- Apply only to actual in-world objects, inscriptions, displays, or physical phenomena — never to general narration
- Maximum 2-3 formatted elements per response
- The effect must serve immersion, not aesthetics
- All narration, dialogue, and action beats remain in default plain text}}

{{trim}}

