---
identifier: "d0532876-712f-42ad-b8f5-03b2436bc8a8"
name: "🎖️ Tactical HUD Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 206
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Tracker theme: tactical HUD, mission board, squad readout. }}
{{// @color #4D7C0F }}
{{// @icon 🎖️ }}
{{// @badge THEME }}
{{// @exclusive-with-category Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::TacticalHUD}}
{{setvar::TrackerThemeInstruction::TRACKER THEME: Tactical HUD
- HTML/CSS render: stylize tracker HTML/CSS as a mission board, squad HUD, survival readout, combat objective list, or command overlay. Use hard corners, olive/black surfaces, caution yellow or lime accents, grid rules, status chips, and concise operational labels.
- Regex render: use <st-tracker-tactical ...> instead of <st-tracker ...>. Example: <st-tracker-tactical type="status" title="Mission" icon="🎖️" accent="#84CC16"> ... </st-tracker-tactical>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>TacticalHUD</tracker_theme>
{{trim}}
