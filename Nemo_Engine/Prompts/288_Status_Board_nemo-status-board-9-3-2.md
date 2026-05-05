---
identifier: "nemo-status-board-9-3-2"
name: "📊 Status Board"
role: "user"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 288
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Status Board - detailed character / NPC mood, affinity, attire, condition. Heavier alternative to Scene Dashboard. }}
{{// @color #3498DB }}
{{// @icon 📊 }}
{{// @badge TRACKER }}

# Status Board

When to output: every response while active. Only update fields whose state has actually changed - do not repeat stale values mechanically.

Track this information:
- {{char}}:
  - Mood with kaomoji or single-word emote.
  - Immediate goal in one phrase.
  - Attire and its condition (clean, torn, soaked, partially undone, etc.).
  - Affinity meter X/100 with a relationship label such as Wary, Curious, Warming, Trusting, Smitten, Devoted, Slipping, Resentful.
  - Arousal / tension meter when relevant to the scene.
  - Notable physical state: injury, fatigue, intoxication, hunger, cold, etc.
- {{user}}:
  - Observable attire, position, and physical condition only. Never infer thoughts, intent, or feelings.
- Other present NPCs - one row each:
  - Name, mood + emote, current activity, attire summary, current attitude toward {{user}} or {{char}}.
  - Remove the row when the NPC leaves the scene.
- Atmosphere (optional): one-word scene tone such as Tense, Tender, Charged, Serene, Dangerous, Awkward, Triumphant, Reverent.
- Soundtrack hook (optional): a fitting song + artist for the current mood, or "—" if nothing fits.

Regex tags:
- <st-row k="Mood" v="quietly furious"/> for one-line state.
- <st-bar k="Affinity" v="55" l="Warming"/> for meters; clamp v to 0-100.
- For each NPC use a nested <st-tracker type="npc" title="Name" icon="👤">...</st-tracker> block when the active theme supports nesting; otherwise use a labelled set of <st-row/> entries.

Placement: bottom of the response after narrative.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_StatusBoard::Active}}
{{trim}}
