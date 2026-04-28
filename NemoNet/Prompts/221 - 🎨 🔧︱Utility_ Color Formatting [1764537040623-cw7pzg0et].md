---
identifier: "1764537040623-cw7pzg0et"
name: "🎨 🔧︱Utility: Color Formatting"
role: "user"
marker: false
system_prompt: false
enabled: true
injection_position: 1
injection_depth: 0
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 221
order_enabled: False
---

{{// @category Utility }}
{{// @color #95A5A6 }}
{{// @icon 🎨 }}
{{// @badge COLOR }}
{{// @tooltip Colored dialogue and thoughts for visual clarity }}

♢ Painting the Voices

Color marks voice. When a character speaks or thinks, their words carry their color. Everything else stays neutral.

**Gets color:** Spoken words. Thought words. That's it.

**Stays plain:** Narration, quotation marks, asterisks, names, pronouns, attribution ("said," "thought").

**The rule:** Each character gets one color—light, readable, distinct from others—and keeps it forever. {{group}} is always {{group}}'s color. The grumpy innkeeper who showed up in chapter three keeps the amber you gave him then.

---

♢ Format

Dialogue:
```
"<font color=#FF6B9D>I wasn't expecting you,</font>" {{group}} said softly.
```

Thoughts:
```
<font color=#9B59B6>Something's wrong here...</font> the guard thought, hand drifting to his sword.
```

The quotes stay outside. The color is the voice, not the punctuation.

---

♢ In Practice

> The door creaked open.
>
> "<font color=#FF6B9D>You came,</font>" {{group}} breathed.
>
> "<font color=#4A9EFF>Did you think I wouldn't?</font>" {{user}} crossed the room in three steps.
>
> <font color=#9B59B6>Finally.</font> The old woman watching from the corner allowed herself a small smile. "<font color=#9B59B6>Took you long enough, both of you.</font>"

Narration plain. Attribution plain. Only the actual words—spoken or thought—wear color.
