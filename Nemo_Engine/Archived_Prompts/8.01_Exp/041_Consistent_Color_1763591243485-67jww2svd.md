---
identifier: "1763591243485-67jww2svd"
name: "🔧 |Consistent Color"
role: "user"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 41
order_enabled: False
---

{{// @tooltip Enable to add colored text for emphasis, different speakers, or aesthetic purposes. Requires your frontend to support colored text. }}
{{// @category Utility }}
<COLOR_FORMATTING>
Color dialogue (e.g., "<font color=#FF6B9D>Hello!</font>") & thoughts (e.g., <font color=#FF6B9D>I wonder...</font>) by coloring ONLY the text inside delimiters. 

CHARACTER COLOR ASSIGNMENTS:
When a character first speaks/thinks, assign them a unique, light, readable color using hex codes (e.g., #4A9EFF). Choose colors that are distinct from other characters and avoid dark colors that are hard to read.

CRITICAL CONSISTENCY RULE: Once you assign a color to a character ({{user}}, {{group}}, or any NPC), you MUST use that EXACT SAME hex code for that character throughout the ENTIRE conversation. Reference the Character Color Registry at the end of each response to maintain consistency.

ONOMATOPOEIA & SOUND EFFECTS:
For sound effects and onomatopoeia (e.g., *whoosh*, *bang*, *crackle*), you may use creative CSS styling beyond basic colors to enhance immersion. Apply contextual styling like bold, text-shadow, letter-spacing, or font variations to match the sound's nature. These do NOT need consistent colors since they're environmental, not character-based.

NEVER color: delimiters (quotes/asterisks), character names, pronouns, attribution tags (said/thought/etc.), or narration. ONLY color the actual spoken or thought text itself.

◆ Character Color Registry

At the end of EVERY response, include an updated Character Color Registry dropdown tracking all characters and their assigned colors.

**INTEGRATION INSTRUCTIONS:**
- If other HTML dropdowns are requested (cutaways, status trackers, etc.), place the Character Color Registry AFTER all other dropdowns
- If NO other dropdowns exist in your response, create the Character Color Registry as a standalone element
- The registry should ALWAYS appear at the very end of your response, regardless of other elements

Registry Format:

<div style="border-left: 4px solid #95A5A6; padding-left: 12px; margin-top: 20px; background-color: rgba(149, 165, 166, 0.1); padding: 10px; border-radius: 4px;">
<details>
<summary style="cursor: pointer; font-weight: bold; margin-bottom: 8px;">🎨 Character Color Registry</summary>

**{{user}}:** <font color=#[HEX]>█████</font> `#[HEX]`  
**{{group}}:** <font color=#[HEX]>█████</font> `#[HEX]`  
**[NPC Name]:** <font color=#[HEX]>█████</font> `#[HEX]`  
**[NPC Name]:** <font color=#[HEX]>█████</font> `#[HEX]`

*Add new characters as they appear. Never change assigned colors.*

</details>
</div>

Registry Guidelines:
- Update this registry at the end of every response
- Add new characters when they first speak/think
- Maintain alphabetical order ({{user}}, {{group}}, then NPCs alphabetically)
- Use this as your reference to ensure color consistency
- Include visual color sample (█████) and hex code for each character

Examples:
- Narration in default color. "<font color=#FF6B9D>I'm so excited!</font>" {{group}} exclaimed happily.
- <font color=#9B59B6>This is strange...</font> the merchant thought, frowning.
- {{user}} grinned. "<font color=#4A9EFF>Let's go together!</font>"
- <span style="color:#FF4500; font-weight:bold; letter-spacing:3px;">*BOOM*</span> echoed across the valley.
</COLOR_FORMATTING>
{{// @color #95A5A6 }}
{{// @icon 🔧 }}
{{// @badge USABILITY }}
