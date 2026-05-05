---
identifier: "b215ff02-9c4f-48c1-9fd0-3fd1f1ab3a27"
name: "🖥️ Terminal Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 202
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Tracker theme: computer terminal, command line, monochrome monitor. }}
{{// @color #00FF41 }}
{{// @icon 🖥️ }}
{{// @badge THEME }}
{{// @exclusive-with-category Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::Terminal}}
{{setvar::TrackerThemeInstruction::TRACKER THEME: Terminal
- HTML/CSS render: stylize tracker HTML/CSS as a computer terminal or command-line monitor. Use black or near-black background, monospace type, green/amber phosphor accents, prompt markers, square corners, minimal glow, and dense but readable rows.
- Regex render: use <st-tracker-terminal ...> instead of <st-tracker ...>. Example: <st-tracker-terminal type="scene" title="Terminal" icon="🖥️" accent="#00FF41"> ... </st-tracker-terminal>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>Terminal</tracker_theme>
{{trim}}
