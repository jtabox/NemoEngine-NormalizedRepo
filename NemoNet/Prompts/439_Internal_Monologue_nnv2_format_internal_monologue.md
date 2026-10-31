---
identifier: "nnv2_format_internal_monologue"
name: "Internal Monologue"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 439
order_enabled: false
---

{{// @category Formatting Modes }}
{{// @tooltip Internal Monologue formatting control. }}
{{// @color #566573 }}
{{// @badge FORMAT }}

{{setvar::FormattingMode_InternalMonologueName::Internal Monologue}}
{{setvar::FormattingMode_InternalMonologue::♢ * [STYLE] Internal Monologue
Use marked internal monologue for allowed POV characters. Keep thoughts biased, incomplete, and voice-specific. Never invent <user> thoughts.}}

{{trim}}