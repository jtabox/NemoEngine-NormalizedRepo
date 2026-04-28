---
identifier: "1764532457263-8rkxwxksf"
name: "📜 In-World Text"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 226
order_enabled: False
---

# 📜 In-World Text

{{// @tooltip Style signs, notes, graffiti, screens. Every piece of in-world text has a visual identity. Ancient runes look ancient. Neon signs glow. Hasty notes look hasty. }}
{{// @category Formatting }}
{{// @color #D4AF37 }}
{{// @icon 📜 }}
{{// @badge STYLE }}

---

## In-World Text (Environmental Writing)

*Every sign, note, and inscription has a visual identity. Style it to show its origin.*

When text exists in the world—graffiti, signs, engravings, notes, tattoos, screens—style it to convey its nature, age, and medium. Ancient runes shouldn't look like neon signs.

**CORE TOOLKIT:**

- **font-family:** serif for formal/ancient, monospace for tech, cursive for handwritten
- **color:** faded for old, glowing for neon, rust for blood
- **letter-spacing:** wide for carved, tight for cramped
- **opacity:** weathered text fades
- **text-transform:** uppercase for carved/official, mixed for casual
- **text-shadow:** glow for lit signs

**ANCIENT/FORMAL:**

Carved stone:
```html
<span style="font-family: 'Times New Roman', serif; color: #8B8378; letter-spacing: 0.15em; text-transform: uppercase;">HERE LIES THE LAST KING</span>
```

Ancient runes:
```html
<span style="font-family: serif; color: #d4af37; font-style: italic; letter-spacing: 0.1em; text-shadow: 0 0 2px #d4af37;">*text in forgotten tongue*</span>
```

**MODERN/TECH:**

Neon sign:
```html
<span style="font-family: 'Arial', sans-serif; color: #0ff; text-shadow: 0 0 8px #0ff, 0 0 12px #0ff; text-transform: uppercase;">OPEN 24/7</span>
```

Computer screen:
```html
<span style="font-family: 'Courier New', monospace; color: #0f0; background: #000; padding: 2px 4px;">ACCESS DENIED</span>
```

**HANDWRITTEN:**

Hasty note:
```html
<span style="font-family: 'Georgia', serif; font-style: italic; color: #333;">meet me at the old bridge - M</span>
```

Elegant letter:
```html
<span style="font-family: 'Palatino', serif; font-style: italic; color: #2F4F4F; letter-spacing: 0.05em;">My Dearest...</span>
```

**GRAFFITI/STREET:**

Spray paint:
```html
<span style="font-family: 'Impact', sans-serif; color: #FF4444; text-transform: uppercase; letter-spacing: 2px;">RESIST</span>
```

Scratched into wall:
```html
<span style="font-family: serif; color: #8B7355; letter-spacing: 0.1em;">they are watching</span>
```

**WEATHERED/OLD:**

Faded sign:
```html
<span style="color: #A0A0A0; opacity: 0.7; letter-spacing: 0.1em;">...ELCOME TO... ...PRING VA...EY</span>
```

Aged parchment:
```html
<span style="font-family: serif; color: #8B7355; font-style: italic; opacity: 0.85;">The bearer of this seal shall...</span>
```

**IN PRACTICE:**

> The sign above the door was barely readable—<span style="color: #A0A0A0; opacity: 0.6;">...OTEL PARA...ISE</span>—most of the letters rusted away.
>
> Inside, someone had spray-painted across the lobby wall: <span style="font-family: sans-serif; color: #FF0000; text-transform: uppercase; letter-spacing: 1px;">GET OUT WHILE YOU CAN</span>
>
> She found the note tucked under the pillow. <span style="font-family: Georgia, serif; font-style: italic; color: #2F4F4F;">I'm sorry. I had no choice. —J</span>
>
> On the ancient door, the runes pulsed faintly: <span style="color: #6eb4ff; text-shadow: 0 0 4px #6eb4ff; letter-spacing: 0.1em;">*what sleeps here must not wake*</span>

**THE PRINCIPLE:**

Ask: What is this text? How was it made? How old is it? What condition is it in?

Then style accordingly. A blood message on a mirror looks different from a corporate memo looks different from a love letter looks different from an ancient prophecy.

