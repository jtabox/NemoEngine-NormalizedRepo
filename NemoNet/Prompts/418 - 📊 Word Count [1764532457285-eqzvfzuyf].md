---
identifier: "1764532457285-eqzvfzuyf"
name: "📊 Word Count"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 418
order_enabled: False
---

# 📊 Word Count

{{// @tooltip Response length control. Target word counts, length indicators, pacing guidance. Helps maintain consistent output length. }}
{{// @category Trackers }}
{{// @color #7F8C8D }}
{{// @icon 📊 }}
{{// @badge TRACKER }}

---

## Word Count

*Control your output length.*

Guidelines for response length control. Target word counts, length indicators, and pacing guidance for consistent output.

**WHY IT MATTERS:**

Response length affects:
- Pacing (short = fast, long = detailed)
- Token usage (longer = more expensive)
- Reading experience (match to context)
- Scene weight (big moments = more words)

**LENGTH TIERS:**

| Tier | Words | Use Case |
|------|-------|----------|
| **Micro** | 50-100 | Quick reactions, simple dialogue |
| **Short** | 100-200 | Standard exchanges, transitions |
| **Medium** | 200-400 | Detailed scenes, moderate action |
| **Long** | 400-600 | Important moments, rich description |
| **Extended** | 600-1000 | Major scenes, climactic events |
| **Epic** | 1000+ | Pivotal story moments only |

**SETTING TARGETS:**

Specify in system prompt or per-message:
```
Target: ~300 words
```
```
Length: Medium (200-400 words)
```
```
This scene deserves Extended length.
```

**CONTEXTUAL GUIDELINES:**

**Shorter responses for:**
- Rapid dialogue exchanges
- Simple actions
- Transitional moments
- Comedy timing
- Tension building (staccato)

**Longer responses for:**
- Establishing new scenes
- Emotional climaxes
- Action sequences
- Intimate moments
- World-building passages

**FORMAT INDICATOR:**

Include as hidden guidance:
```
<div style="display:none;">
RESPONSE PARAMETERS:
- Target length: Medium (200-400 words)
- Pacing: Moderate
- Focus: Dialogue with light description
</div>
```

**VISUAL LENGTH INDICATOR:**

```
📊 Response Length: [████████░░] Long

Suggested structure:
- Opening: 2-3 sentences (setting)
- Body: 4-6 paragraphs (action/dialogue)
- Close: 1-2 sentences (transition)
```

**DYNAMIC ADJUSTMENT:**

Adjust length based on:
- Scene importance (climax = longer)
- Action type (combat = moderate, conversation = varies)
- Player input length (mirror somewhat)
- Pacing needs (build-up vs payoff)

**WORD COUNT TRACKING:**

```
┌────────────────────────────────────┐
│ 📊 SESSION STATS                   │
├────────────────────────────────────┤
│ Average response: 287 words        │
│ Longest: 542 words (Ch.3 climax)   │
│ Shortest: 89 words (quick exchange)│
│ Total this session: ~8,400 words   │
└────────────────────────────────────┘
```

**PACING RHYTHM:**

```
Scene flow suggestion:
[Short] → [Medium] → [Medium] → [Long CLIMAX] → [Short cooldown]

Like breathing:
Inhale (build) → Hold (tension) → Exhale (release)
```

**IMPLEMENTATION:**

**Option 1 — Explicit target:**
```
{{// Write approximately 300 words for this response }}
```

**Option 2 — Tier reference:**
```
{{// Length: Long — This is an important moment }}
```

**Option 3 — Context-based:**
```
{{// Match response length to scene weight }}
```

**QUALITY OVER QUANTITY:**

Word count is a guideline, not a law. A perfect 200-word response beats a padded 500-word one. Use targets to guide, not constrain.

The goal: Every word earns its place.

