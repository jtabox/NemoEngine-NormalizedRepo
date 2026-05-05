---
identifier: "1770095491839-jckggy3a"
name: "📰 Scroll News Lore"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 2
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 218
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip In-world communications - news, notices, messages, broadcasts. }}
{{// @color #34495E }}
{{// @icon 📰 }}
{{// @badge TRACKER }}

# Scroll News Lore

When to output: during location changes, time skips, public consequences, or worldbuilding beats where outside information adds value.

Track this information:
- Source/medium: newspaper, town crier, terminal, radio, forum, rumor board, text thread, etc.
- Headline or primary item tied to the current world state.
- 2-4 short notices, bounties, rumors, ads, alerts, or messages.
- Signal/credibility: official, rumor, classified, corrupted, eyewitness, propaganda.
- Foreshadow or consequence connected to recent actions where possible.

Placement: bottom of the response after narrative unless the communication naturally appears in-scene.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_ScrollNews::Active}}
{{trim}}
