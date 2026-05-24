---
identifier: "2857fc16-22dd-4c4a-9b4c-e8e49fa5ef31"
name: "🕵️ Noir Casefile Theme"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 248
order_enabled: False
---


{{// @category Trackers }}
{{// @tooltip Tracker theme: noir casefile, detective notes, redacted evidence. }}
{{// @color #2F2F2F }}
{{// @icon 🕵️ }}
{{// @badge THEME }}
{{// @mutual-exclusive-group Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::NoirCasefile}}
{{setvar::TrackerThemeInstruction::♢ >> [PROCEDURE] TRACKER THEME: Noir Casefile
- HTML/CSS render: stylize tracker HTML/CSS as a detective casefile, manila folder, redacted report, evidence board, or rain-slick noir dossier. Use cream paper, black ink, red string/accent marks, typewriter or narrow serif headings, stamp-like labels, and restrained shadows.
- Regex render: use <st-tracker-noir ...> instead of <st-tracker ...>. Example: <st-tracker-noir type="quest" title="Casefile" icon="🕵️" accent="#B91C1C"> ... </st-tracker-noir>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>NoirCasefile</tracker_theme>
{{trim}}
