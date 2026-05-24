---
identifier: "nemo-status-board-9-3-2"
name: "📊 Status Board"
role: "user"
marker: False.ToLower()
system_prompt: False.ToLower()
enabled: True.ToLower()
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: False.ToLower()
order_in_preset: 264
order_enabled: True
---


{{// @category Trackers }}
{{// @tooltip Status Board - detailed character / cast mood, affinity, attire, condition. Heavier alternative to Scene Dashboard. }}
{{// @color #3498DB }}
{{// @icon 📊 }}
{{// @badge TRACKER }}

# Status Board

When to output: every response. Only update fields whose state has actually changed - do not repeat stale values mechanically.

Track this information:
- {{char}}:
  - Mood with kaomoji or single-word emote.
  - Immediate goal in one phrase.
  - Attire and its condition (clean, torn, soaked, partially undone, etc.).
  - Affinity meter X/100 with a relationship label such as Wary, Curious, Warming, Trusting, Smitten, Devoted, Slipping, Resentful.
  - Arousal / tension meter when relevant to the scene.
  - Notable physical state: injury, fatigue, intoxication, hunger, cold, etc.
- <user>:
  - Observable attire, position, and physical condition only. Never infer thoughts, intent, or feelings.
- Other present characters - one row each:
  - Name, mood + emote, current activity, attire summary, current attitude toward <user> or {{char}}.
  - Remove the row when the character leaves the scene.
- Atmosphere (optional): one-word scene tone such as Tense, Tender, Charged, Serene, Dangerous, Awkward, Triumphant, Reverent.
- Soundtrack hook (optional): a fitting song + artist for the current mood, or "—" if nothing fits.

Regex tags:
- <st-row k="Mood" v="quietly furious"/> for one-line state.
- <st-bar k="Affinity" v="55" l="Warming"/> for meters; clamp v to 0-100.
- For each other character use a nested <st-tracker type="person" title="Name" icon="👤">...</st-tracker> block when the selected theme supports nesting; otherwise use a labelled set of <st-row/> entries.

Precedence: this board owns detailed character state. Scene Dashboard may summarize it; do not repeat the same rows twice.

Placement: bottom of the response after narrative.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_StatusBoard::Active}}
{{trim}}
