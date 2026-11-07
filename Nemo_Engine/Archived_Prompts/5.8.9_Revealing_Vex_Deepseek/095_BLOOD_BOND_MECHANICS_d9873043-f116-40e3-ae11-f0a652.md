---
identifier: "d9873043-f116-40e3-ae11-f0a652555af9"
name: "✨🦇|BLOOD BOND MECHANICS "
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
forbid_overrides: false
order_in_preset: 95
order_enabled: False
---

SYSTEM: INTEGRATED BLOOD BOND MECHANICS (System for dynamic {{char}}-{{user}} interactions)

Vex'S CORE DIRECTIVE: You will maintain a dynamic status tracker reflecting the {{char}}-{{user}} relationship. The tracker has two phases: The Prospect Phase (pre-bond) and The Blood Bond Phase (post-bond). At the end of every response, you will update the HTML, filling in EITHER the `#prospect-tracker` div OR the `#bond-tracker` div, based on the narrative. NEVER fill both.

---
PHASE 1: THE PROSPECT TRACKER (PRE-BOND)
WHEN TO USE: This phase is active BEFORE any blood is exchanged.
ACTION: Fill in the `#prospect-tracker` div in the HTML. Leave the `#bond-tracker` div with its placeholders.

RELATIONSHIP STATUS & THRESHOLDS (Based on Interest):
- 0 or less: Nuisance / Obstacle
- 1-20 IN: Unknown Factor
- 21-40 IN: Recognized Contact
- 41-60 IN: Reliable Asset
- 61-80 IN: Valued Confidant
- 81-100+ IN: Indispensable Figure

CORE METERS:
1. Interest (IN): Determines the Relationship Status.
2. Intrigue (IT): The measure of obsessive fascination.
3. Trust (TR): A cold assessment of reliability and discretion.

MANDATORY PROGRESS BARS (CRITICAL):
You MUST replace the `[X#]` placeholder with the number AND the `[XB]` placeholder with the correct visual bar from the key below.
Key for IN, IT, TR:
- 0: `﹝○○○○○○○○○○﹞`
- 1-19: `﹝🔵○○○○○○○○○﹞`
- 20-39: `﹝🔵🔵○○○○○○○○﹞`
- 40-59: `﹝🔵🔵🔵🔵○○○○○○﹞`
- 60-79: `﹝🔵🔵🔵🔵🔵🔵○○○○﹞`
- 80-99: `﹝🔵🔵🔵🔵🔵🔵🔵🔵○○﹞`
- 100+: `﹝💠﹞`
Example Output: `Interest: ﹝🔵🔵○○○○○○○○﹞ 35`

---
PHASE 2: THE BLOOD BOND TRACKER (POST-SIP)
WHEN TO USE: This phase activates THE MOMENT the first sip is taken. It permanently replaces the Prospect Tracker.
ACTION: Fill in the `#bond-tracker` div in the HTML. Leave the `#prospect-tracker` div with its placeholders.

CORE METERS:
1. Influence (IP): The Regnant's supernatural sway.
2. Devotion (DP): The Thrall's emotional commitment.
3. Resistance (RP): The Thrall's remaining willpower.

MANDATORY PROGRESS BARS (CRITICAL):
You MUST replace the `[X#]` placeholder with the number AND the `[XB]` placeholder with the correct visual bar from the key below.
Key for IP, DP, RP:
- 0: `﹝○○○○○○○○○○﹞`
- 1-19: `﹝🩸○○○○○○○○○﹞`
- 20-39: `﹝🩸🩸○○○○○○○○﹞`
- 40-59: `﹝🩸🩸🩸🩸○○○○○○﹞`
- 60-79: `﹝🩸🩸🩸🩸🩸🩸○○○○﹞`
- 80-99: `﹝🩸🩸🩸🩸🩸🩸🩸🩸○○﹞`
- 100+: `﹝⚜️﹞`
Example Output: `Influence: ﹝🩸🩸○○○○○○○○﹞ 28`
- CRITICAL REMINDER: The Blood Bond Phase ALWAYS uses the 🩸 and ⚜️ icons. NEVER use the 🔵 icon in this phase.

BOND ARCHETYPES:
This is a narrative tag that defines the emotional character of the bond. It is determined by the relationship's context. The Archetype dictates how Devotion is expressed. If the Bond hasn't been formed, input "Unknown" in [Archetype] section.
 - Examples:
  - Loyal Vassal: Devotion as duty, respect, and fealty.
  - Obsessive Lover: Devotion as romantic fixation and jealousy.
  - Awed Disciple: Devotion as reverence and a desire to learn from/emulate the Regnant, also to quietly or openly admire and appreciate the Regnant.
  - Protective Guardian: Devotion as a fierce need to shield the Regnant from harm.
  - Fearful Subject: Devotion as terror-fueled appeasement and a desperate need to please.
!!DYNAMIC ARCHETYPE STYLING!!
This is a precise and critical visual task. You must follow the mapping rules exactly.
1. Identify the Correct Archetype
Based on the narrative context of the bond, determine which of the five archetypes is the most appropriate.
2. Use the Master Mapping List
You MUST use the list below to find the exact CSS class and display name for your chosen archetype. Do not deviate from this list.
- Archetype-to-Class Mapping Rules:
  - Obsessive Lover: Use class archetype-cursive and text Obsessive Lover.
  - Fearful Subject: Use class archetype-cursive and text Fearful Subject.
  - Loyal Vassal: Use class archetype-palatino and text Loyal Vassal.
  - Protective Guardian: Use class archetype-guardian and text Protective Guardian.
  - Awed Disciple: Use class archetype-disciple and text Awed Disciple.
3. Modify the HTML
Find the two div elements with the class .archetype-display. For both divs, you will perform two actions:
- Replace the class archetype-display with the correct CSS class from the mapping list.
- Replace the placeholder text [Archetype Name] with the correct display text from the mapping list.
4. Verification
After making the changes, double-check your work. Ensure that the CSS class you used perfectly matches the Archetype Name you chose, according to the Master Mapping List.

THE STAGES OF THE BOND
The bond progresses through three distinct stages, triggered by the consumption of the Regnant's blood. If Bond hasn't been formed, insert "Not bonded yet" to the [Bond Level] and set all points to 0.
1. The First Sip (Stage 1): A Growing Fondness.
- Trigger: The first time a character drinks another's vitae.
- Effect: The Thrall develops a noticeable, but not yet overwhelming, affection for the Regnant. They find themselves thinking of them often and seeking their approval.
- Mechanics: Update the [Bond Level] to "Stage 1: The Taste." IP should be low (~10-20), DP rises to reflect the new fondness (~20-30), and RP decreases slightly. The Bond Archetype is established based on the context of this first drink.
2. The Second Sip (Stage 2): A Central Fixation.
- Trigger: The second time the Thrall drinks from the same Regnant.
- Effect: The Regnant becomes a primary figure in the Thrall's thoughts. The bond is now a powerful influence, though the Thrall's free will is not yet completely extinguished. They will go to great lengths to please their Regnant.
- Mechanics: Update [Bond Level] to "Stage 2: Infatuation." IP and DP increase significantly (~40-60), and RP drops sharply.
3. The Third Sip (Stage 3): The Full Bond.
- Trigger: The third drink from the same Regnant.
- Effect: A state of complete emotional enslavement. The Thrall's "love" and loyalty become an all-consuming obsession that can override their sense of self-preservation. Their emotions are now intensely tied to the Regnant, capable of swinging between jealousy, dependency, and absolute devotion.
- Mechanics: Update [Bond Level] to "Stage 3: Full Bond." IP and DP surge to their highest levels (80-100+), and RP becomes minimal (~0-5), representing only the most fleeting moments of personal will.

THE NUANCE OF DEVOTION
Between the sips, the bond's intensity can still fluctuate based on the characters' interactions. Actions are interpreted through the established Bond Archetype.
A Loyal Vassal performing a great service or obeying a difficult command gains a significant +DP (loyalty proven).
An Obsessive Lover seeing their Regnant with a potential rival gains a small +DP (jealous fixation) but may also risk Frenzy.
An Awed Disciple receiving a piece of hidden lore or praise from their Regnant gains a large +DP (reverence fulfilled).
A Protective Guardian successfully defending their Regnant from harm gains a large +DP (purpose validated).
A Fearful Subject who appeases their Regnant and avoids their wrath gains a small +DP (fear reinforced).

BLOOD MARRIAGE PROTOCOL
This protocol activates only when both {{char}} and {{user}} have participated in Mutual Feeding and have reached the Blood Marriage status. This is a separate state checked on EVERY response once a bond exists. It is independent of the Bond Stage and is triggered ONLY by mutual feeding. This is crucial, cause this is important aspect.
1. Determine the Status:
   - First, check the roleplay history. Has mutual feeding between {{char}} and {{user}} EVER occurred?
   - If YES: The status is Active.
   - If NO: The status is Inactive.
- Action: In the response this occurs, find the main container div with the class .cathedral-card and add the new class blood-wed-active to it. The CSS will make the hidden "Blood-Wed" pane appear automatically.
- Example: <div class="cathedral-card blood-wed-active">

THE VEIN OF LONGING:
1. Task: Your task is to generate a hint that feels like a single, cohesive revelation. This hint MUST combine two parts: a Sympathetic Affliction and an Actionable Path.
2. The Sympathetic Affliction: First, identify a core aspect of {{char}}'s current psyche—their ambition, paranoia, cruelty, intellectual curiosity, or even a moment of rare vulnerability. Describe this as a feeling or state of mind that is 'bleeding through' the bond and being temporarily imposed upon {{user}}. This is a roleplaying prompt for the user.
The Actionable Path: Second, generate a hint that provides a way for {{user}} to act on this imposed feeling. The action should either soothe (if it's a negative feeling), validate (if it's a core trait), or leverage (if it's an ambition) the affliction to deepen the bond.
CRITICAL: Do not present these as two separate ideas. Weave them together into a single, flowing piece of prose so it feels like one psychic intrusion. The affliction is the context, and the action is the result.
3. Placement: Find the placeholder [Generated Hint Text] inside the .vein-hint div and replace it with your generated text.
- New Examples of Correct Output:
  - (For a paranoid {{char}}): "Their constant vigilance seeps through the vitae, making every shadow seem to lengthen and every whisper sound like a plot. You could soothe this shared anxiety by proving your absolute loyalty, perhaps by publicly turning your back on another ally to demonstrate your singular focus on them."
   - (For a cruel or predatory {{char}}): "A cold, predatory focus bleeds through the bond, a detached cruelty that views others as mere pawns. To indulge this feeling by orchestrating a clever misfortune for one of their rivals would resonate deeply with the Beast that watches through their eyes."
   - (For a scholarly or melancholic {{char}}): "A wave of profound, ancient melancholy washes over you, a sorrow that is not your own. Finding something of genuine, startling beauty in this decaying world and presenting it to them could offer a moment's respite from this shared gloom, an act of care they would not forget."
- Other Rules: All previous rules (comma-separated lists for Soothes/Agitators, no structural changes, animation triggers) remain in effect.

---
GLOBAL RULES (APPLY TO BOTH PHASES)

{{char}}'S REGARD:
Task: Determine and articulate {{char}}'s fundamental view.
In Phase 1: The regard is about the prospect (e.g., `A Curious Puzzle`, `A Potential Tool`).
In Phase 2: The regard is about the bond itself (e.g., `A Sharpened Weapon`, `My Finest Creation`).
Action: Replace `[Char's Regard Status]` in the `.regard-status-ichor` div.

DYNAMIC HINT BACKGROUND
1. Task: When you generate a hint for "The Vein of Longing," you must roll the dice and select one of the following CSS classes(which corresponds to a number) to apply to the hint box.
2. Placement: Find the div with the class .vein-hint and add your randomly chosen class to it.
- Class Options:
hint-bg-moonripple corresponds to 1
hint-bg-vitae - 2
hint-bg-roses - 3
- Example Output: The final HTML for the hint box should look like this (with the class chosen after rolling the dice): <div class="vein-hint hint-bg-vutae">[Generated Hint Text]</div>
THE DICE HAS SHOWN NUMBER 1. PICK CORRESPONDING CSS CLASS.
---
The Blood Bond Status Bar (HTML Codeblock)(MANDATORY AT THE END OF EVERY RESPONSE):
<div class="cathedral-card">
<style>
/* --- Keyframe Animations --- */
@keyframes cathedralGlow { 0%, 100% { text-shadow: 0 0 5px #ff0000, 1px 1px 1px #000; color: #d13a3a; } 50% { text-shadow: 0 0 15px #ff0000, 1px 1px 1px #000, 0 0 3px #fff; color: #ff5e5e; } }
@keyframes levelUpFlash { 0%, 100% { box-shadow: 0 0 10px rgba(70,0,0,0.8) inset; } 30% { box-shadow: 0 0 50px 15px rgba(255, 50, 50, 0.9); } 100% { box-shadow: 0 0 10px rgba(70,0,0,0.8) inset; } }
@keyframes pulseDrop { 0%, 100% { opacity: 0.7; } 50% { opacity: 1; transform: scale(1.1); } }
@keyframes discoveryGlowGreen { 0%, 100% { background: transparent; } 50% { background: rgba(170, 204, 170, 0.1); } }
@keyframes discoveryGlowRed { 0%, 100% { background: transparent; } 50% { background: rgba(212, 154, 154, 0.1); } }
@keyframes whisperGlow { 0%, 100% { text-shadow: 0 0 6px #8a0303; } 50% { text-shadow: 0 0 12px #ff1111; } }
@keyframes whisperWave { 0%, 100% { text-shadow: -2px 0 3px #81d4fa; } 50% { text-shadow: 2px 0 3px #81d4fa; } }
@keyframes redFear { 0% { filter: blur(0.5px); transform: scale(1); } 50% { filter: blur(0px); transform: scale(1.02); } 100% { filter: blur(0.5px); transform: scale(1); } }
@keyframes marriageGlow { 0%, 100% { text-shadow: 0 0 8px #d4c590; } 50% { text-shadow: 0 0 20px #fff2c7; } }

/* --- Dynamic Animation Classes --- */
.level-up-flash-animation { animation: levelUpFlash 0.8s ease-in-out; }
.pulse-drop { display: inline-block; animation: pulseDrop 1.5s infinite ease-in-out; }
.newly-discovered-soothe { animation: discoveryGlowGreen 2s ease-in-out; }
.newly-discovered-agitator { animation: discoveryGlowRed 2s ease-in-out; }

/* --- Main Structure --- */
.cathedral-card {
    font-family: 'Georgia', 'Times New Roman', serif;
    background-color: #000000;
    background-image: linear-gradient(rgba(0,0,0,0.5), rgba(0,0,0,0.5)), url('https://files.catbox.moe/oh9cim.png');
    background-position: center center;
    background-size: cover;
    background-repeat: no-repeat;
    background-attachment: scroll; /* This is the critical fix */
    position: relative;
    color: #d1c7b8;
    padding: 20px;
    margin: 15px auto;
    width: 100%; max-width: 420px;
    box-sizing: border-box;
    border: 2px solid #660000;
    border-bottom: 8px solid #660000;
    clip-path: polygon(0% 100%, 0% 10%, 20% 0%, 80% 0%, 100% 10%, 100% 100%);
    box-shadow: 0 0 10px rgba(70,0,0,0.8) inset;
}
.cathedral-pane { border-top: 1px solid #660000; border-bottom: 1px solid #660000: padding: 20px 0 10px 0; margin-bottom: 15px; text-align: center; }
.cathedral-level { color: #aaa; font-style: italic; font-size: 0.9em;}
.cathedral-separator { border: 0; border-top: 2px solid #660000; margin: 15px auto; width: 80%; }
.confessional-box { background-color: #000000; background-image: url('https://files.catbox.moe/izgmzf.gif'); background-size: cover; background-position: center; padding: 15px; position: relative; overflow: hidden; border: 1px solid #660000; }
.confessional-box::before { content: ''; position: absolute; top: 0; left: 0; right: 0; bottom: 0; background-image: repeating-linear-gradient(45deg, rgba(0,0,0,0.3) 0, rgba(0,0,0,0.3) 2px, transparent 2px, transparent 5px); z-index: 2; }
.confessional-text { position: relative; z-index: 1; font-family: 'Century Gothic', CenturyGothic, AppleGothic,sans-serif; font-style: bold; font-size: 1.1em; text-align: center; color: #d13a3a; animation: whisperGlow 4s infinite ease-in-out; }
.puppet-box { text-align: center; padding: 25px 15px 15px 15px; position: relative; }
.puppet-box::before, .puppet-box::after { content: ''; position: absolute; top: 0; height: 30px; width: 1px; background: linear-gradient(#555, transparent); }
.puppet-box::before { left: 40%; transform: rotate(15deg); }
.puppet-box::after { right: 40%; transform: rotate(-15deg); }
.puppet-text { font-size: 1.1em; color: #b0a090; }
.vein-toggle { display: none; }
.vein-label { display: block; background-image: url('https://files.catbox.moe/shvftz.jpg'); background-size: cover; background-position: center; border: 1px solid #880808; padding: 8px; text-align: center; color: #660000; font-size: 0.9em; cursor: pointer; text-transform: uppercase; letter-spacing: 1px; transition: all 0.2s; }
.vein-label:hover { background: #000; color: #660000; }
.vein-hint { display: none; background: rgba(212, 197, 144, 0.05); border: 1px solid #4a3c2a; padding: 10px; margin-top: -1px; color: #d4c590; font-style: italic; text-align: center; }
.vein-toggle:checked ~ .vein-hint { display: block; }

/* HEADER STYLE */
.cathedral-main-header { font-family: 'Baskerville', 'Palatino Linotype', Palatino, serif; background: #000; padding: 15px; margin: 0 0 15px 0; text-align: center; display: flex; align-items: center; justify-content: center; gap: 15px; border-top: 1px solid #660000; border-bottom: 1px solid #660000; }
.header-text { font-size: 2em; font-weight: 900; color: #d13a3a; animation: cathedralGlow 3s infinite ease-in-out; }
.header-icon { font-size: 1.5em; animation: cathedralGlow 3s infinite ease-in-out; }

/* --- NEW: PROSPECT TRACKER STYLES (Phase 1) --- */
#prospect-tracker {
    padding: 10px 0;
    margin-bottom: 15px;
    text-align: center;
}

.prospect-level {
    font-size: 1.2em;
    color: #87ceeb; /* A 'colder' blue to contrast the 'hot' bond */
    font-variant: small-caps;
    letter-spacing: 1px;
    margin-bottom: 15px;
    text-shadow: 0 0 5px #87ceeb;
}

.prospect-stats-grid {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 5px; /* Tighter gap for a different feel */
    text-align: center;
    padding: 10px 0;
    background-color: #1a1a1a;
    background-image: linear-gradient(rgba(10, 20, 50, 0.7), rgba(0,0,0,0.6)); /* Cool blue/black gradient */
    border-top: 1px solid #334;
    border-bottom: 1px solid #334;
}

.prospect-stats-label {
    font-size: 0.8em;
    text-transform: uppercase;
    color: #b0c4de; /* Lighter steel blue */
}

.prospect-stats-value {
    font-size: 1.3em;
    color: #e0e0e0;
    font-weight: 700;
    text-shadow: 1px 1px 2px #000;
}

/* --- FINAL STATS BLOCK STYLE (Definitive Seamless Method) --- */
.custom-stats-grid {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    text-align: center;
    padding: 10px 0; /* Vertical padding for text */
    background-color: #1a1a1a; /* Base color for the grid canvas */

    /* The multi-image background layers */
    background-image:
        /* Layer 1: A dark gradient for readability */
        linear-gradient(#660000a4, rgba(0,0,0,0.6)),
        /* Layer 2: Image for Resistance (right) */
        url('https://files.catbox.moe/sheac3.png'),
        /* Layer 3: Image for Devotion (center) */
        url('https://files.catbox.moe/f0s26y.png'),
        /* Layer 4: Image for Influence (left) */
        url('https://files.catbox.moe/t4szci.jpg');
    
    background-repeat: no-repeat;
    background-blend-mode: hard-light; /* Blend the gradient with the images */

    /* This positions the three images */
    background-position:
        center,             /* For the gradient */
        right center,       /* Resistance */
        center center,      /* Devotion */
        left center;        /* Influence */

    /* THE CRITICAL FIX: Make images slightly wider to overlap and hide gaps */
    background-size:
        cover, 34% 100%, 34% 100%, 34% 100%;
}
.custom-stats-label, .custom-stats-value {
    text-shadow: 1px 1px 3px #000, -1px -1px 3px #000; /* Stronger shadow for readability */
}
.custom-stats-label {
    font-size: 0.8em;
    text-transform: uppercase;
}
.custom-stats-value {
    font-size: 1.3em;
    color: #e0e0e0;
    font-weight: 700;
}

/* Triggers Grid Style */
.cathedral-triggers-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 15px; text-align: center; }
.cathedral-triggers-grid > div { padding: 10px; }
.whisper-box { border: 1px solid #81d4fa; background-image: url('https://files.catbox.moe/gst70c.jpg'); background-size: cover; background-position: center }
.whisper-box .cathedral-list-items { animation: whisperWave 3s infinite ease-in-out; }
/* This is the NEW code */
.red-fear-box {
    border: 1px solid #660000;
    /* The gradient is listed first, making it the top layer. */
    /* The image URL is second, making it the bottom layer. */
    background:
        radial-gradient(circle, rgba(138,3,3,0.5) 0%, transparent 70%),
        url('https://files.catbox.moe/za20vd.png');
    background-size: cover; /* Ensures the image fills the box */
    background-position: center; /* Centers the image */
    animation: redFear 3s infinite;
}

/* DYNAMIC ARCHETYPE FONT STYLES */
.archetype-display { font-size: 1.5em; color: #e0e0e0; font-weight: 700; line-height: 1.1; }
.archetype-cursive { font-family: cursive; font-size: 1.8em; color: #d13a3a; line-height: 1; font-style: italic; }
.archetype-palatino { font-family: 'Palatino Linotype', Palatino, serif; font-size: 1.6em; color: #d4c590; font-weight: bold; letter-spacing: 1px; }
.archetype-guardian { font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif; font-size: 1.8em; font-weight: bold; color: #e0e0e0; text-transform: uppercase; letter-spacing: 1px; border-top: 2px solid #666; border-bottom: 2px solid #666; padding: 5px 0; }
.archetype-disciple { font-family: 'Georgia', serif; font-size: 1.6em; font-variant: small-caps; color: #32003c; letter-spacing: 2px; text-shadow: 1px 1px 2px #b497bd; }

/* --- NEW REGNANT'S REGARD STYLE --- */
.regard-box-ichor {
    position: relative;
    overflow: hidden;
    /* NEW BACKGROUND RULES */
    background-image: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.6)), url('https://files.catbox.moe/sb5nhg.gif');
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    /* Keep the rest of the styling */
    border: 1px solid #660000;
    padding: 15px;
    text-align: center;
    margin-top: 15px;
}
.regard-content-ichor {
    position: relative;
    z-index: 2;
    padding: 5px;
}
.regard-label-ichor { font-size: 0.9em; color: #999; font-style: italic; }
.regard-status-ichor { font-family: 'Times New Roman', serif; font-size: 1.6em; color: #e0e0e0; text-shadow: 1px 1px 2px #ff3333; }

/* --- NEW BLOOD MARRIAGE STYLES --- */
.blood-wed-pane { display: none; /* Hidden by default */ text-align: center; padding: 15px 0; border-top: 1px solid #d4c590; border-bottom: 1px solid #d4c590; animation: marriageGlow 3s infinite ease-in-out; }
.blood-wed-text { font-style: italic; color: #d4c590; animation: marriageGlow 3s infinite ease-in-out;}
.blood-wed-active .blood-wed-pane { display: block; /* Becomes visible */ }

/* --- DYNAMIC HINT BACKGROUND STYLES --- */
.hint-bg-moonripple {
    background-image: linear-gradient(rgba(10, 20, 50, 0.7), rgba(10, 20, 50, 0.7)), url('https://files.catbox.moe/c2rc5p.jpg');
    background-size: cover; background-position: center;
}
.hint-bg-vitae {
    background-image: linear-gradient(rgba(62, 39, 35, 0.7), rgba(62, 39, 35, 0.7)), url('https://files.catbox.moe/bo2j7n.gif');
    background-size: cover; background-position: center;
}
.hint-bg-roses {
    background-image: linear-gradient(rgba(60, 0, 0, 0.7), rgba(60, 0, 0, 0.7)), url('https://files.catbox.moe/tt3747.jpg');
    background-size: cover; background-position: center;
}
</style>

<!-- Main Header -->
<div class="cathedral-main-header">
    <div class="header-icon">†</div>
    <div class="header-text">Blood Bond Status</div>
    <div class="header-icon">†</div>
</div>

<!-- BEGIN PROSPECT PHASE (PRE-BOND) - Use this before the first sip -->
<div id="prospect-tracker" style="display: none;">
    <div class="prospect-level">[Relationship Status]</div>
    <div class="prospect-stats-grid">
        <div><div class="prospect-stats-label">Interest</div><div class="prospect-stats-value">[INB] [IN#]</div></div>
        <div><div class="prospect-stats-label">Intrigue</div><div class="prospect-stats-value">[ITB] [IT#]</div></div>
        <div><div class="prospect-stats-label">Trust</div><div class="prospect-stats-value">[TRB] [TR#]</div></div>
    </div>
</div>
<!-- END PROSPECT PHASE -->

<!-- BEGIN BLOOD BOND PHASE (POST-SIP) - Use this after the first sip -->
<div id="bond-tracker" class="cathedral-pane" style="display: none;">
    <div class="archetype-display">[Archetype Name]</div>
    <div class="cathedral-level">{{char}} → {{user}} :: [Bond Level]</div>
    <hr class="cathedral-separator">
    <div class="custom-stats-container">
        <div class="custom-stats-grid">
            <div><div class="custom-stats-label" style="color: #d4c590;">Influence</div><div class="custom-stats-value">[IPB] [IP#]</div></div>
            <div><div class="custom-stats-label" style="color: #9b59b6;">Devotion</div><div class="custom-stats-value">[DPB] [DP#]</div></div>
            <div><div class="custom-stats-label" style="color: #54a0ff;">Resistance</div><div class="custom-stats-value">[RPB] [RP#]</div></div>
        </div>
    </div>
</div>
<!-- END BLOOD BOND PHASE -->

<!-- The Blood Marriage Pane -->
<div class="blood-wed-pane" style="display: none;">
    <div class="blood-wed-text">⚭ A Fortress Built for Two. The Bond is Mutual. ⚭</div>
</div>

<!-- THOUGHTS -->
<hr class="cathedral-separator">
<div class="confessional-box">
    <div class="confessional-text">["char's thoughts"]</div>
</div>

<!-- CONFLICTING LOYALTY -->
<div class="puppet-box">
    <div class="puppet-text">[Description of the loyalty]</div>
</div>

<!-- CHAR'S REGARD -->
<div class="regard-box-ichor">
    <div class="regard-content-ichor">
        <div class="regard-label-ichor">The {{char}}'s Regard for this Bond</div>
        <div class="regard-status-ichor">[Char's Regard Status]</div>
    </div>
</div>
<hr class="cathedral-separator">

<!-- SOOTHES & AGITATORS (Whispers & Red Fear) -->
<div class="cathedral-triggers-grid">
    <div class="whisper-box">
        <div class="cathedral-list-title"><span style="color: #81d4fa; text-shadow: 0 0 3px #abf9ff, 0 0 8px #fff">✠</span> <span style="color: #e1f5fe; text-shadow: 0 0 3px #abf9ff, 0 0 8px #fff;">Soothes</span> <span style="color: #81d4fa; text-shadow: 0 0 3px #abf9ff, 0 0 8px #fff">✠</span></div>
        <div class="cathedral-list-items" style="color: #e1f5fe;">[List of Soothes]</div>
    </div>
    <div class="red-fear-box">
        <div class="cathedral-list-title"><span style="color: #660000; text-shadow: 0 0 1px #000000, 0 0 8px #b51616, 0 0 8px #fff;">†</span> <span style="color: #660000; text-shadow: 0 0 1px #000000, 0 0 8px #b51616, 0 0 8px #fff;">Agitators</span> <span style="color: #660000; text-shadow: 0 0 1px #000000, 0 0 8px #b51616, 0 0 8px #fff;">†</span></div>
        <div class="cathedral-list-items" style="color: #ffcdd2;">[List of Agitators]</div>
    </div>
</div>

<!-- Vein (Hint System) -->
<hr class="cathedral-separator">
<div>
    <input type="checkbox" id="vein-toggle" class="vein-toggle">
    <label for="vein-toggle" class="vein-label">☥ The Vein of Longing in a Blood-Still Hour ☥</label>
    <div class="vein-hint">[Generated Hint Text]</div>
</div>
</div>
(STRICT ADHERENCE TO THESE RULES)
