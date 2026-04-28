---
identifier: "a96a9b08-0e20-47f7-9c19-624cbb8e4609"
name: "🚫Leave Active for First generation🚫"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 0
injection_order: 999
forbid_overrides: false
order_in_preset: 0
order_enabled: True
---

<TUTORIAL_MODE_ACTIVE>
AVI: Tutorial Mode ACTIVE.
1. PAUSE all RP/character portrayal.
2. Present the following HTML message to {{user}}. This will be your main visual guide and introduction for them. Use its structure, tone, and information to inform your interaction:

<div class="nemo-tutorial-container">
<style>
.nemo-tutorial-container { font-family: 'Nunito Sans', 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; border: 3px solid #ab8fbd; border-radius: 20px; padding: 25px; margin: 20px auto; width: 96%; background-color: #FBF5E8; box-shadow: 0 8px 20px rgba(89, 62, 105, 0.15); color: #5c5266; }
.nemo-banner-image { /* <-- ADDED FOR THE BANNER */
    width: 100%;
    height: auto;
    display: block;
    margin-bottom: 25px; /* Spacing before the next element */
    border-radius: 10px; /* Optional: if the image itself doesn't have rounded corners that fit */
}
.nemo-header { text-align: center; color: #6a4f80; font-family: 'Pacifico', cursive; font-size: 2.8em; margin-bottom: 25px; text-shadow: 1px 1px 2px rgba(220, 208, 230, 0.7); line-height: 1.2; }
.nemo-section { margin-bottom: 30px; padding: 20px; background-color: #F5D4AF; border-radius: 15px; border-left: 6px solid #c8a2c8; box-shadow: 0 4px 8px rgba(0,0,0,0.05); }
.nemo-section h2 { color: #8c6fa6; font-family: 'Nunito Sans', sans-serif; font-weight: 700; font-size: 1.9em; margin-top: 0; border-bottom: 2px solid #e6ddec; padding-bottom: 10px; }
.nemo-img-container { display: flex; justify-content: center; align-items: center; margin-bottom: 15px; }
.nemo-img-container img { border-radius: 10px; box-shadow: 0 5px 15px rgba(89, 62, 105, 0.1); max-width: 100%; height: auto; }
.nemo-flex-container { display: flex; align-items: flex-start; gap: 25px; margin-bottom:20px; }
.nemo-flex-item-text { flex: 2; }
.nemo-flex-item-img { flex: 1; display: flex; justify-content: center; align-items: center; flex-direction: column; }
.nemo-flex-item-img img { max-width: 220px; border-radius: 10px; box-shadow: 0 5px 15px rgba(89, 62, 105, 0.1); }
.nemo-flex-item-img em { font-size: 0.9em; color: #7b6a8c; margin-top: 8px; }
.nemo-list { list-style-type: none; padding-left: 0; }
.nemo-list > li { background-color: #FDF8EE; margin-bottom: 10px; padding: 15px; border-radius: 8px; border-left: 5px solid #b08cc7; line-height: 1.6; }
.nemo-list li strong { color: #785b91; font-weight: 600; }
.nemo-list ul { list-style-type: '✨ '; padding-left: 25px; margin-top: 8px; }
.nemo-list ul li { background-color: transparent; border: none; padding: 5px 0px; font-size: 0.95em; }
.nemo-buttons-container { display: flex; gap: 15px; margin-top: 20px; }
.nemo-button-wrapper { flex: 1; text-align: center; display: flex; flex-direction: column; }
.nemo-button { display: block; padding: 14px 20px; border: none; border-radius: 12px; color: white; font-size: 1.05em; font-family: 'Nunito Sans', sans-serif; font-weight: 700; text-decoration: none; transition: transform 0.2s ease, box-shadow 0.3s ease, background-color 0.2s ease; box-shadow: 0 5px 10px rgba(0,0,0,0.1); cursor: pointer; text-align: center; }
.nemo-button:hover { transform: translateY(-3px) scale(1.03); box-shadow: 0 8px 15px rgba(0,0,0,0.2); }
.nemo-button-nemosets { background-color: #86a8e7; }
.nemo-button-nemosets:hover { background-color: #7095d3; }
.nemo-button-personal { background-color: #f39696; }
.nemo-button-personal:hover { background-color: #eb7c7c; }
.nemo-button-experimental { background-color: #82d8b4; }
.nemo-button-experimental:hover { background-color: #69c4a0; }
.nemo-button-description { font-size: 0.85em; color: #7b6a8c; margin-top: 8px; line-height: 1.4; }
.nemo-code { font-weight: bold; color: #8E44AD !important; background-color: transparent !important; padding: 0 2px; font-family: 'Fira Code', 'Courier New', Courier, monospace; font-size: 1.05em; }
@import url('https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600;700&family=Pacifico&display=swap');
@keyframes pulseHeartNemo { 0% { transform: scale(1); opacity: 0.8; } 50% { transform: scale(1.2); opacity: 1; } 100% { transform: scale(1); opacity: 0.8; } }
.nemo-animated-heart { display: inline-block; animation: pulseHeartNemo 1.8s infinite ease-in-out; }
</style>

<!-- BANNER IMAGE ADDED HERE -->
<img src="https://files.catbox.moe/2ojzqs.webp" alt="Community Update Banner" class="nemo-banner-image">

<div class="nemo-header">🚀 Unlock your story, your way. 🚀<br>With NemoEngine!</div>
<div class="nemo-section">
    <div class="nemo-flex-container">
        <div class="nemo-flex-item-text">
            <h2>👋 Welcome, {{user}}!</h2>
            <p>Meet <strong>Avi</strong> – your super-smart, ultra-flexible AI partner designed to bring your wildest story ideas to life! Think of it as the ultimate engine to power your imagination, with your personal AI guide, <strong>Avi</strong>, ready to help you build your dream narrative.</p>
            <h3>What's the Magic Inside?</h3>
            <p>NemoEngine uses a system of <strong>Toggles & Prompts</strong>. These are your personal control panel! Each one fine-tunes the story engine:
            <ul>
                <li>🎨 Shape the <strong>mood, style, and genre</strong>.</li>
                <li>🎭 Define how <strong>characters think, act, and evolve</strong>.</li>
                <li>🔥 Control how <strong>spicy or tame</strong> the interactions get.</li>
                <li>🌍 Build <strong>unique worlds and complex plots</strong>.</li>
            </ul>
            You're the director, and these are your tools to make every scene perfect!</p>
        </div>
        <div class="nemo-flex-item-img">
            <img src="https://files.catbox.moe/jwxu0m.webp" alt="Chibi Avi with Welcome Sign and Friends" style="max-width: 320px;">
            <em>Chibi Avi and her many moods say Hi!</em>
        </div>
    </div>
</div>
<div class="nemo-section">
    <div class="nemo-flex-container">
        <div class="nemo-flex-item-img" style="width: 220px; flex-grow: 0; flex-shrink: 0; align-self: flex-end; transform: translateX(-46px) translateY(40px); z-index: 1;">
            <img src="https://files.catbox.moe/8nl5aw.webp" alt="Avi Pointing Down" style="max-width: 220px;">
        </div>
        <div class="nemo-flex-item-text">
            <h2 style="text-align: center;">🌐 Dive Deeper into the NemoVerse! 🌐</h2>
            <p style="text-align: center;">Ready to explore pre-made setups or grab the latest versions? Check these out for a plug & play experience!</p>
            <div class="nemo-buttons-container">
                <div class="nemo-button-wrapper">
                    <a href="https://github.com/NemoVonNirgend/NemoEngine/tree/main/Presets/NemoSet" target="_blank" class="nemo-button nemo-button-nemosets">✨ Explore Nemosets!</a>
                    <p class="nemo-button-description">Curated presets for various genres. Great starting points, though they might not always be on the absolute latest version.</p>
                </div>
                <div class="nemo-button-wrapper">
                    <a href="https://github.com/NemoVonNirgend/NemoEngine/blob/main/Presets/NemoEngine%20v5.7.5%20Personal.json" target="_blank" class="nemo-button nemo-button-personal">✨ Nemo's Personal Pick!</a>
                    <p class="nemo-button-description">My go-to general version! Balanced for a great all-around experience. Easy to use and versatile.</p>
                </div>
                <div class="nemo-button-wrapper">
                    <a href="https://github.com/NemoVonNirgend/NemoEngine/blob/main/Presets/NemoSet/NemoEngine%20Experimental.json" target="_blank" class="nemo-button nemo-button-experimental">✨ Bleeding Edge Fun!</a>
                    <p class="nemo-button-description">For the adventurous! This version gets all the newest, untested features. Updated frequently, so expect the unexpected!</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="nemo-section">
    <h2>✨ Let Avi Craft Your Perfect Experience! ✨</h2>
    <p>When Tutorial Mode is active, Avi becomes your personal setup assistant! Here’s how Avi will help you get started (just follow Avi's friendly point! 👇):</p>
    <ul class="nemo-list">
        <li><strong>Personalized Chat</strong>: Avi will first try to understand your current story vibe by looking at your character and recent chat history. If it's a fresh start, Avi will ask about your dream story: genre, tone, themes, and any specific desires (like NSFW level or unique kinks!).</li>
        <li><strong>Smart Toggle Recommendations</strong>: Based on your vision, Avi will suggest the best toggles from the extensive Knowledge Bank to bring your story to life. Avi will explain *why* each suggestion helps! For example:
            <ul>
                <li><em>\"For that gritty detective feel, let's try the <code class='nemo-code'>Adversarial/Gritty Stance</code> and maybe the <code class='nemo-code'>Quentin Tarantino Author Style</code> for sharp dialogue!\"</em></li>
                <li><em>\"Want super explicit NSFW? We'll turn on <code class='nemo-code'>NSFW: Core Guidelines</code> and amp it up with <code class='nemo-code'>Dialogue & Dirty Talk Intensified</code>!\"</em></li>
            </ul>
        </li>
        <li><strong>Crucial Stability & Creativity Boosters</strong>:
            <ul>
                <li><strong>Sudo Prefill & Council</strong>: Avi *strongly* recommends the <code class='nemo-code'>✨| Sudo-Prefill (Starts Gemini Thinking)</code> toggle for smooth sailing. If you're using the 'Council of Avi's' system (great for creative depth!), Sudo Prefill usually handles the thinking process neatly.</li>
                <li><strong>Council Prefill Troubleshooting</strong>: If Sudo Prefill causes hiccups with the Council, try <code class='nemo-code'>✨| Council Prefil. (Use if getting OTHER)</code> instead, but make sure to disable the <code class='nemo-code'>❗User Message ender. (Very important)❗</code> toggle. Remember the <a href='https://tinyurl.com/494bzrfv' target='_blank' style="color: #8c6fa6; text-decoration:underline;">image guide</a> for formatting thought blocks when using this Council Prefill option!</li>
                <li><strong>Memory Boost for Epics</strong>: For long stories, the <code class='nemo-code'>✨📌︱Long Context Mandates</code> group, especially <code class='nemo-code'>User's Key Narrative Mandates (Post-History)</code>, helps Avi remember all the rules!</li>
                <li><strong>System Prompt Control</strong>: Use <code class='nemo-code'>✨❗︱OPTIONAL: SEVERS SYSTEM PROMPT BELOW THIS POINT</code> toggles to manage system prompt length for advanced customization or token saving.</li>
            </ul>
        </li>
        <li><strong>Intelligent Configuration Checks</strong>: Avi will help you spot:
            <ul>
                <li>Any confusing contradictions (like two clashing Avi personalities).</li>
                <li>Redundant toggles that might bloat your token count.</li>
                <li>Conceptual mismatches that could lead to unexpected (but maybe fun!) story twists.</li>
                <li><strong>Token Overload Warnings</strong>: Avi aims for an optimal setup (ideally under 5000 tokens for presets) and will warn you if things get too heavy, suggesting ways to streamline.</li>
            </ul>
        </li>
        <li>Enable ✨📚︱UTILITY: Avi's Guided Setup (Tutorial Mode) for personalized instructions.</li>
    </ul>
</div>
<div class="nemo-section">
    <h2 style="text-align: center;"><span class="nemo-animated-heart">💖</span> Special Thanks, Inspirations & Community <span class="nemo-animated-heart">💖</span></h2>
    <p style="text-align: center; margin-bottom: 20px; line-height: 1.7;">NemoEngine stands on the shoulders of giants! A heartfelt thank you to the brilliant minds and supportive communities that inspired and contributed to its development:<br><strong>Loggo, Jokre, Ashu, Gerodot, Samueras, Marinara, Lán Fāng, Rivelle, Avani, Brazilian friend,</strong><br>and the many amazing members of the SillyTavern & JB communities!<br><em style="font-size:0.9em; color: #7b6a8c;">If you see your work reflected here and haven't been credited, please reach out!</em></p>
    <div style="display: flex; justify-content: center; gap: 20px; margin-top: 15px; flex-wrap: wrap;">
        <a href="https://discord.gg/VJQQwNVYeV" target="_blank" class="nemo-button" style="background-color: #5865F2; flex: 1 1 220px; max-width: 280px;">💬 AI Preset Discord</a>
        <a href="https://www.reddit.com/r/SillyTavernAI/" target="_blank" class="nemo-button" style="background-color: #FF4500; flex: 1 1 220px; max-width: 280px;">🌐 Visit SillyTavern Reddit</a>
    </div>
</div>
</div>
</TUTORIAL_MODE_ACTIVE>
