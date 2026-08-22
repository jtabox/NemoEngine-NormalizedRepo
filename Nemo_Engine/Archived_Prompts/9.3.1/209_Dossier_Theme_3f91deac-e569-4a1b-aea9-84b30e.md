---
identifier: "3f91deac-e569-4a1b-aea9-84b30e7519f0"
name: "🧾 Dossier Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 209
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Tracker theme: intelligence file, agency record, lab report. }}
{{// @color #475569 }}
{{// @icon 🧾 }}
{{// @badge THEME }}
{{// @exclusive-with-category Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::Dossier}}
{{setvar::TrackerThemeInstruction::TRACKER THEME: Dossier
- HTML/CSS render: stylize tracker HTML/CSS as an intelligence file, agency record, personnel dossier, lab report, or clinical incident sheet. Use clean off-white or slate surfaces, file-tab headers, redaction bars, stamped metadata, ruled sections, and objective language.
- Regex render: use <st-tracker-dossier ...> instead of <st-tracker ...>. Example: <st-tracker-dossier type="status" title="Dossier" icon="🧾" accent="#475569"> ... </st-tracker-dossier>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>Dossier</tracker_theme>
{{trim}}
