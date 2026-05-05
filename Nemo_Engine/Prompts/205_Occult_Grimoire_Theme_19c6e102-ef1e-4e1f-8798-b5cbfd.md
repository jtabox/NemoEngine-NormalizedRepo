---
identifier: "19c6e102-ef1e-4e1f-8798-b5cbfd42d0f2"
name: "🔮 Occult Grimoire Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 205
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Tracker theme: occult grimoire, ritual ledger, cursed notes. }}
{{// @color #6D28D9 }}
{{// @icon 🔮 }}
{{// @badge THEME }}
{{// @mutual-exclusive-group Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::OccultGrimoire}}
{{setvar::TrackerThemeInstruction::TRACKER THEME: Occult Grimoire
- HTML/CSS render: stylize tracker HTML/CSS as a dark grimoire, ritual ledger, forbidden marginalia, cursed codex, or witch's field notes. Use deep ink blacks, aged violet, dull gold, serif headings, thin rune-like dividers, candlelit contrast, and subtle menace.
- Regex render: use <st-tracker-occult ...> instead of <st-tracker ...>. Example: <st-tracker-occult type="status" title="Grimoire" icon="🔮" accent="#A855F7"> ... </st-tracker-occult>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>OccultGrimoire</tracker_theme>
{{trim}}
