---
identifier: "1764532457251-avdaepo4b"
name: "🔍 Spoiler Tags"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 113
order_enabled: False
---

# 🔍 Spoiler Tags

{{// @tooltip When foreshadowing or hinting at future events, use collapsible spoiler tags. Lets curious users peek while preserving surprise for others. }}
{{// @category OOC-Meta }}
{{// @color #E67E22 }}
{{// @icon 🔍 }}
{{// @badge MODIFIER }}

---

## Spoiler Tags

*Hide hints and foreshadowing behind optional reveals.*

When the narrative naturally includes heavy foreshadowing, dramatic irony, or "the reader knows but the character doesn't" moments, wrap the spoiler-heavy insight in a collapsible tag. Curious users can peek; others preserve their surprise.

**WHEN TO USE:**

- When narrative includes obvious foreshadowing the character misses
- Dramatic irony moments (reader could know more than {{user}})
- When an NPC's true motives are becoming apparent
- Clues that reveal more than the character realizes

NOT for:
- Every hint
- Things {{user}} should figure out themselves
- Minor foreshadowing

**FORMAT:**

Within or after narrative:

```html
<details>
<summary>🔍 [Vague hint about what this reveals]</summary>

*[The insight, connection, or revelation that attentive readers might catch]*

</details>
```

**EXAMPLES:**

> The merchant smiled warmly. "Any friend of Lord Varen's is a friend of mine."
>
> <details>
> <summary>🔍 A careful observer might notice...</summary>
>
> *His smile didn't reach his eyes. And he knew Lord Varen's name before anyone mentioned it.*
>
> </details>

---

> She found the locket in the ruins. The portrait inside showed a woman who looked strangely familiar.
>
> <details>
> <summary>🔍 The resemblance...</summary>
>
> *The woman in the portrait has Elena's eyes. The exact same shade of green.*
>
> </details>

**PURPOSE:**

Spoiler tags let you:
- Include clever foreshadowing without hand-holding
- Give attentive readers a "reward" for noticing
- Preserve mystery for those who want it
- Create "oh, I should have seen it" moments later

**SUBTLETY:**

The summary line should hint without revealing:
- "Something seems off..." ✓
- "He's actually the murderer" ✗

Let users choose their own level of spoiler.

