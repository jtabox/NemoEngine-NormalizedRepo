---
identifier: "0ced8cc6-85df-4dbe-a6c2-b7d90533a5e7"
name: "📰 Newsprint Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 207
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Tracker theme: newspaper clipping, bulletin, wanted notice. }}
{{// @color #525252 }}
{{// @icon 📰 }}
{{// @badge THEME }}
{{// @mutual-exclusive-group Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::Newsprint}}
{{setvar::TrackerThemeInstruction::TRACKER THEME: Newsprint
- HTML/CSS render: stylize tracker HTML/CSS as a newspaper clipping, bulletin notice, wanted poster, classified ad, or printed dispatch. Use grayscale ink, serif headlines, column-like rhythm, rule lines, slight paper texture, and compact report language.
- Regex render: use <st-tracker-newsprint ...> instead of <st-tracker ...>. Example: <st-tracker-newsprint type="news" title="Gazette" icon="📰" accent="#404040"> ... </st-tracker-newsprint>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>Newsprint</tracker_theme>
{{trim}}
