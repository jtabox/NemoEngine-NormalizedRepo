---
identifier: "f7b7c4db-75d2-4bdb-98b8-5d8a759c0f7e"
name: "🖥️ HTML/CSS Render"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 196
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Default tracker render mode: model-designed HTML/CSS. }}
{{// @color #64748B }}
{{// @icon 🖥️ }}
{{// @badge DEFAULT }}
{{// @mutual-exclusive-group Tracker-Render }}
{{// @exclusive-with-message Only one tracker render mode can be active at a time. }}

{{setvar::TrackerRenderMode::HTMLCSS}}
{{setvar::TrackerThemeName::}}
{{setvar::TrackerThemeInstruction::}}
{{setvar::TrackerRenderInstruction::RENDER MODE: HTML/CSS (default)
- Render the active tracker spec as model-designed raw HTML/CSS.
- Use one coherent block per tracker unless the tracker specifically asks for a top header plus bottom panel.
- Wrap each HTML/CSS tracker block in <!-- HTML_START --> and <!-- HTML_END -->.
- Raw HTML only, no code fences.
- Match the story's genre and current scene; avoid generic frosted-glass dashboards, purple-blue SaaS cards, and copy-paste template energy.
- Keep tracker text concise and stateful; visual creativity belongs in the styling, not in bloated prose.}}
{{setvar::HTMLMarkers::Wrap tracker panels, styled divs, style blocks, details elements, and other non-font HTML/CSS in <!-- HTML_START --> and <!-- HTML_END --> markers. The markers go around ONLY the HTML/CSS block. Narrative prose stays outside the markers. Older marked HTML is stripped from context to save tokens.}}

<tracker_render_mode>HTMLCSS</tracker_render_mode>
{{trim}}
