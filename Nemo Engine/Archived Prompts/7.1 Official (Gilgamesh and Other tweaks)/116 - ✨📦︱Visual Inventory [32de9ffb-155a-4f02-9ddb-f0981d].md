---
identifier: "32de9ffb-155a-4f02-9ddb-f0981d4e5d5d"
name: "✨📦︱Visual Inventory"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 116
order_enabled: False
---

# HOARDER'S SATCHEL - VISUAL INVENTORY

## CORE DIRECTIVE
Display {{user}}'s inventory when items change or upon request. Create a complete visual inventory interface with item representations using ASCII art OR Pollinations.ai images (quota-aware). Output at response end.

## MANDATORY REQUIREMENTS

⚠️ CRITICAL:
- 100% WIDTH DISPLAY - Fill chat width
- VISUAL ITEMS - ASCII art or Pollinations.ai images
- QUOTA AWARE - Limit Pollinations to 3-5 key items
- CATEGORIZED LAYOUT - Organized by item type

## INVENTORY COMPONENTS

### 1. Header Stats Bar
- 📦 Total items count
- ⚖️ Weight status (Light/Moderate/Heavy/Overloaded)
- 💰 Total value estimate
- Current location/container name

### 2. Item Categories
Organize into collapsible/visible sections:
- Weapons & Tools (⚔️)
- Consumables (🧪)
- Treasures & Valuables (💎)
- Quest Items (📜)
- Miscellaneous (📦)

### 3. Item Display Options

ASCII Art (No Quota):
┌─────┐
│ /▔\ │  Iron Sword
│ │█│ │  Common • 1.5kg
│ │ │ │  "Well-worn blade"
└─────┘

Pollinations.ai (Limited Use):
- Reserve for legendary/key items only
- Format: `![item](https://pollinations.ai/p/[description]?width=64&height=64)`
- Max 3-5 per inventory to respect quota
- Example: "glowing magical sword with runes"

Emoji Fallback:
- Quick visual: 🗡️⚔️🛡️🏹💊🧪💎📜🗝️
- Color-coded backgrounds for rarity

### 4. Item Information
Each item shows:
- Visual (ASCII/image/emoji)
- Name and quantity
- Rarity indicator (color-coded border)
- Weight
- Brief description
- Value estimate
- Hover/click for full details

## RARITY SYSTEM

Color-coded borders/backgrounds:
- Gray: Common
- Green: Uncommon  
- Blue: Rare
- Purple: Epic
- Orange: Legendary
- Red: Artifact
- Rainbow: Mythic

## VISUAL THEMING BY GENRE

Fantasy:
- Leather/parchment textures (CSS gradients)
- Runic borders
- Warm browns/golds
- ASCII art: medieval items

Sci-fi:
- Holographic effects
- Grid layouts
- Neon colors
- ASCII art: tech/weapons

Horror:
- Dark shadows
- Blood spatters (CSS)
- Cracked/torn edges
- ASCII art: cursed items

Modern:
- Clean cards
- Minimal design
- Sans-serif fonts
- ASCII art: everyday items

## ASCII ART TEMPLATES

Weapons:
Sword: /▔\   Axe: ┌─┐   Bow: }>
│█│        ├┼┤        │
│ │        │││        │

Potions:
∩     ◊     ⌂
│ │   < >   ║ ║
└─┘   └─┘   ╚═╝

Items:
Book: ▄▄   Key: o-┐   Gem: ◊
══        └─┘       ◊◊

## IMPLEMENTATION RULES

Smart Image Usage:
1. Count total Pollinations calls
2. Prioritize: Quest items > Legendary > New acquisitions
3. Use ASCII for common items
4. Rotate which items get images

Container Layout:
```css
width: 100%;
display: grid;
grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
gap: 10px;
Interactive Elements:

Hover: Show full item card
Categories: Collapsible
Sorting: By type/value/weight
Search/filter bar (visual only)

DYNAMIC UPDATES
On item acquisition:

Flash/glow animation
"NEW" badge
Add to appropriate category

On item use/loss:

Fade out animation
Update counts
Adjust weight

Empty inventory:

Thematic message
Suggestions to explore

QUOTA MANAGEMENT
Pollinations.ai limits:

Track usage in comments: <!-- Pollinations: 3/5 used -->
Cycle which items get images
Prefer ASCII for bulk items
Save quota for dramatic reveals

Fallback hierarchy:

Try ASCII art first
Use Pollinations for special items
Emoji as final fallback

REMEMBER:

Full-width display
Mix ASCII and images wisely
Respect API quota
Make it visually engaging
Update dynamically

Create an immersive inventory that balances visual appeal with technical limitations.
