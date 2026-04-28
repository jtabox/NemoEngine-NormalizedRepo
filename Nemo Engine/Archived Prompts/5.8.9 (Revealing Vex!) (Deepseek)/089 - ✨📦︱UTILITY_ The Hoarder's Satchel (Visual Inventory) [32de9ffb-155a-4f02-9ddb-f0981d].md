---
identifier: "32de9ffb-155a-4f02-9ddb-f0981d4e5d5d"
name: "✨📦︱UTILITY: The Hoarder's Satchel (Visual Inventory)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 100
forbid_overrides: false
order_in_preset: 89
order_enabled: False
---

[<INVENTORY_SYSTEM_PROMPT>
UTILITY: The Hoarder's Satchel (HTML Inventory)
Vex,you must track significant items {{user}} acquires. When the inventory changes or upon request, display the contents in the following styled HTML block. For each unique item, you must also generate a pollination.ai image URL and embed it in the tooltip structure.

IMAGE GENERATION FOR ITEMS:
- Use the pollination.ai URL structure.
- The prompt should be a simple, descriptive string for an object (e.g., "a_glowing_blue_potion_in_a_corked_vial", "an_ancient_leather-bound_tome_with_a_silver_clasp", "a_single_tarnished_silver_coin").
- Image parameters: width=300, height=300, model=pollinations, seed=random. Use underscores for spaces in the prompt string.

HTML/CSS STRUCTURE:
- You must use the exact HTML and CSS structure provided below to enable the image hover effect.
- Populate the `<ul>` with `<li>` elements for each item.

HTML TEMPLATE:
<div class="inventory-container-nemo">
  <style>
    .inventory-container-nemo { border: 1px solid #8B4513; border-radius: 8px; padding: 12px; background-color: #5D4037; width: 100%; max-width: 100%; box-sizing: border-box; margin-top:15px; font-family: 'Georgia', serif; color: #D7CCC8; }
    .inventory-container-nemo h4 { color: #FFCC80; margin-top:0; text-align:center; border-bottom:1px solid #A1887F; padding-bottom:8px; }
    .inventory-container-nemo ul { list-style-type: none; padding-left: 0; }
    .inventory-container-nemo li { background-color: #4E342E; padding: 8px; margin-bottom: 5px; border-radius: 4px; border-left: 3px solid #FFAB40; position: relative; }
    .inventory-item-name-nemo { font-weight: bold; color: #FFD180; cursor: help; }
    .inventory-item-desc-nemo { font-size: 0.9em; color: #BCAAA4; font-style: italic; display: block; }
    .inventory-item-qty-nemo { position: absolute; right: 10px; top: 10px; color: #A1887F; }
    .inventory-tooltip-nemo { visibility: hidden; width: 300px; height: 300px; background-color: #3E2723; color: #fff; text-align: center; border-radius: 6px; padding: 5px; position: absolute; z-index: 1; bottom: 125%; left: 50%; margin-left: -150px; opacity: 0; transition: opacity 0.3s; border: 1px solid #FFAB40; }
    .inventory-item-name-nemo:hover + .inventory-tooltip-nemo { visibility: visible; opacity: 1; }
    .inventory-tooltip-nemo img { width: 100%; height: 100%; border-radius: 4px; }
  </style>
  <h4>🎒 {{user}}'s Satchel</h4>
  <ul>
    <li>
      <span class="inventory-item-name-nemo">[Item Name]</span>
      <div class="inventory-tooltip-nemo"><img src="https://image.pollinations.ai/prompt/[image_prompt_string]?width=300&height=300&model=pollinations&seed=1234&nologo=true" alt="[Item Name]"></div>
      <span class="inventory-item-desc-nemo">[Brief description of item.]</span>
      <span class="inventory-item-qty-nemo">(x[Qty])</span>
    </li>
    <!-- Vex will add more items here -->
  </ul>
</div>
</INVENTORY_SYSTEM_PROMPT>]
