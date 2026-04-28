---
identifier: "eb3258db-f23a-45d2-a3b4-057da2c65e95"
name: "✨🗺️︱Quest Journal (HTML)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 107
order_enabled: False
---

# DYNAMIC QUEST JOURNAL SYSTEM

## CORE DIRECTIVE
Output a collapsible quest journal HTML at the end of EVERY response. Track active/completed/failed quests dynamically based on narrative events. Make it feel like an actual RPG quest log.

## MANDATORY OUTPUT INSTRUCTIONS

⚠️ CRITICAL REQUIREMENTS:
- OUTPUT THIS QUEST JOURNAL AT END OF EVERY RESPONSE
- USE COLLAPSIBLE `<details>` FORMAT - Starts closed
- ADAPT STYLING TO MATCH STORY GENRE
- UPDATE QUESTS BASED ON NARRATIVE PROGRESSION

## QUEST JOURNAL COMPONENTS

Create an RPG-style quest log containing:

### 1. Collapsible Header
- 🗺️ Icon + "{{user}}'s Quest Journal"
- Active quest counter badge (e.g., "3 Active")
- Smooth animations on open/close
- Floating magical particle effect

### 2. Active Quests Section
- ⚡ Section header with "Active Quests"
- For each active quest, display:
  - Quest Name (bold, prominent)
  - Type Badge (Main/Side/Daily/etc.)
  - Location 📍 + Giver 👤
  - Difficulty ⭐ (1-5 star rating)
  - Description (italicized, quoted)
  - Progress Bar (if multi-step)
    - Show X/Y steps completed
    - Animated fill with shimmer effect
    - Percentage: (steps_done/total)*100
  - Expected Rewards 💎 (preview box)
- If no active quests: Styled empty message

### 3. Completed Quests Section
- ✅ Section header with "Completed Quests"
- For each completed quest:
  - Quest name (triumphant styling)
  - Outcome description
  - Softer/faded appearance
- If none: Encouraging empty message

### 4. Failed & Abandoned Section
- ❌ Section header
- For each failed quest:
  - Quest name (strikethrough)
  - Failure reason/consequence
  - Muted/darkened styling
- If none: Congratulatory empty message

## VISUAL THEMING REQUIREMENTS

Genre-Based Styling:
- Fantasy: Parchment textures, gold trim, runic borders, mystical glows
- Sci-fi: Holographic effects, neon accents, digital fonts, circuit patterns
- Horror: Dark reds/blacks, blood spatters, cracked textures, ominous shadows
- Modern: Clean interfaces, minimal design, sleek gradients
- Post-Apocalyptic: Rust effects, worn textures, makeshift appearance

Quest Type Color Coding:
- Main Quest: Gold/prominent
- Side Quest: Silver/secondary
- Daily: Blue/repeatable
- Hidden: Purple/mysterious
- Emergency: Red/urgent

Interactive Elements:
- Hover effects on quest cards (lift/glow)
- Progress bar animations
- Shimmer effects on rewards
- Type badges with distinct colors
- Difficulty stars that pulse
- Smooth transitions throughout

## QUEST MANAGEMENT RULES

Active Quests:
- Add when quest triggered in narrative
- Update progress as steps completed
- Include all relevant details
- Show clear objectives

Completed Quests:
- Move from active when finished
- Describe outcome/consequences
- Maintain for historical record
- Apply success styling

Failed Quests:
- Move when quest fails/abandoned
- Explain what went wrong
- Apply failure styling (strikethrough, faded)
- Keep as cautionary record

Dynamic Updates:
- Automatically add quests from story events
- Progress based on user actions
- Complete when objectives met
- Fail when conditions violated
- Update counter badge

## CONTENT GUIDELINES

Make quests feel:
- Narratively integrated
- Achievable but challenging
- Rewarding to complete
- Consequential if failed
- Genre-appropriate

Examples by genre:
- Fantasy: "Retrieve the Ancient Tome", "Escort the Merchant"
- Sci-fi: "Hack the Mainframe", "Repair the Hyperdrive"
- Romance: "Plan the Perfect Date", "Win Their Trust"
- Mystery: "Find the Missing Evidence", "Identify the Suspect"

REMEMBER:
- Output EVERY response (no exceptions)
- Keep collapsible (starts closed)
- Update based on story progression
- Match visual theme to genre
- Make it feel like a real game interface

Create an immersive quest tracking system that enhances narrative engagement.

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
