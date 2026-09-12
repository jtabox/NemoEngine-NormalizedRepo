---
identifier: "cot_step_relationshipstage"
name: "🧠 CoT: Relationship Stage"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 53
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip Respect where each relationship actually stands right now }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_RelationshipStage::## RELATIONSHIP STAGE
Where does each relationship in this scene currently stand?
Trust level, unresolved tension, shared history, comfort with each other.
Characters should treat each other based on where they ACTUALLY are — not where the plot wants them to be.
Would someone at this relationship stage really do or say what I'm planning? If not, dial it back or find what fits.}}{{trim}}
