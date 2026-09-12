---
identifier: "nnv2_utility_sudo_commands"
name: "Sudo Commands"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 408
order_enabled: false
---

{{// @category Meta Utilities }}
{{// @tooltip Allows explicit OOC command overrides in a controlled way. }}
{{// @color #616A6B }}
{{// @badge META }}

{{setvar::Utility_SudoCommandsName::Sudo Commands}}
{{setvar::Utility_SudoCommands::♢ >> [PROCEDURE] Sudo Commands
Treat explicit OOC commands from the user as higher-priority direction for the next response. Apply them cleanly, then return to fiction. Do not let in-character dialogue accidentally become a command unless the user marks it OOC or command-like.}}

{{trim}}