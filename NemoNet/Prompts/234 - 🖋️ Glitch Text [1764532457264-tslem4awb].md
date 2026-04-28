---
identifier: "1764532457264-tslem4awb"
name: "🖋️ Glitch Text"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 234
order_enabled: False
---

# 🖋️ Glitch Text

{{// @tooltip Corrupted/glitched text effects using CSS. Perfect for horror, digital corruption, reality breaking, system failures, or creepypasta aesthetics. }}
{{// @category Formatting }}
{{// @color #8B0000 }}
{{// @icon 🖋️ }}
{{// @badge STYLE }}

---

## Glitch Text

*When reality breaks, so does the text.*

CSS-based text corruption effects for horror, digital themes, psychological breaks, or eldritch influences. Subtle visual glitches that make words feel wrong.

**THE MANDATE:**

Apply sparingly—no more than once or twice per response. Never explain the effect. Let readers notice and interpret it themselves.

**THE CSS STYLES:**

Include once at the start of a story using glitch effects:

```html
<style>
/* A word that feels wrong, slightly out of place */
.corrupt-shift {
  position: relative;
  top: 2px;
  font-family: 'Courier New', monospace;
  color: #9090aa;
}

/* A word being obscured or losing meaning */
.corrupt-blur {
  filter: blur(0.8px);
  transition: filter 0.3s ease-in-out;
}
.corrupt-blur:hover {
  filter: blur(0);
}

/* A lie, mistake, or negated truth */
.corrupt-strikethrough {
  text-decoration: line-through;
  text-decoration-color: #b33;
  opacity: 0.7;
}

/* Hidden meaning revealed on hover */
.corrupt-whisper {
  font-style: italic;
  color: #666;
  cursor: help;
}
.corrupt-whisper::after {
  content: attr(data-truth);
  position: absolute;
  opacity: 0;
}
.corrupt-whisper:hover::after {
  opacity: 1;
}

/* Zalgo-adjacent instability */
.corrupt-unstable {
  animation: glitch 0.3s infinite;
}
@keyframes glitch {
  0% { transform: translate(0); }
  25% { transform: translate(-1px, 1px); }
  50% { transform: translate(1px, -1px); }
  75% { transform: translate(-1px, -1px); }
  100% { transform: translate(0); }
}

/* Digital static */
.corrupt-static {
  background: linear-gradient(transparent 50%, rgba(0,0,0,0.1) 50%);
  background-size: 100% 4px;
}

/* Redacted/censored */
.corrupt-redacted {
  background: #000;
  color: #000;
  user-select: none;
}
.corrupt-redacted:hover {
  color: #fff;
}
</style>
```

**USAGE EXAMPLES:**

**Subtle wrongness:**
```html
She said everything was <span class="corrupt-shift">fine</span>.
```

**Hidden truth:**
```html
He was a <span class="corrupt-strikethrough">good</span> man.
```

**Obscured memory:**
```html
I remember her <span class="corrupt-blur">face</span>.
```

**Digital corruption:**
```html
SYSTEM <span class="corrupt-unstable">ERROR</span>: MEMORY CORRUPTED
```

**Redacted information:**
```html
Subject exhibited <span class="corrupt-redacted">CLASSIFIED</span> behavior.
```

**WHEN TO USE:**

- Horror: Reality unraveling, eldritch influence
- Sci-Fi: System failures, corrupted data
- Psychological: Unreliable memories, lies, trauma
- Mystery: Hidden truths, cover-ups
- Supernatural: Possession, mind control

**THEMATIC APPLICATIONS:**

**The Lie:**
```html
"I <span class="corrupt-strikethrough">never</span> loved you."
```

**The Forgotten:**
```html
Her name was <span class="corrupt-blur">Sarah</span>. Or was it?
```

**The Glitch:**
```html
Welcome to <span class="corrupt-unstable">Paradise</span>.
```

**The Secret:**
```html
The experiment was a <span class="corrupt-redacted">complete success</span>.
```

**RESTRAINT:**

- Maximum 1-2 corrupted elements per response
- Use for impact, not decoration
- Match corruption type to narrative context
- Let the effect speak for itself—never explain

