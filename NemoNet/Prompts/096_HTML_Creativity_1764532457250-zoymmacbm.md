---
identifier: "1764532457250-zoymmacbm"
name: "🎨 HTML Creativity"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 96
order_enabled: False
---

{{// @tooltip Create styled HTML for trackers, interfaces, documents. }}{{// @category CoT }}{{// @color #E91E63 }}{{// @icon 🎨 }}{{// @badge STEP }}

{{setvar::CoTStep_HTMLCreativity::APPLY HTML CREATIVITY: Create stunning, genre-appropriate HTML/CSS interfaces for all trackers. Use <style> blocks, styled <details> and <summary> elements, creative layouts, and diegetic design that feels like it belongs in the story's world.}}

# 🎨 HTML CREATIVITY - CREATIVE INTERFACE MANDATE

## PRIME DIRECTIVE
You are creating **living, breathing interfaces** that exist within the world of the roleplay. This is NOT a generic stat panel - it's a **diegetic element** that makes sense in-universe. Every setting demands a completely unique visualization that feels like it belongs in that world.

**ACTIVE TRACKER REQUESTS (render if not blank):**
- {{getvar::TrackerRequest_Position}}
- {{getvar::TrackerRequest_StoryLedger}}
- {{getvar::TrackerRequest_SceneStatus}}
- {{getvar::TrackerRequest_HeartChart}}
- {{getvar::TrackerRequest_QuestJournal}}
- {{getvar::TrackerRequest_Inventory}}
- {{getvar::TrackerRequest_CharacterSheet}}
- {{getvar::TrackerRequest_KnowledgeLog}}
- {{getvar::TrackerRequest_FandomReaction}}
- {{getvar::TrackerRequest_CYOA}}
- {{getvar::TrackerRequest_NewsScroll}}
- {{getvar::TrackerRequest_ImageGen}}
- {{getvar::TrackerRequest_TextingStyle}}

---

## CRITICAL: STYLE THE DROPDOWN ITSELF

The `<summary>` element MUST be styled - never leave it as plain text!

### First Output - Include Full Styles:
```html
<style>
/* Container wrapper */
.tracker-wrap { margin: 15px 0; }

/* The details element */
.tracker-wrap details {
    background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
    border: 2px solid #e94560;
    border-radius: 12px;
    overflow: hidden;
}

/* THE SUMMARY/DROPDOWN HEADER - THIS IS KEY */
.tracker-wrap summary {
    background: linear-gradient(90deg, #e94560, #ff6b6b);
    color: #fff;
    padding: 12px 18px;
    font-weight: bold;
    font-size: 1.1em;
    cursor: pointer;
    list-style: none; /* Remove default arrow */
    display: flex;
    align-items: center;
    gap: 10px;
}
.tracker-wrap summary::-webkit-details-marker { display: none; }
.tracker-wrap summary::before { content: "▶"; transition: transform 0.2s; }
.tracker-wrap details[open] summary::before { transform: rotate(90deg); }

/* Content inside */
.tracker-content { padding: 15px; color: #eee; }
</style>

<div class="tracker-wrap">
<details>
<summary>💕 Heart Chart</summary>
<div class="tracker-content">
<!-- Your tracker content here -->
</div>
</details>
</div>
```

---

## GENRE-SPECIFIC STYLED DROPDOWNS

### Cyberpunk/Sci-Fi:
```html
<style>
.cyber-wrap details {
    background: #0a0a0f;
    border: 1px solid #00ff9d;
    border-radius: 3px;
    box-shadow: 0 0 20px rgba(0,255,157,0.2);
}
.cyber-wrap summary {
    background: linear-gradient(90deg, rgba(0,255,157,0.2), transparent);
    border-bottom: 1px solid #00ff9d;
    color: #00ff9d;
    padding: 12px 15px;
    font-family: 'Courier New', monospace;
    font-weight: bold;
    cursor: pointer;
    list-style: none;
    text-shadow: 0 0 10px #00ff9d;
}
.cyber-wrap summary::-webkit-details-marker { display: none; }
.cyber-wrap summary::before { content: "[>] "; }
.cyber-wrap details[open] summary::before { content: "[v] "; }
.cyber-content { padding: 15px; color: #00ff9d; font-family: 'Courier New', monospace; }
</style>

<div class="cyber-wrap">
<details>
<summary>📡 NEURAL_LINK://status</summary>
<div class="cyber-content">
<!-- Cyberpunk content -->
</div>
</details>
</div>
```

### Fantasy/Medieval:
```html
<style>
.tome-wrap details {
    background: linear-gradient(to bottom, #f4e4bc, #e8d5a3);
    border: 3px solid #8b4513;
    border-radius: 8px;
    box-shadow: 4px 4px 10px rgba(0,0,0,0.3);
}
.tome-wrap summary {
    background: linear-gradient(to bottom, #8b4513, #5d4037);
    color: #f4e4bc;
    padding: 12px 18px;
    font-family: 'Georgia', serif;
    font-weight: bold;
    font-size: 1.1em;
    cursor: pointer;
    list-style: none;
    text-align: center;
    border-bottom: 2px solid #5d4037;
}
.tome-wrap summary::-webkit-details-marker { display: none; }
.tome-wrap summary::before { content: "✦ "; }
.tome-wrap summary::after { content: " ✦"; }
.tome-content { padding: 15px; color: #3d2914; font-family: 'Georgia', serif; }
</style>

<div class="tome-wrap">
<details>
<summary>📜 The Bonds of Fate</summary>
<div class="tome-content">
<!-- Fantasy content -->
</div>
</details>
</div>
```

### Modern Romance:
```html
<style>
.romance-wrap details {
    background: linear-gradient(135deg, #1a1a2e 0%, #16213e 100%);
    border: 2px solid #e94560;
    border-radius: 15px;
    overflow: hidden;
}
.romance-wrap summary {
    background: linear-gradient(90deg, #e94560, #ff6b6b);
    color: #fff;
    padding: 14px 20px;
    font-weight: bold;
    font-size: 1.1em;
    cursor: pointer;
    list-style: none;
    letter-spacing: 1px;
}
.romance-wrap summary::-webkit-details-marker { display: none; }
.romance-wrap summary::before { content: "♥ "; }
.romance-content { padding: 20px; color: #eee; }
</style>

<div class="romance-wrap">
<details>
<summary>💕 Heart Chart</summary>
<div class="romance-content">
<!-- Romance content -->
</div>
</details>
</div>
```

### Horror/Dark:
```html
<style>
.horror-wrap details {
    background: #0d0d0d;
    border: 2px solid #8b0000;
    border-radius: 5px;
    box-shadow: inset 0 0 30px rgba(139,0,0,0.3);
}
.horror-wrap summary {
    background: linear-gradient(90deg, #8b0000, #4a0000);
    color: #ff6666;
    padding: 12px 18px;
    font-weight: bold;
    cursor: pointer;
    list-style: none;
    text-shadow: 0 0 5px #ff0000;
    border-bottom: 1px solid #8b0000;
}
.horror-wrap summary::-webkit-details-marker { display: none; }
.horror-wrap summary::before { content: "▓ "; }
.horror-content { padding: 15px; color: #a00; font-family: 'Courier New', monospace; }
</style>

<div class="horror-wrap">
<details>
<summary>🩸 P̷S̷Y̷C̷H̷E̷ ̷S̷T̷A̷T̷U̷S̷</summary>
<div class="horror-content">
<!-- Horror content -->
</div>
</details>
</div>
```

### Clean/Modern UI:
```html
<style>
.modern-wrap details {
    background: #ffffff;
    border: 1px solid #e0e0e0;
    border-radius: 10px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
}
.modern-wrap summary {
    background: linear-gradient(to bottom, #f8f9fa, #e9ecef);
    color: #333;
    padding: 14px 20px;
    font-weight: 600;
    cursor: pointer;
    list-style: none;
    border-bottom: 1px solid #e0e0e0;
    border-radius: 10px 10px 0 0;
}
.modern-wrap summary::-webkit-details-marker { display: none; }
.modern-wrap summary::after { content: " ▼"; font-size: 0.8em; color: #666; }
.modern-wrap details[open] summary::after { content: " ▲"; }
.modern-content { padding: 20px; color: #333; }
</style>

<div class="modern-wrap">
<details>
<summary>📊 Status Dashboard</summary>
<div class="modern-content">
<!-- Modern content -->
</div>
</details>
</div>
```

---

## KEY RULES

1. **ALWAYS style the `<summary>` element** - background, color, padding, font
2. **Remove default arrow** with `list-style: none` and `::-webkit-details-marker { display: none; }`
3. **Add custom markers** with `::before` content (▶, ✦, [>], ♥, etc.)
4. **Use wrapper divs** with classes for clean CSS targeting
5. **First response only:** Include full `<style>` block
6. **Subsequent responses:** Just the HTML with same classes

---

## DESIGN PHILOSOPHY

1. **Diegetic Integration:** The interface should feel like something that exists in that world
2. **The dropdown header IS part of the design** - not just a functional element
3. **Visual hierarchy:** Summary should stand out as a clickable header
4. **Genre consistency:** Colors, fonts, and effects should match the story's aesthetic
5. **Polished feel:** Gradients, shadows, and smooth edges make it feel professional

**THE CHALLENGE:** Your tracker dropdowns should look so good that users WANT to click them. The summary header should be a visual element that enhances the aesthetic, not just plain text with a triangle.
