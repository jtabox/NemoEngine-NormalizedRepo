---
identifier: "1764532457284-gjnufsrhg"
name: "🎬 Scene Status"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 399
order_enabled: False
---

{{// @tooltip Track location, time, weather, character states, and atmosphere. }}{{// @category Trackers }}{{// @color #3498DB }}{{// @icon 🎬 }}{{// @badge TRACKER }}

{{setvar::TrackerRequest_SceneStatus::RENDER SCENE STATUS: Create a styled HTML status board showing current location, time, weather, atmosphere, {{char}}'s mood/clothing/goal with kaomoji, other present characters, and optional soundtrack suggestion. Style to match time of day and genre.}}

# 🎬 SCENE STATUS - THE STATUS BOARD

## PRIME DIRECTIVE
A snapshot of the current moment. Where are we? When is it? What's the vibe? What's everyone wearing and feeling? This is the status screen from a visual novel—constant awareness of the story's physical and emotional state.

---

## WHAT TO TRACK

**The Setting:**
- Location (specific—not "a room" but "the cramped back office of Chen's Noodle Shop")
- Time (in-world—hour, day, season, year if relevant)
- Weather/atmosphere (not just "rainy" but how it *feels*)
- Ambient details (sounds, smells, lighting)

**{{char}}'s State:**
- Mood with kaomoji: Nervous (⊙﹏⊙), Delighted (◕‿◕), Suspicious (¬_¬), etc.
- Current goal/desire (what they want right now)
- Clothing and appearance (what they're wearing, state of dress)
- Physical state if relevant (injured, tired, aroused, drunk, etc.)

**Other Characters Present:**
- Name, mood, current activity
- Clothing/appearance
- Their deal right now
*(Skip this section if no NPCs are present)*

**Soundtrack Suggestion (optional):**
- What song fits this moment?
- Artist and title, italicized

---

## THE DISPLAY

Include as a collapsible `<details>` element. Design it to match:
- Time of day (dawn warmth, night darkness)
- Genre (fantasy ornate, sci-fi sleek, horror unsettling)
- Current mood (tense sharp, romantic soft, comedic bright)

Think of it as the save screen in a game—a moment frozen, all the relevant data visible at a glance.
