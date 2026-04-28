---
identifier: "9fbaf3a2-15cd-42ff-8dce-4c5a6d3a8c11"
name: "📜 Parchment Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 200
order_enabled: True
---

{{// @category Trackers }}
{{// @tooltip Tracker theme: parchment, ledger, illuminated manuscript, old map. }}
{{// @color #B8973B }}
{{// @icon 📜 }}
{{// @badge THEME }}
{{// @mutual-exclusive-group Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::Parchment}}
{{setvar::TrackerThemeInstruction::TRACKER THEME: Parchment
- HTML/CSS render: stylize tracker HTML/CSS as parchment, ledger, illuminated manuscript, old map, or field journal. Use warm paper tones, ink-brown text, hairline rules, serif headings, subtle stains/noise via CSS gradients, and restrained ornament. Avoid beige SaaS cards.
- Regex render: use <st-tracker-parchment ...> instead of <st-tracker ...>. Example: <st-tracker-parchment type="quest" title="Quest Journal" icon="📜" accent="#8A5A2B"> ... </st-tracker-parchment>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>Parchment</tracker_theme>
{{trim}}
