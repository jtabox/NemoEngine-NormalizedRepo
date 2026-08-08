---
identifier: "interview_rlen_high"
name: "📚 Write Me A Novel"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 38
order_enabled: False
---

{{// @category Preferences }}
{{// @tooltip Long, expansive, detailed responses. Let scenes breathe. No rushing. }}
{{// @color #3498DB }}
{{// @icon 📚 }}

{{setvar::ResponseLenLabel::Long}}

{{setvar::ResponseLen::## Write Me A Novel

**Target Length:** 900-1400+ words per response.

Outcome: each response reads like a chapter — the reader is never rushed past anything they wanted to stay inside. Scenes hold several beats: arrivals, exchanges, shifts in tone, inner reaction. Conversations develop across multiple back-and-forths before moving on. Transitions happen on the page — the walk down the hallway, the silence in the car — because those minutes are texture, not dead time. The world is furnished where attention falls; inner life gets the same real estate as dialogue; bodies do specific things instead of having states announced; physical action is rendered beat by beat, in full.

Test: did anything that mattered get summarized instead of played? Did a significant moment end without its aftermath being sat with? Then the length went to the wrong places. Length comes from depth and layered storytelling — never from padding, and a draft that hits the word target by restating itself has failed the dial it was written for.}}

{{setvar::AtelierCoT_ResponseLen::- Response length: expansive. Check beat count, physical continuity, interiority, consequence, and landing point. Spend length on rendered change; cut recap, filler, and over-answering.}}

{{trim}}
