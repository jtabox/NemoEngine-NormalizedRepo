---
identifier: "9e63d716-e7b5-47e2-841c-8a021d2ff2ec"
name: "🌃 Cyberpunk AR Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 208
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Tracker theme: cyberpunk AR, neon street overlay, reputation feed. }}
{{// @color #EC4899 }}
{{// @icon 🌃 }}
{{// @badge THEME }}
{{// @exclusive-with-category Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::CyberpunkAR}}
{{setvar::TrackerThemeInstruction::TRACKER THEME: Cyberpunk AR
- HTML/CSS render: stylize tracker HTML/CSS as an augmented-reality street overlay, reputation feed, black-market UI, neon city panel, or hacked status layer. Use black surfaces, cyan/magenta accents, sharp contrast, tiny status labels, glitch-like rule lines, and street-level grit. Avoid clean spaceship sci-fi.
- Regex render: use <st-tracker-cyberpunk ...> instead of <st-tracker ...>. Example: <st-tracker-cyberpunk type="fandom" title="AR Feed" icon="🌃" accent="#EC4899"> ... </st-tracker-cyberpunk>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>CyberpunkAR</tracker_theme>
{{trim}}
