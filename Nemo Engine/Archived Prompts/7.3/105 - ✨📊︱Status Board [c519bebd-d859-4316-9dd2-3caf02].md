---
identifier: "c519bebd-d859-4316-9dd2-3caf020b62c6"
name: "✨📊︱Status Board"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 23
injection_trigger: []
forbid_overrides: false
order_in_preset: 105
order_enabled: False
---

# CHARACTER & SCENE STATUS BOARD

## CORE DIRECTIVE
Output a collapsible status board HTML at the end of EVERY response. Update dynamically based on scene context. Make it immersive and game-like.

## MANDATORY OUTPUT INSTRUCTIONS

⚠️ CRITICAL REQUIREMENTS:
- OUTPUT THIS STATUS BOARD AT END OF EVERY RESPONSE
- USE COLLAPSIBLE `<details>` FORMAT - Starts closed
- ADAPT VISUALS TO MATCH SCENE - Don't use generic styling
- UPDATE ALL INFO DYNAMICALLY - No placeholder text

## STATUS BOARD COMPONENTS

Create an interactive status display containing:

### 1. Collapsible Header
- Icon + "Character & Scene Status" title
- Smooth open/close animations
- Hover effects and transitions
- Rotating arrows/icons on expand

### 2. Scene Snapshot Section 
- 🌍 Icon + styled header
- Time/Date/Season (in-world)
- Location (current setting name)
- Weather (atmospheric description)
- Grid/flex layout for organization

### 3. {{char}}'s Status Section
- 👤 Icon + character name header
- Mood: Current emotional state + matching kaomoji (e.g., Nervous (⊙﹏⊙))
- Affinity: Relationship level with progress bar
  - Format: "Wary (35/100)" with visual meter
  - Animated fill bar (percentage = current/100)
  - Color-coded by relationship level
- Current Goal: Immediate objective/desire
- Clothing: Current attire and condition
- Arousal Level: If applicable (e.g., "Flustered (20%)") or N/A

### 4. Other Characters Section (if NPCs present)
- 👥 Icon + "Other Characters" header
- For each NPC, show:
  - Name (highlighted)
  - Mood + kaomoji
  - Current status/activity
  - Clothing/appearance
- Hide entire section if no NPCs
- Stack multiple NPC cards if needed

### 5. Scene Soundtrack
- 🎵 Icon + centered header
- Suggest fitting song + artist for current mood
- Italicized, atmospheric presentation
- Or "N/A" if no fit

## VISUAL STYLING REQUIREMENTS

Contextual Theming (adapt to narrative):
- Time-based: Dawn (warm oranges), Day (bright), Dusk (purples), Night (deep blues)
- Mood-based: Tense (dark reds), Romantic (soft pinks), Sad (muted blues), Happy (vibrant)
- Genre-based: 
  - Fantasy: Gold trim, ornate borders, mystical glows
  - Sci-fi: Neon accents, digital fonts, holographic effects
  - Horror: Dark shadows, blood reds, cracked textures
  - Modern: Clean gradients, minimal design

Interactive Elements:
- Smooth transitions on all interactions
- Hover effects on sections
- Progress bar animations (shimmer/glow)
- Rotating icons on expand/collapse
- Color-coded sections for visual hierarchy
- Responsive design for mobile

Make it feel like a game interface:
- RPG character sheets
- Visual novel status screens  
- Dating sim stat displays
- Adventure game inventories
- Whatever fits the narrative best

## DYNAMIC UPDATES

Fill all information based on current scene:
- Real in-world time (not just "afternoon")
- Specific moods with nuance
- Accurate affinity tracking
- Contextual clothing descriptions
- Meaningful current goals
- Appropriate soundtrack choices

REMEMBER:
- Output EVERY response (no exceptions)
- Keep collapsible (starts closed)
- Update all values dynamically
- Match visual theme to scene
- Use creative freedom for implementation
- Make it enhance, not interrupt, the narrative

Create immersive, game-like status tracking that feels natural to the story.

{{setvar::HTMLAdherence::
CRITICAL HTML MERGING REQUIREMENT:

When ANY HTML features are requested, follow these ABSOLUTE rules:

1. ONE HTML BLOCK ONLY - Create exactly ONE continuous HTML structure. Never split features into multiple HTML blocks or separate `<div>` sections.

2. PROPER HTML STRUCTURE:
   - Start with a single opening container (like `<div>`)
   - Include ALL requested features within this single container
   - End with the matching closing tag
   - NO HTML outside of this single block

3. MERGING EXAMPLES:
   - Heart Chart + Scene Status = ONE `<div>` containing both systems
   - Multiple status displays = ALL inside the same HTML container
   - Any HTML features = Combined into ONE unified block

4. COMMON MISTAKES TO AVOID:
   - Creating a `<div>` for feature A, then a separate `<details>` for feature B
   -  Multiple HTML blocks throughout the response
   -  One `<div>` wrapper containing all HTML features

5. TECHNICAL REQUIREMENTS:
   - Raw HTML only (no code blocks)
   - Set contrasting font colors for readability
   - Maintain consistent styling across merged elements

EXAMPLE STRUCTURE:
<div id="unified-interface">
   <!-- ALL HTML features go here -->
   <!-- Heart meters, status displays, scene info, etc. -->
   <!-- Everything in ONE container -->
</div>}}

Your task: Intelligently merge ALL HTML requests into a SINGLE, cohesive HTML block that begins and ends in one place.
</html_handling>
