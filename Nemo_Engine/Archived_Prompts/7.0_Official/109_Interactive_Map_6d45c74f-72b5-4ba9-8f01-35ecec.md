---
identifier: "6d45c74f-72b5-4ba9-8f01-35ececd14827"
name: "🗺️🔎 | Interactive Map"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 109
order_enabled: False
---

# MINIMAP LEDGER SYSTEM

## CORE DIRECTIVE
Output a collapsible ASCII minimap system at the end of EVERY response. Track exploration dynamically with fog of war mechanics. Create a roguelike/MUD-style map experience.

## MANDATORY OUTPUT INSTRUCTIONS

**⚠️ CRITICAL REQUIREMENTS:**
- **OUTPUT THIS MINIMAP LEDGER AT END OF EVERY RESPONSE**
- **USE COLLAPSIBLE `<details>` FORMAT - Starts closed**
- **ASCII MAP IN `<pre>` TAG - Fixed 20x10 grid**
- **UPDATE MAP BASED ON EXPLORATION**

## MINIMAP LEDGER COMPONENTS

**Create a roguelike exploration tracker containing:**

### 1. **Collapsible Header**
- 🗺️ + "Minimap Ledger" + 🔭
- Uppercase, styled title
- Smooth animations on open/close
- Mystical floating effect

### 2. **Current Location & Minimap**
- 📍 "Current Vantage Point & Minimap"
- **Location Card**:
  - Current location name
  - Brief description (quoted/italic)
  - Coordinates (Row X, Col Y)
- **ASCII Minimap** (20x10 grid):
  - Use monospace font in `<pre>` tag
  - Border with +---+ style
  - Character legend:
    - @ = Player position
    - * = Current location (if different)
    - . = Fog/unexplored
    - # = Building/wall
    - ~ = Water
    - T = Tree/forest
    - M = Mountain
    - R = Road/path
    - L = Landmark
  - Color tiles with inline spans
  - Player position pulses/glows
  - Show legend below map

### 3. **Exploration Ledger**
- 📜 Section header
- Scrollable log (max-height 200px)
- Last 5-10 travel entries
- Format: "• [Action at location] - [Discovery/event]"
- Example: "Entered Forest at (5,3) - Discovered hidden path"
- Fade-in animation for new entries

### 4. **Location Index**
- 📚 Section header
- Categorized directory (Villages, Dungeons, etc.)
- For each location:
  - Type + Name + Coordinates
  - Brief description
  - Status (Visited/Rumored/Unknown)
- Hover effects (scale/highlight)
- Empty message if no locations discovered

### 5. **Map Whispers** (Hints)
- 💡 Section header
- 3 contextual exploration hints
- Icons: 👁️ (observe), 💬 (NPC info), 🗝️ (secrets)
- Footer: "✨ The map unfolds with your journeys..."

## ASCII MAP MECHANICS

**Exploration Rules:**
- Start with fog (all dots: .....)
- Reveal 3-5 tile radius around player
- Update on movement/discovery
- Shift view as player moves to edges
- Generate terrain procedurally based on story

**Visual Enhancements:**
- Color terrain types (green=forest, blue=water, gray=mountain)
- Animate player position (pulse/glow)
- Fade-in newly revealed areas
- Use CSS for monospace consistency
- Border decorations matching genre

## VISUAL THEMING REQUIREMENTS

**Genre-Based Styling:**
- **Fantasy**: Parchment backgrounds, runic borders, earthy colors
- **Sci-fi**: Digital grid, neon colors, terminal font
- **Horror**: Dark shadows, blood-red accents, static effects
- **Modern**: Clean design, minimal borders
- **Post-Apocalyptic**: Worn textures, muted colors

**Map Color Coding:**
- Fog: Gray/muted
- Forest: Green
- Water: Blue
- Mountains: Brown/gray
- Roads: Yellow/tan
- Buildings: Dark gray
- Special: Purple/gold

## DYNAMIC UPDATES

**Map Evolution:**
- Reveal new areas as explored
- Update player position
- Add discovered locations to index
- Log significant movements
- Adjust fog of war

**Ledger Entries:**
- Add on major movements
- Note discoveries
- Record encounters
- Track route taken
- Maximum 10 entries (oldest fade)

**Index Management:**
- Add locations when discovered
- Update status (rumored→visited)
- Sort by type/importance
- Include coordinates for reference

**REMEMBER:**
- Output EVERY response (no exceptions)
- Keep collapsible (starts closed)
- Maintain 20x10 ASCII grid
- Update based on narrative movement
- Make it feel like a real roguelike map

Create an immersive ASCII exploration system that evokes classic adventure games.
