---
identifier: "tracker_light_mode"
name: "☀️ Light Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 199
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Tracker theme: clean light paper surfaces for HTML/CSS, or light generic regex cards. }}
{{// @color #F5F5F5 }}
{{// @icon ☀️ }}
{{// @badge THEME }}
{{// @exclusive-with-category Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::Light}}
{{setvar::TrackerThemeInstruction::TRACKER THEME: Light
- HTML/CSS render: stylize tracker HTML/CSS with clean light paper surfaces, dark readable text, subtle gray shadows, thin dividers, and muted accents. Keep it crisp rather than cute.
- Regex render: use the generic light regex tag shape with theme="light": <st-tracker theme="light" type="scene" title="Scene" icon="🎭" accent="#64748B"> ... </st-tracker>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>Light</tracker_theme>
{{trim}}
