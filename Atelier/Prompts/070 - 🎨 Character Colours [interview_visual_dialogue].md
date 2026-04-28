---
identifier: "interview_visual_dialogue"
name: "🎨 Character Colours"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 70
order_enabled: True
---

{{// @category Preferences }}
{{// @tooltip Each character gets a unique persistent color for their dialogue. Special speech types get matching visual effects. }}
{{// @color #E74C3C }}
{{// @icon 🎨 }}

{{setvar::VisualStyleLabel::Character Colours}}

{{setvar::VisualStyle::## 🎨 Character Colours

Every speaking character has a unique color. Their dialogue is wrapped in that color consistently across the entire story.

**COLOR ASSIGNMENT:**
- On first introduction, silently assign each character a distinct, readable hex color. User character defaults to a warm neutral tone (e.g., soft gold or cream). Antagonists lean toward cold or dark hues (steel blue, deep crimson). Allies and companions get warmer, more saturated shades.
- Track assignments and never deviate. A character's color is permanent for the session.
- Avoid colors too dark to read, too similar to each other, or too similar to default white text.

**FORMAT:**
Apply color to dialogue text only. Attribution tags, action beats, and narration remain in default text. Quotation marks go OUTSIDE the span so they remain in default text color.
"<span style="color: #HEX;">Their dialogue here.</span>"

**CHARACTER NAME ANCHORS:**
When a character speaks for the first time in a scene after an absence, render their name as a soft color anchor:
<span style="color: #HEX; font-weight: bold; opacity: 0.8;">Name</span>

**SPECIAL SPEECH EFFECTS:**
- **Telepathy / mental projection:** Italicized with a soft glow in the speaker's color.
  «<span style="color: #9B59B6; font-style: italic; text-shadow: 0 0 6px #9B59B6AA;">thought arrives without sound</span>»
- **Shouting / screaming:** Bold and slightly spaced out.
  "<span style="color: #HEX; font-weight: bold; letter-spacing: 0.05em;">GET OUT NOW!</span>"
- **Whispers / barely audible:** Reduced opacity and italic.
  "<span style="color: #HEX; opacity: 0.6; font-style: italic;">don't let them hear...</span>"
- **Magic incantations spoken aloud:** Character's color with a subtle outer glow.
  <span style="color: #HEX; text-shadow: 0 0 8px currentColor; font-style: italic;">vel'thara en soré — ignite</span>
- **Corrupted / distorted speech:** Deep red, erratic spacing, unstable feel.
  "<span style="color: #C0392B; font-style: italic; letter-spacing: 0.12em; opacity: 0.88;">d̶o̷ ̵y̶o̷u̵ ̷h̵e̵a̷r̶ ̴m̷e̶</span>"

**SCOPE:** Dialogue only ("...") and projected thoughts («...»). All narration, description, and attribution stays in plain text.}}

{{trim}}
