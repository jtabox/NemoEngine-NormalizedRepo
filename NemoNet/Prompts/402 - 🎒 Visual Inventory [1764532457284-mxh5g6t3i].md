---
identifier: "1764532457284-mxh5g6t3i"
name: "🎒 Visual Inventory"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 402
order_enabled: False
---

{{// @tooltip Visual inventory with AI-generated item images, equipment slots, and rarity styling. Pollinations.ai integration for key items. }}
{{// @category Trackers }}
{{// @color #F39C12 }}
{{// @icon 🎒 }}
{{// @badge TRACKER }}

{{setvar::TrackerRequest_Inventory::RENDER INVENTORY: Create a styled HTML inventory with AI-generated images for equipped/key items using Pollinations.ai, equipment grid, categorized items with rarity colors.}}

# 🎒 VISUAL INVENTORY SYSTEM

**VISUAL RPG INVENTORY**: Generate AI images for equipped items and rare+ acquisitions. Make loot feel tangible.

---

## RARITY TIERS & COLORS

| Symbol | Rarity | Border Color | Generate Image? |
|--------|--------|--------------|----------------|
| ○ | Common | Gray `#808080` | No (text only) |
| ◇ | Uncommon | Green `#2ECC71` | No (text only) |
| ◆ | Rare | Blue `#3498DB` | Yes - on acquire |
| ★ | Epic | Purple `#9B59B6` | Yes - always |
| ✦ | Legendary | Gold `#FFD700` | Yes - featured |

---

## IMAGE GENERATION FOR ITEMS

### Item Art Tags:
```
masterpiece, best quality, fantasy item, [ITEM_TYPE], [MATERIAL], detailed, [RARITY_GLOW], dark background, centered, icon art, game asset
```

### Item Type Tags:
| Category | Tags |
|----------|------|
| **Weapons** | `sword, axe, bow, staff, dagger, magical weapon` |
| **Armor** | `helmet, chestplate, gauntlets, boots, shield, armor piece` |
| **Accessories** | `ring, amulet, necklace, earring, bracelet, jewelry` |
| **Consumables** | `potion bottle, elixir, food item, scroll` |
| **Quest Items** | `ancient artifact, mysterious object, glowing relic` |

### Item Image URL (64x64 icon style):
```
![Item](https://image.pollinations.ai/prompt/masterpiece%20best%20quality%20fantasy%20item%20[ITEM_DESC]%20detailed%20[RARITY_GLOW]%20dark%20background%20centered%20icon%20art?width=256&height=256&model=flux-anime&seed=[SEED]&negative_prompt=worst%20quality%20blurry&nologo=true)
```

---

## HTML TEMPLATE - FULL INVENTORY

**OUTPUT AS RAW HTML:**

```html
<div class="inventory-panel">
<style>
.inventory-panel { background: linear-gradient(180deg, #1a1a2e 0%, #0f0f1a 100%); border: 2px solid #333; border-radius: 12px; padding: 15px; max-width: 600px; margin: 10px auto; font-family: 'Segoe UI', sans-serif; color: #fff; }
.inv-header { display: flex; justify-content: space-between; align-items: center; border-bottom: 1px solid #444; padding-bottom: 10px; margin-bottom: 15px; }
.inv-title { font-size: 1.3em; color: #F39C12; }
.inv-slots { color: #aaa; }
.inv-gold { color: #FFD700; }
.equip-grid { display: grid; grid-template-columns: repeat(3, 80px); gap: 8px; justify-content: center; margin-bottom: 20px; }
.equip-slot { width: 80px; height: 80px; background: #252540; border: 2px solid #444; border-radius: 8px; display: flex; align-items: center; justify-content: center; position: relative; overflow: hidden; }
.equip-slot img { width: 100%; height: 100%; object-fit: cover; }
.equip-slot.empty { border-style: dashed; }
.equip-slot.legendary { border-color: #FFD700; box-shadow: 0 0 10px rgba(255,215,0,0.5); }
.equip-slot.epic { border-color: #9B59B6; box-shadow: 0 0 8px rgba(155,89,182,0.5); }
.equip-slot.rare { border-color: #3498DB; }
.slot-label { position: absolute; bottom: 2px; left: 2px; right: 2px; background: rgba(0,0,0,0.8); font-size: 0.65em; text-align: center; padding: 2px; }
.inv-section { margin-bottom: 15px; }
.inv-section-title { color: #F39C12; font-size: 0.9em; margin-bottom: 8px; border-bottom: 1px solid #333; padding-bottom: 4px; }
.inv-item { display: flex; align-items: center; padding: 5px; margin: 3px 0; background: #252540; border-radius: 5px; font-size: 0.9em; }
.inv-item.rare { border-left: 3px solid #3498DB; }
.inv-item.epic { border-left: 3px solid #9B59B6; }
.inv-item.legendary { border-left: 3px solid #FFD700; background: linear-gradient(90deg, rgba(255,215,0,0.1), transparent); }
.inv-item-icon { width: 32px; height: 32px; margin-right: 10px; border-radius: 4px; }
.inv-item-name { flex-grow: 1; }
.inv-item-qty { color: #aaa; margin-left: 10px; }
.inv-item-rarity { margin-left: 5px; }
.rarity-common { color: #808080; }
.rarity-uncommon { color: #2ECC71; }
.rarity-rare { color: #3498DB; }
.rarity-epic { color: #9B59B6; }
.rarity-legendary { color: #FFD700; }
</style>

<div class="inv-header">
  <span class="inv-title">🎒 Inventory</span>
  <span class="inv-slots">12/20 slots</span>
  <span class="inv-gold">💰 1,247</span>
</div>

<!-- EQUIPPED ITEMS (with images) -->
<div class="equip-grid">
  <div class="equip-slot empty"><span class="slot-label">Head</span></div>
  <div class="equip-slot epic">
    <img src="https://image.pollinations.ai/prompt/masterpiece%20fantasy%20amulet%20glowing%20purple%20gem%20silver%20chain%20dark%20background%20icon?width=256&height=256&model=flux-anime&seed=123456&nologo=true" alt="Amulet">
    <span class="slot-label">Neck</span>
  </div>
  <div class="equip-slot empty"><span class="slot-label">Head</span></div>
  
  <div class="equip-slot rare">
    <img src="[WEAPON_IMG_URL]" alt="Weapon">
    <span class="slot-label">Main</span>
  </div>
  <div class="equip-slot legendary">
    <img src="[ARMOR_IMG_URL]" alt="Armor">
    <span class="slot-label">Armor</span>
  </div>
  <div class="equip-slot empty"><span class="slot-label">Off</span></div>
</div>

<!-- CARRIED ITEMS -->
<div class="inv-section">
  <div class="inv-section-title">⚔️ Weapons</div>
  <div class="inv-item rare">
    <img class="inv-item-icon" src="[ITEM_IMG]" alt="">
    <span class="inv-item-name">Steel Longsword</span>
    <span class="inv-item-rarity rarity-rare">◆</span>
  </div>
</div>

<div class="inv-section">
  <div class="inv-section-title">🧪 Consumables</div>
  <div class="inv-item">
    <span class="inv-item-name">🧪 Health Potion</span>
    <span class="inv-item-qty">x5</span>
    <span class="inv-item-rarity rarity-common">○</span>
  </div>
  <div class="inv-item">
    <span class="inv-item-name">🍖 Cooked Meat</span>
    <span class="inv-item-qty">x3</span>
    <span class="inv-item-rarity rarity-common">○</span>
  </div>
</div>

<div class="inv-section">
  <div class="inv-section-title">📜 Quest Items</div>
  <div class="inv-item epic">
    <img class="inv-item-icon" src="[QUEST_ITEM_IMG]" alt="">
    <span class="inv-item-name">Ancient Medallion</span>
    <span style="color:#E74C3C; font-size:0.8em;">[QUEST]</span>
    <span class="inv-item-rarity rarity-epic">★</span>
  </div>
</div>

</div>
```

---

## COMPACT TEXT-ONLY FALLBACK

For quick updates without image generation:

```
<details>
<summary>🎒 Inventory (12/20) | 💰 1,247g</summary>

**EQUIPPED:**
⚔️ Steel Longsword ◆ | 🛡️ Iron Chestplate ○ | 💍 Ring of Strength ◇

**WEAPONS:** Steel Longsword ◆, Hunting Bow ○
**ARMOR:** Iron Chestplate ○, Leather Boots ○
**CONSUMABLES:** Health Potion x5 ○, Mana Potion x2 ◇
**VALUABLES:** Ruby x1 ★, Sapphire x2 ◆
**QUEST:** Ancient Medallion ★ [QUEST]
</details>
```

---

## WHEN TO GENERATE IMAGES

1. **New Rare+ item acquired** → Generate item image, show with "NEW!" badge
2. **Equipment changes** → Update equipped slot images
3. **Legendary drop** → Full showcase with glow effects
4. **First inventory display** → Generate for all equipped items
5. **Common/Uncommon items** → Text-only (save on image generation)

---

## ITEM IMAGE EXAMPLES

**Legendary Sword:**
```
masterpiece best quality fantasy sword legendary golden blade glowing divine light ornate hilt dark background centered icon art
```

**Epic Armor:**
```
masterpiece best quality fantasy chestplate purple crystal inlays magical glow plate armor detailed dark background icon
```

**Quest Artifact:**
```
masterpiece best quality ancient medallion mysterious glowing runes artifact relic dark background centered icon
```

---

## QUICK IMAGE TEMPLATE

```
https://image.pollinations.ai/prompt/masterpiece%20best%20quality%20fantasy%20item%20[ITEM_TYPE]%20[MATERIAL]%20[RARITY_EFFECT]%20dark%20background%20centered%20icon%20art?width=256&height=256&model=flux-anime&seed=[SEED]&negative_prompt=worst%20quality%20blurry&nologo=true
```
