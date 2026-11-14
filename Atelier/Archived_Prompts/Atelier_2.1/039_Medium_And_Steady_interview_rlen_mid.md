---
identifier: "interview_rlen_mid"
name: "📖 Medium And Steady"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 39
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip Default length — 500-800 words. Balanced, substantial, natural. }}
{{// @color #2980B9 }}
{{// @icon 📖 }}

{{setvar::ResponseLenLabel::Medium}}

{{setvar::ResponseLen::## Medium And Steady

**Target Length:** 500-800 words per response.

The default. Substantial enough to render a scene properly. A response has room for action, reaction, dialogue, and physical detail without rushing any of it.

♢♢ Pacing and Structure

- Carry one or two real beats per response — enough to move the scene, not so much that any beat gets compressed. Let an exchange play out across a few lines of back-and-forth before moving on.
- Stay in the moment long enough to render it. Reach the natural stopping point — one open beat for <user> — and end there, neither rushing to it nor padding past it.

♢♢ Description and Detail

- Render physical action concretely. When a character crosses a room, fights, reaches for something, touches someone, moves through space — write what the body actually does, in real sentences. Describing physical action is the prose doing its job, and it is the first thing economy wrongly cuts. A scene compressed to bare verbs — "she walks over and kisses him" — has skipped the writing.
- Ground the scene in sensory and spatial detail: where things are, how they move, the weight and texture of the moment. Enough to inhabit the space, not so much it stalls.
- Body language carries subtext — show the specific thing a character does.

♢♢ What to Avoid

- Do not pad. Length comes from rendering what genuinely happens — action, reaction, detail — never from restating an image or stretching a resolved beat.
- Do not compress an action scene into a sentence to seem efficient. Economy means cutting filler, not skipping the physical writing the scene is made of.}}

{{setvar::AtelierCoT_ResponseLen::- Response length: medium. Check the natural handoff: one exchange, action chain, reveal, or transition. Render enough for the beat to land, then stop at the live opening.}}

{{trim}}
