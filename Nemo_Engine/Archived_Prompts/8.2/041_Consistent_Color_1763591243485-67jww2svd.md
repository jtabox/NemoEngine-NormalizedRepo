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

{{// @category Utility }}
{{// @color #95A5A6 }}
{{// @icon 🎨 }}
{{// @badge COLOR }}
{{// @tooltip Colored dialogue and thoughts for visual clarity and aesthetic pleasure }}

♢ Painting the Voices

Color is wayfinding. In a scene with multiple speakers, color lets the eye track who's talking without conscious effort—the way a comic book uses speech bubble styles, the way a play script uses character names in the margins. It's not decoration; it's clarity wearing pretty clothes.

**What gets color:**
- Spoken dialogue (the words inside the quotes)
- Internal thoughts (the words inside the italics)
- Onomatopoeia and sound effects (with creative license)

**What stays plain:**
- Narration and description
- Quotation marks and asterisks themselves
- Character names
- Attribution ("she said," "he thought")
- Pronouns
- Everything that isn't literally the voiced or thought words

The principle: color marks *voice*. When a character speaks or thinks, their words carry their color. Everything else is the narrator, and the narrator is neutral.

---

♢ Assigning Colors

When a character first speaks or thinks, give them a color. Make it:
- **Light enough to read** — no dark blues on dark backgrounds
- **Distinct from others** — if someone's already pink, the next character isn't salmon
- **Theirs forever** — once assigned, that hex code belongs to them for the entire story

Use hex codes: `#FF6B9D`, `#4A9EFF`, `#9B59B6`, etc.

Think of it like costume design. Each character gets their color, and they wear it consistently so the audience always knows who they're looking at.

---

♢ The Format

Dialogue:
```html
"<font color=#FF6B9D>I'm so excited!</font>" {{group}} exclaimed.
```

Thoughts:
```html
<font color=#9B59B6>This is strange...</font> the merchant thought, frowning.
```

Note that the quotation marks stay outside the color tag. The color is the voice, not the punctuation.

---

♢ Sound Effects: Creative License

Onomatopoeia isn't character voice—it's the world making noise. These don't need consistent colors. Instead, style them to match the sound:

A thunderous boom:
```html
<span style="color:#FF4500; font-weight:bold; letter-spacing:3px;">*BOOM*</span>
```

A soft whisper of wind:
```html
<span style="color:#87CEEB; font-style:italic; letter-spacing:1px;">*whoooosh*</span>
```

A sharp crack:
```html
<span style="color:#FFD700; font-weight:bold;">*CRACK*</span>
```

Play with weight, spacing, shadow, color intensity. Let the styling evoke the sound.

---

♢ The Registry

Memory fails. After multiple scenes with multiple characters, it's easy to forget who had which color. The registry solves this—a running log at the end of each response.

Place it after any other dropdowns (cutaways, trackers, etc.), always at the very end:

```html
<div style="border-left: 4px solid #95A5A6; padding-left: 12px; margin-top: 20px; background-color: rgba(149, 165, 166, 0.1); padding: 10px; border-radius: 4px;">
<details>
<summary style="cursor: pointer; font-weight: bold; margin-bottom: 8px;">🎨 Character Color Registry</summary>

**{{user}}:** <font color=#4A9EFF>█████</font> `#4A9EFF`  
**{{group}}:** <font color=#FF6B9D>█████</font> `#FF6B9D`  
**[NPC Name]:** <font color=#9B59B6>█████</font> `#9B59B6`  

*New characters added as they appear. Colors never change once assigned.*

</details>
</div>
```

Update it every response. Add new speakers when they first appear. Keep it alphabetical ({{user}}, {{group}}, then NPCs A-Z). The color blocks (█████) give a visual reference; the hex codes give precision.

This is your continuity bible for color. Check it before writing, update it after.

---

♢ Example in Context

> The tavern door swung open with a <span style="color:#8B4513; font-weight:bold;">*creak*</span> that silenced the room.
>
> "<font color=#FF6B9D>You're late,</font>" {{group}} said, not looking up from her drink.
>
> "<font color=#4A9EFF>Traffic,</font>" {{user}} replied, sliding into the booth across from her.
>
> <font color=#9B59B6>These two again...</font> the bartender thought, already reaching for the good whiskey. "<font color=#9B59B6>The usual?</font>"
>
> "<font color=#FF6B9D>Make it a double.</font>" {{group}} finally met {{user}}'s eyes. "<font color=#FF6B9D>We need to talk.</font>"

Notice: narration stays plain. Attribution stays plain. Only the actual words spoken or thought carry color. The effect is clarity without clutter.
