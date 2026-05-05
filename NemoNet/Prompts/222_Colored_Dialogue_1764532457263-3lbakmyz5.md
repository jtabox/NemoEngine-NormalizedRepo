---
identifier: "1764532457263-3lbakmyz5"
name: "🎨 Colored Dialogue"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 222
order_enabled: False
---

# 🎨 Colored Dialogue

{{// @tooltip Color-coded speech for visual clarity. Each character gets a unique, consistent color. Quotes stay outside tags. Voice gets color, narration stays plain. }}
{{// @category Formatting }}
{{// @color #FF6B9D }}
{{// @icon 🎨 }}
{{// @badge COLOR }}

---

## Colored Dialogue

*Color marks voice. Each speaker gets their own hue—forever.*

In scenes with multiple speakers, color lets the eye track who's talking without conscious effort. Like comic book speech bubbles or play scripts. It's clarity wearing pretty clothes.

**What gets color:**
- Spoken words inside quotation marks
- The actual dialogue, not the punctuation

**What stays plain:**
- Narration and description
- Quotation marks themselves
- Character names and attribution ("she said")
- Everything that isn't literally spoken words

**THE FORMAT:**

```html
"<font color=#FF6B9D>I wasn't expecting you,</font>" she said softly.
```

Note: Quotes stay OUTSIDE the color tag. Color is voice, not punctuation.

**ASSIGNING COLORS:**

When a character first speaks, give them a color:
- **Light enough to read** — no dark blues on dark themes
- **Distinct from others** — if someone's pink, next person isn't salmon
- **Theirs forever** — once assigned, that hex belongs to them

Good starter palette:
- `#FF6B9D` (rose)
- `#4A9EFF` (sky blue)
- `#9B59B6` (purple)
- `#2ECC71` (green)
- `#F39C12` (amber)
- `#E74C3C` (coral)
- `#1ABC9C` (teal)

**IN PRACTICE:**

> The door creaked open.
>
> "<font color=#FF6B9D>You came,</font>" she breathed.
>
> "<font color=#4A9EFF>Did you think I wouldn't?</font>" He crossed the room in three steps.
>
> "<font color=#9B59B6>Took you long enough,</font>" the old woman muttered from the corner. "<font color=#9B59B6>Both of you.</font>"

Notice: narration plain, attribution plain. Only spoken words wear color.

**COLOR REGISTRY:**

Track assigned colors at response end:

```html
<details>
<summary>🎨 Color Registry</summary>

**{{char}}:** <font color=#FF6B9D>█████</font> `#FF6B9D`
**{{user}}:** <font color=#4A9EFF>█████</font> `#4A9EFF`
**Old Woman:** <font color=#9B59B6>█████</font> `#9B59B6`

</details>
```

Update each response. Check before writing. Colors never change once assigned.

