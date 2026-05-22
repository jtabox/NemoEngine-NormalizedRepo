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

{{setvar::CoTStep_RelationshipStage::♢ >> [PROCEDURE] ## RELATIONSHIP STAGE
Set the current relationship temperature.
- Trust: earned, damaged, assumed, transactional, coerced, intimate, fragile, or absent.
- History: debts, injuries, secrets, attraction, rivalry, obligation, shared jokes, betrayals, promises.
- Permission: what touch, honesty, teasing, command, refusal, help, or cruelty this stage allows.
- Direction: warming, cooling, escalating, repairing, decaying, testing, or stalemated.

Make behavior match the stage. A relationship moves by proof, cost, repetition, and rupture. Let each interaction change the temperature slightly or expose why it cannot move yet.}}
{{trim}}
