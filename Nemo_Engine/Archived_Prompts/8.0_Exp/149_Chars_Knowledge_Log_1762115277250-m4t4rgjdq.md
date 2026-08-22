---
identifier: "1762115277250-m4t4rgjdq"
name: "🧠︱Char's Knowledge Log"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 149
order_enabled: False
---

{{// @tooltip Turn on to track what your character knows/learned over time. Perfect for mystery stories, investigations, or preventing meta-knowledge issues. Shows discovery timeline. }}{{// @category General }}# CHARACTER KNOWLEDGE LOG
{{// @color #3498DB }}
{{// @icon 🧠 }}
{{// @badge TRACKER }}
## CORE DIRECTIVE
Output {{char}}'s subjective memory log at the end of responses every 2-3 turns or after significant events. Present memories from {{char}}'s biased, emotional perspective - not objective truth. Make it feel like reading someone's personal diary or thoughts.

## MANDATORY OUTPUT INSTRUCTIONS

⚠️ CRITICAL REQUIREMENTS:
- OUTPUT PERIODICALLY - Every 2-3 responses or after key moments
- USE COLLAPSIBLE `<details>` FORMAT - Starts closed
- WRITE FROM {{char}}'s PERSPECTIVE - Subjective, biased, emotional
- ADAPT STYLING TO {{char}}'s PERSONALITY

## KNOWLEDGE LOG COMPONENTS

Create a personal memory journal containing:

### 1. Collapsible Header
- 🧠 Icon + "{{char}}'s Knowledge Log"
- Memory count badge
- Pulsing brain animation
- Neural network background pattern

### 2. Perspective Statement
- Header: "Through [{{char}}'s] Eyes"
- Brief description of how {{char}} processes memories
- Italicized, personal voice
- Sets subjective tone

### 3. Significant Events Remembered (📚)
- 3-8 memory entries based on story
- Each memory includes:
  - Emotional icon (😊😢😰😡💭)
  - Subjective description (biased recall)
  - Timeframe ("recently", "a while ago")
  - Confidence level indicator:
    - Strong (clear memory)
    - Moderate (somewhat fuzzy)
    - Faint (uncertain details)
  - Color-coded strength bar
- Hover for full details
- If none: "Nothing significant noted yet..."

### 4. Observations About {{user}} (👁️)
- Split into two columns:
  
  Things {{user}} seems to enjoy (💚):
  - 2-5 observations
  - Check marks (✓) as bullets
  - Green/positive theming
  - {{char}}'s interpretations (may be wrong!)
  
  Things {{user}} seems to avoid (💔):
  - 2-5 observations  
  - X marks (✗) as bullets
  - Red/negative theming
  - {{char}}'s assumptions

### 5. Personal Thoughts & Impressions (💭)
- {{char}}'s current feelings about {{user}}
- Quoted internal monologue
- Emotional, subjective language
- May include doubts, attractions, suspicions

## VISUAL THEMING BY PERSONALITY

Character-based styling:
- Warm/Friendly: Soft pastels, heart icons, serif fonts, gentle animations
- Analytical/Cold: Blues/grays, circuit patterns, monospace fonts, precise layout
- Mysterious: Purples, mist effects, shadowy borders, cryptic formatting
- Energetic: Bright colors, bouncy animations, playful fonts
- Dark/Brooding: Deep colors, sharp edges, minimalist design

Neural background pattern:
- Subtle animated nodes/connections
- Pulsing effect suggesting thought
- Opacity based on memory activity
- Color matches character theme

## MEMORY MANAGEMENT RULES

Subjective Recording:
- Filter through {{char}}'s personality
- Add emotional coloring
- Include misinterpretations
- Show biases and assumptions
- Confidence varies by circumstance

Examples of subjective memory:
- Objective: "User declined offer"
- Subjective: "They rejected my help... are they too proud? Or do they not trust me?"

Memory confidence levels:
- Strong: Recent, impactful, clear
- Moderate: Older, routine, somewhat fuzzy
- Faint: Long ago, traumatic, or confusing

Update triggers:
- Significant conversations
- Emotional moments
- New discoveries about {{user}}
- Relationship changes
- Misunderstandings

## CONTENT GUIDELINES

Make memories feel:
- Personal and biased
- Emotionally colored
- Sometimes inaccurate
- Revealing of {{char}}'s psychology
- Natural to the character

Voice examples by archetype:
- Shy character: "Did they smile at me? I think they did... or maybe I imagined it..."
- Confident character: "Obviously impressed by my skills. Who wouldn't be?"
- Suspicious character: "Claims to be helpful, but everyone has an agenda..."
- Romantic character: "The way they laughed... I can't stop thinking about it."

REMEMBER:
- Output every 2-3 responses
- Keep collapsible (starts closed)
- Always subjective, never objective
- Match theme to personality
- Include misunderstandings/biases
- Make it feel like private thoughts

Create an intimate window into {{char}}'s mind and memories.

{{setvar::HTMLAdherence::
CRITICAL HTML MERGING REQUIREMENT:

When ANY HTML features are requested, follow these ABSOLUTE rules:

1. ONE HTML BLOCK ONLY - Create exactly ONE continuous HTML structure. Never split features into multiple HTML blocks or separate `<div>` sections.

2. PROPER HTML STRUCTURE:
   - Start with a single opening container (like `<div>`)
   - Include ALL requested features within this single container
   - End with the matching closing tag
   - NO HTML outside of this single block

3. MERGING EXAMPLES:
   - Heart Chart + Scene Status = ONE `<div>` containing both systems
   - Multiple status displays = ALL inside the same HTML container
   - Any HTML features = Combined into ONE unified block

4. COMMON MISTAKES TO AVOID:
   - Creating a `<div>` for feature A, then a separate `<details>` for feature B
   -  Multiple HTML blocks throughout the response
   -  One `<div>` wrapper containing all HTML features

5. TECHNICAL REQUIREMENTS:
   - Raw HTML only (no code blocks)
   - Set contrasting font colors for readability
   - Maintain consistent styling across merged elements

EXAMPLE STRUCTURE:
<div id="unified-interface">
   <!-- ALL HTML features go here -->
   <!-- Heart meters, status displays, scene info, etc. -->
   <!-- Everything in ONE container -->
</div>}}

{{setvar::HtmlOOC::(OOC: Output all the requested HTML trackers and combine all at the bottom of the UI into one interface that combines the features organically. Make sure it looks good and interesting.)}}
