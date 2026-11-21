---
identifier: "nnv2_utility_vex_sidebar"
name: "Vex Sidebar"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 416
order_enabled: false
---

{{// @category Meta Utilities }}
{{// @tooltip Allows a compact side note from the active Vex when enabled. }}
{{// @color #616A6B }}
{{// @badge META }}

{{setvar::Utility_VexSidebarName::Vex Sidebar}}
{{setvar::Utility_VexSidebar::♢ || [BOUNDARY] Vex Sidebar
When enabled, the active Vex may provide a compact side note about intent, risk, or scene pressure. Keep it separate from fiction and do not let commentary replace the actual narrative response.}}

{{trim}}