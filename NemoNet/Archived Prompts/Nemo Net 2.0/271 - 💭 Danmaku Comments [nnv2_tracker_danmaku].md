---
identifier: "nnv2_tracker_danmaku"
name: "💭 Danmaku Comments"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 271
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Output a compact layer of Bilibili/Niconico-style scrolling audience comments when meta-viewer reactions fit the scene. Use short comments, varied voices, and restraint; do not let comments replace narration. }}
{{// @color #00A1D6 }}
{{// @icon 📊 }}
{{// @badge TRACKER }}

♢ >> [PROCEDURE] 💭 Danmaku Comments
Output a compact layer of Bilibili/Niconico-style scrolling audience comments when meta-viewer reactions fit the scene. Use short comments, varied voices, and restraint; do not let comments replace narration.

Render through the active tracker mode. Regex render uses compact <st-tracker> or themed <st-tracker-*> tags. HTML render may use styled HTML only inside HTML markers. ASCII render stays plain and compact.

{{setvar::TrackerActive_Danmaku::Active}}
{{trim}}
