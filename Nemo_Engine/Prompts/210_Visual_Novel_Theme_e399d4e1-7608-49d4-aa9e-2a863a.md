---
identifier: "e399d4e1-7608-49d4-aa9e-2a863a1f7f82"
name: "🎭 Visual Novel Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 210
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Tracker theme: visual novel status panel, route menu, affection UI. }}
{{// @color #DB2777 }}
{{// @icon 🎭 }}
{{// @badge THEME }}
{{// @mutual-exclusive-group Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::VisualNovel}}
{{setvar::TrackerThemeInstruction::TRACKER THEME: Visual Novel
- HTML/CSS render: stylize tracker HTML/CSS as a visual-novel status panel, route menu, affection screen, dialogue log, or save-menu overlay. Use polished panels, clear nameplates, route/flag language, soft but readable accents, and compact relationship/status rows. Avoid oversized anime splash art or clutter.
- Regex render: use <st-tracker-vn ...> instead of <st-tracker ...>. Example: <st-tracker-vn type="dating" title="Route Status" icon="🎭" accent="#DB2777"> ... </st-tracker-vn>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>VisualNovel</tracker_theme>
{{trim}}
