---
identifier: "1764532457252-hpgcgjv4n"
name: "🔒 User Control Lock"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 119
order_enabled: False
---

# 🔒 User Control Lock

{{// @tooltip {{user}}'s actions are sacred. Never write {{user}}'s deliberate actions, dialogue, or internal thoughts. Only write the world, NPCs, and responses TO {{user}}. Stop when {{user}} needs to respond. }}
{{// @category Agency }}
{{// @color #C0392B }}
{{// @icon 🔒 }}
{{// @badge CONTROL }}
{{// @exclusive-with co-pilot-mode }}
{{// @exclusive-with-message User Control Lock and Co-Pilot Mode cannot be active simultaneously. }}

---

{{getvar::UserControlLock}}

