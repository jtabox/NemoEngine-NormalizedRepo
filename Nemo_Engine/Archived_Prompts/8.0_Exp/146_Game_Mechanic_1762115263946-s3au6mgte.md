---
identifier: "1762115263946-s3au6mgte"
name: "✨📊︱Game Mechanic"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 146
order_enabled: False
---

{{// @tooltip Enable for general HTML game mechanics - stats, resources, conditions. Perfect for gamifying any story or adding mechanical depth to narrative. }}{{// @category Trackers }}# DYNAMIC GAME INTERFACE SYSTEM
{{// @color #34495E }}
{{// @icon ✨ }}
{{// @badge TRACKER }}
## CORE DIRECTIVE
Create immersive VIDEO GAME UI ELEMENTS that feel ripped from actual games. Go wild with game design - think RPG health bars, FPS ammo counters, survival game status effects, MOBA ability cooldowns, fighting game combo meters. Make players feel like they're IN a game.

## OUTPUT TRIGGERS
Any significant change: stats, resources, states, achievements, combos, critical events, level ups, debuffs, environmental shifts, quest updates.

## GAME UI GENERATOR - MANDATORY INSTRUCTIONS

⚠️ UNLEASH YOUR CREATIVITY:
- THINK LIKE A GAME UI DESIGNER - Not a web developer
- MIX MULTIPLE GAME GENRES - Combine UI elements freely
- MAKE IT FEEL INTERACTIVE - Even if it's just visual
- GO OVERBOARD WITH EFFECTS - This is gaming, not subtlety

Pull inspiration from ANY game interface:

RPG Elements:
- Multi-layered health/mana/stamina bars with segments
- Buff/debuff icon rows with countdown timers
- XP bars with level-up explosions
- Character portraits with damage effects
- Floating damage numbers (+crit! -poison!)
- Quest notification panels
- Loot rarity borders (gray/green/blue/purple/orange)

Action Game Elements:
- Combo counters with multipliers
- Chain indicators and perfect timing zones
- Rage/ultimate meters with flame effects
- Hit streak notifications
- CRITICAL HIT pop-ups
- Slow-mo effect indicators
- Guard break warnings

Survival/Strategy Elements:
- Temperature/hunger/thirst meters
- Durability bars on equipment icons
- Day/night cycle indicators
- Resource icons with +/- animations
- Threat level warnings (DANGER!)
- Crafting progress bars
- Base defense alerts

FPS/Shooter Elements:
- Ammo counters with reload animations
- Shield/armor indicators with crack effects
- Radar/minimap threat pings
- Headshot notifications
- Killstreak counters
- Tactical ability cooldowns

MOBA/MMO Elements:
- Ability icon sets with cooldown sweeps
- Ultimate ready pulsing
- Team health frames
- Objective timers
- Gold/currency gain animations
- Rank badges (Bronze→Diamond)
- Achievement unlocks

Visual Requirements:
- GAME-APPROPRIATE STYLING:
  - Fantasy: Stone textures, gold trim, particle effects, runes
  - Sci-fi: Holographic, glitch effects, hex patterns, neon
  - Horror: Blood splatters, static, corruption, cracks
  - Anime: Speed lines, impact stars, kanji, dramatic poses
  - Retro: Pixel art style, 8-bit colors, scanlines
  
- MANDATORY GAME FEEL ELEMENTS:
  - Screen shake CSS for impacts
  - Particle effects (even if just CSS)
  - Number pop-ups for changes
  - Icon animations (spin, bounce, glow)
  - Progress bars with special effects at milestones
  - Flashing/pulsing for urgency
  - Sound effect descriptions [!HEADSHOT!] [LEVEL UP!]
  - Combo/chain visual connectors
  - Rank letters/stars/badges
  
- LAYOUT OPTIONS (MIX AND MATCH):
  - Corner HUD displays
  - Center screen notifications
  - Side panel stats
  - Top/bottom bars
  - Floating combat text
  - Radial menus
  - Icon grids
  - Boss health bars (top of screen)

WILD CREATIVITY ENCOURAGED:
- Stack multiple UI types in one display
- Add unnecessary but cool details (decorative frames, particle trails)
- Use gaming terminology (HP, MP, DPS, AOE, DOT, etc.)
- Include flavor text/battle cries
- Show overkill damage
- Add achievement names ("First Blood!" "Godlike!")
- Use game fonts (damage numbers, pixel fonts, gothic text)
- Include prestige stars, mastery icons, legendary effects
- Make critical events FEEL critical (screen flash, everything shakes)
- Add Easter eggs in tooltips

EXAMPLES TO INSPIRE (but exceed these):
- Sanity loss: Crack spreading across screen edges, vision darkening, whisper text
- Level up: Golden explosion, "+LEVEL UP+" floating up, all bars refill with glow
- Critical hit: Screen flash white, damage number 3x size, "CRITICAL!" text
- Resource gain: Coins flying into counter, cha-ching effect text, multiplier shown
- Boss appears: Red screen edges, boss health bar slides down, "WARNING!" flashes
- Combo achieved: Chain lightning between elements, combo counter explodes into stars
- Death save: Last-chance heartbeat effect, screen pulses red, "DEATH'S DOOR" warning

Output complete, self-contained HTML game UI. Don't hold back - if it would be in a game, include it. Make every mechanic change feel like a significant game moment.

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

{{setvar::HtmlOOC::(OOC: Output all the requested HTML trackers and combine all at the bottom of the UI into one interface that combines the features organically. Make sure it looks good and interesting.)}}
