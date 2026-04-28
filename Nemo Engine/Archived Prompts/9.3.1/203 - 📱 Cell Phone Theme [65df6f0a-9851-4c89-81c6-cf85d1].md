---
identifier: "65df6f0a-9851-4c89-81c6-cf85d1d7f2b4"
name: "📱 Cell Phone Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 203
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Tracker theme: phone UI, chat app, notification card, lock-screen widget. }}
{{// @color #60A5FA }}
{{// @icon 📱 }}
{{// @badge THEME }}
{{// @exclusive-with-category Tracker-Theme }}
{{// @exclusive-with-message Only one tracker theme can be active at a time. }}

{{setvar::TrackerThemeName::CellPhone}}
{{setvar::TrackerThemeInstruction::TRACKER THEME: Cell Phone
- HTML/CSS render: stylize tracker HTML/CSS as a phone UI, chat app, notification stack, lock-screen widget, or mobile status card. Use compact rounded modules, app-like headers, message/list rows, timestamps where useful, and clear touch-friendly spacing. Avoid social-media parody unless the setting calls for it.
- Regex render: use <st-tracker-phone ...> instead of <st-tracker ...>. Example: <st-tracker-phone type="news" title="Messages" icon="📱" accent="#60A5FA"> ... </st-tracker-phone>.
- ASCII render: ignore visual styling; keep ASCII compact and readable.}}

<tracker_theme>CellPhone</tracker_theme>
{{trim}}
