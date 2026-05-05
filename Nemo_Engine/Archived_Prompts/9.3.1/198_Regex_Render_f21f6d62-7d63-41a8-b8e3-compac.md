---
identifier: "f21f6d62-7d63-41a8-b8e3-compact-regex-trackers"
name: "🧩 Regex Render"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 198
order_enabled: True
---

{{// @category Trackers }}
{{// @tooltip Optional low-token tracker render mode: active trackers output compact semantic tags rendered by regex. }}
{{// @color #64748B }}
{{// @icon 🧩 }}
{{// @badge REGEX }}
{{// @exclusive-with-category Tracker-Render }}
{{// @exclusive-with-message Only one tracker render mode can be active at a time. }}

{{setvar::TrackerRenderMode::Regex}}
{{setvar::TrackerRenderInstruction::RENDER MODE: REGEX
- Render the active tracker spec using compact semantic tags only. Regex will turn these into styled UI.
- If a tracker theme is enabled, follow its themed tag instruction, such as <st-tracker-parchment>, <st-tracker-scifi>, <st-tracker-terminal>, <st-tracker-phone>, <st-tracker-noir>, <st-tracker-occult>, <st-tracker-tactical>, <st-tracker-newsprint>, <st-tracker-cyberpunk>, <st-tracker-dossier>, or <st-tracker-vn>.
- If no theme is enabled, use the default tags:
<st-tracker type="scene" title="Scene" icon="🎭" accent="#64748B">
<st-row k="Label" v="short value"/>
<st-bar k="Meter" v="62" l="label"/>
<st-choice n="1">choice text</st-choice>
<st-tag t="Rare"/>
<st-map>small ASCII or box-drawn map</st-map>
</st-tracker>
- Use exact double-quoted attributes. Do not put quote marks inside attribute values.
- Clamp st-bar v to 0-100.
- No raw HTML/CSS, <style>, <script>, <details>, <div>, inline CSS, code fences, or HTML_START/HTML_END markers for trackers.}}
{{setvar::HTMLMarkers::COMPACT REGEX TRACKERS ACTIVE: active trackers output compact <st-tracker> or themed <st-tracker-*> syntax only. Do not output raw HTML/CSS or HTML_START/HTML_END markers for trackers. Display regex renders the visible UI; prompt-only regex strips older compact tracker blocks from context.}}

<tracker_render_mode>Regex</tracker_render_mode>
{{trim}}
