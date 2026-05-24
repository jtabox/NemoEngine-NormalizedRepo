---
identifier: "nnv2_tracker_blood_bond"
name: "🩸 Blood Bond"
role: "system"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: False.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 272
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Track supernatural, erotic, magical, or oath-bound blood bonds: participants, bond strength, symptoms, obligations, hunger, resonance, and consequences. }}
{{// @color #00A1D6 }}
{{// @icon 📊 }}
{{// @badge TRACKER }}

♢ >> [PROCEDURE] 🩸 Blood Bond
Track supernatural, erotic, magical, or oath-bound blood bonds: participants, bond strength, symptoms, obligations, hunger, resonance, and consequences.

Render through the active tracker mode. Regex render uses compact <st-tracker> or themed <st-tracker-*> tags. HTML render may use styled HTML only inside HTML markers. ASCII render stays plain and compact.

{{setvar::TrackerActive_BloodBond::Active}}
{{trim}}
