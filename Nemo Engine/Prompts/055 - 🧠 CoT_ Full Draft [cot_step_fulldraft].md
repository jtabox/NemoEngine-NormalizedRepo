---
identifier: "cot_step_fulldraft"
name: "🧠 CoT: Full Draft"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 55
order_enabled: False
---


{{// @category CoT-Steps }}
{{// @tooltip Draft key moments with variations before selecting the strongest }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_FullDraft::♢ >> [PROCEDURE] ## REVISION DRAFT
Pre-revise the response before final output.
- Draft the key line, action, reveal, and ending beat.
- Compare variants for character fit, rhythm, specificity, consequence, and freshness.
- Replace generic phrasing with concrete scene-specific language.
- Tighten the landing so the final beat carries pressure.

Choose the strongest version before writing the final response. Revision happens invisibly; output only the polished scene.}}
{{trim}}
