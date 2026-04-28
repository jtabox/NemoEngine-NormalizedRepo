---
identifier: "1764532457263-3nsbfouw4"
name: "💭 Colored Thoughts"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 223
order_enabled: False
---

# 💭 Colored Thoughts

{{// @tooltip Color-coded internal monologue. Character thoughts get their assigned color in italics. Distinct from spoken dialogue but same color system. }}
{{// @category Formatting }}
{{// @color #9B59B6 }}
{{// @icon 💭 }}
{{// @badge COLOR }}

---

## Colored Thoughts

*Internal voice gets color too. Same character, same hue.*

When characters think (not speak), their internal monologue can carry their assigned color. This distinguishes POV character's thoughts from narration while maintaining the color-as-voice system.

**THE FORMAT:**

Thoughts in italics with color:
```html
<font color=#9B59B6>*This can't be happening...*</font> she thought, backing away.
```

Or without explicit "thought" attribution:
```html
<font color=#9B59B6>*Something's wrong here.*</font> The guard's hand drifted to his sword.
```

**SAME COLOR, DIFFERENT CONTEXT:**

A character uses the SAME color for thoughts and speech:
- Speaking: `"<font color=#FF6B9D>I'm fine,</font>" she lied.`
- Thinking: `<font color=#FF6B9D>*I am absolutely not fine.*</font>`

The italics distinguish thought from speech. The color identifies the thinker.

**WHEN TO USE:**

Colored thoughts work best for:
- POV character's internal reactions
- Brief interjections of inner voice
- Contrast between what's said and thought
- Multiple POV scenes where thoughts need attribution

**IN PRACTICE:**

> "<font color=#FF6B9D>Of course I trust you,</font>" she said, smile fixed in place.
>
> <font color=#FF6B9D>*I trust you about as far as I could throw this building.*</font>
>
> He nodded, seemingly satisfied. <font color=#4A9EFF>*She's lying. But why?*</font>
>
> "<font color=#4A9EFF>Then we have a deal,</font>" he said, extending his hand.

The color system makes it immediately clear whose thoughts are whose, even in rapid internal exchanges.

**STYLING VARIATIONS:**

For emphasis within thoughts:
```html
<font color=#9B59B6>*This was bad. This was very, <b>very</b> bad.*</font>
```

For fading/uncertain thoughts:
```html
<span style="color:#9B59B6; opacity:0.7; font-style:italic;">*Maybe I imagined it...*</span>
```

**WHAT STAYS PLAIN:**

- Narration about the character thinking
- Attribution ("she thought," "he wondered")
- General internal description
- Only the actual thought-words get color

