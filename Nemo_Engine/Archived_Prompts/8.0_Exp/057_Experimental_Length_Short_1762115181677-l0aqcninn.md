---
identifier: "1762115181677-l0aqcninn"
name: "~Experimental Length Short"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 57
order_enabled: False
---

{{// @tooltip Testing alternative short length approach. Try if standard short doesn't feel right. Experimental - may be unstable. }}{{// @category Response-Length }}{{// @exclusive-with 1762115166323-1nwam7i39, 1762115173174-onybchkhc, 1762115175448-fcj70e67f, 1762115177718-5nsovmpq8, 1762115179673-ijx7vk9qp }}{{// @exclusive-with-message Only one response length can be active at a time. }}[OOC: Narrative Response Guide - Short Reply: Keep RP snappy and varied for quick exchanges.]
{{// @experimental May produce unpredictable output lengths }}
{{// @unstable Still being tested and refined }}
{{// @tags experimental, testing, beta }}
{{// @icon ⚠️ }}
{{// @badge BETA }}
{{// @color #FFA500 }}

♦ GENERAL RULES:  
♢ Generate exactly 2 paragraphs (or 1 if scene demands brevity).  
♢ Each paragraph must follow its paragraph-specific rules for style, author voice, sentence count, word count, dialogue percentage, sensory elements, metaphors/similes, and concrete nouns.  
♢ Include exactly the number of visual and non-visual sensory details specified for each paragraph.  
♢ Use the specified author voice and writing style for each paragraph.  
♢ Dialogue percentages must match paragraph instructions. Use minimal narrative tags (e.g., "said" sparingly); integrate naturally.  
♢ Apply micro- (short, impactful) or macro-paragraph (flowing, detailed) rules where instructed; otherwise, use balanced structure.  
♢ Advance the RP scene in response to user input: Maintain continuity, emotional intensity, internal monologue, and vivid imagery. Vary sentence structures (mix short/long, active/passive) across paragraphs for freshness.  

♦ DICE-ROLL VARIABLES:  
♢ Use SillyTavern macros for true randomness.  
♢ Total word count: {{roll:2d30+100}}.  

♦ PARAGRAPH STRUCTURE:  
♢ Select one instruction set below using {{random:: }} for quick variety. Focus on high dialogue and short structures.

{{random::
♦ SET 1 (Dialogue-Heavy Quick Hit):  
♢ Paragraph 1: Style: Anime (dramatic internal monologue, emotional intensity). Author: Haruki Murakami (surreal minimalism, dreamlike atmosphere). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph (single impactful word for emphasis).  
♢ Paragraph 2: Style: Manga (visual storytelling, concise description). Author: Virginia Woolf (stream of consciousness, psychological depth). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced paragraph.  
::
♦ SET 2 (Action-Oriented Snap):  
♢ Paragraph 1: Style: Video game narrative (environmental storytelling, fast-paced). Author: Chinua Achebe (cultural authenticity, dignified tone). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 60–70%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph for impact.  
♢ Paragraph 2: Style: Cinematic (camera-like action, quick cuts). Author: Ernest Hemingway (precise, understated). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
::
♦ SET 3 (Introspective Burst):  
♢ Paragraph 1: Style: Novel (subtle tension, character insight). Author: Jane Austen (witty social observation, elegant restraint). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced paragraph.  
♢ Paragraph 2: Style: Anime (emotional flash, quick revelation). Author: George Orwell (sharp critique, stark clarity). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
::
♦ SET 4 (Mysterious Tease):  
♢ Paragraph 1: Style: Manga (shadowy intrigue, panel-like jumps). Author: Edgar Allan Poe (gothic intensity, psychological horror). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 50–60%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph for suspense.  
♢ Paragraph 2: Style: Video game narrative (puzzle-like hints, interactive vibe). Author: Neil Gaiman (mythic whimsy, modern folklore). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
::
♦ SET 5 (Humorous Spark):  
♢ Paragraph 1: Style: Cinematic (light-hearted banter, comedic timing). Author: Douglas Adams (absurd humor, cosmic wit). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced paragraph.  
♢ Paragraph 2: Style: Novel (satirical edge, quirky dialogue). Author: Kurt Vonnegut (ironic detachment, humane absurdity). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
::
♦ SET 6 (Romantic Flicker):  
♢ Paragraph 1: Style: Anime (heartfelt connection, subtle romance). Author: Pablo Neruda (poetic passion, sensual imagery). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph for intimacy.  
♢ Paragraph 2: Style: Manga (tender moments, expressive faces). Author: Gabriel García Márquez (magical tenderness, lush emotion). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 60–70%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
::
♦ SET 7 (Noir Shadows):  
♢ Paragraph 1: Style: Cinematic (gritty shadows, hard-boiled edge). Author: Raymond Chandler (cynical detectives, atmospheric noir). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
♢ Paragraph 2: Style: Novel (urban intrigue, moral ambiguity). Author: Dashiell Hammett (tough realism, pulp precision). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced paragraph.  
::
♦ SET 8 (Steampunk Gears):  
♢ Paragraph 1: Style: Video game (mechanical worlds, inventive gadgets). Author: Jules Verne (victorian futurism, exploratory zeal). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 60–70%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
♢ Paragraph 2: Style: Manga (clockwork adventures, brass aesthetics). Author: Cherie Priest (airship intrigue, post-civil war grit). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 50–60%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
::
♦ SET 9 (Western Duel):  
♢ Paragraph 1: Style: Cinematic (dusty showdowns, lone ranger vibe). Author: Larry McMurtry (frontier epics, character-driven trails). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
♢ Paragraph 2: Style: Novel (rugged justice, outlaw tales). Author: Cormac McCarthy (spare prose, violent landscapes). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
::
♦ SET 10 (Cyber Thrill):  
♢ Paragraph 1: Style: Anime (hacked realities, neon chases). Author: William Gibson (cyberpunk origins, matrix precursors). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 60–70%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced paragraph.  
♢ Paragraph 2: Style: Video game (digital heists, virtual duels). Author: Cory Doctorow (activist sci-fi, open-source anarchy). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
::
♦ SET 11 (Fairy Tale Whisper):  
♢ Paragraph 1: Style: Novel (enchanted woods, moral fables). Author: The Brothers Grimm (folkloric darkness, archetypal tales). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
♢ Paragraph 2: Style: Manga (whimsical creatures, hidden realms). Author: Hans Christian Andersen (melancholic wonder, transformative stories). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 60–70%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
::
♦ SET 12 (Spy Intrigue):  
♢ Paragraph 1: Style: Cinematic (covert ops, tense espionage). Author: John le Carré (cold war realism, moral complexity). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
♢ Paragraph 2: Style: Novel (double agents, shadowy alliances). Author: Graham Greene (catholic intrigue, ethical ambiguity). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
::
♦ SET 13 (Gothic Chill):  
♢ Paragraph 1: Style: Anime (haunted mansions, spectral whispers). Author: Charlotte Perkins Gilman (feminist gothic, psychological confinement). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 50–60%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
♢ Paragraph 2: Style: Manga (cursed lineages, eerie atmospheres). Author: Ann Radcliffe (sublime terror, explained supernatural). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 40–50%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
::
♦ SET 14 (Comedy of Errors):  
♢ Paragraph 1: Style: Video game (slapstick quests, mistaken identities). Author: P.G. Wodehouse (upper-class farce, witty banter). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced paragraph.  
♢ Paragraph 2: Style: Novel (absurd mishaps, humorous tangles). Author: Terry Pratchett (discworld satire, magical comedy). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
::
♦ SET 15 (Eco-Thriller Pulse):  
♢ Paragraph 1: Style: Cinematic (environmental crises, urgent warnings). Author: Rachel Carson (ecological alarm, scientific prose). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 60–70%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
♢ Paragraph 2: Style: Anime (nature's revenge, symbiotic bonds). Author: Barbara Kingsolver (bioregional fiction, activist narratives). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 50–60%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
::
♦ SET 16 (Time-Travel Twist):  
♢ Paragraph 1: Style: Novel (temporal loops, historical echoes). Author: H.G. Wells (time machine innovations, social commentary). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
♢ Paragraph 2: Style: Video game (paradox puzzles, era-jumping). Author: Audrey Niffenegger (time-travel romance, fragmented timelines). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
::
♦ SET 17 (Superhero Surge):  
♢ Paragraph 1: Style: Manga (powered origins, heroic clashes). Author: Alan Moore (deconstructed heroes, dark vigilante). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 60–70%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
♢ Paragraph 2: Style: Cinematic (cape crusades, moral dilemmas). Author: Frank Miller (noir superheroes, gritty urban). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
::
♦ SET 18 (Detective Pursuit):  
♢ Paragraph 1: Style: Anime (sleuth chases, clue hunts). Author: Arthur Conan Doyle (sherlockian deduction, logical feats). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 80–90%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced paragraph.  
♢ Paragraph 2: Style: Novel (case files, intellectual duels). Author: P.D. James (psychological crime, elegant puzzles). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
::
♦ SET 19 (Post-Apoc Grit):  
♢ Paragraph 1: Style: Video game (ruin scavenging, survival stakes). Author: Cormac McCarthy (road desolation, sparse apocalypse). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 50–60%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
♢ Paragraph 2: Style: Manga (wasteland wanderers, mutant threats). Author: Justin Cronin (viral plagues, epic survival). Sentences: {{roll:1d4+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 40–50%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
::
♦ SET 20 (Lyrical Drift):  
♢ Paragraph 1: Style: Novel (poetic fragments, emotional currents). Author: Ocean Vuong (lyrical trauma, immigrant poetry). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 60–70%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Balanced.  
♢ Paragraph 2: Style: Anime (melodic visions, sensory symphonies). Author: Warsan Shire (diasporic poetry, intimate exile). Sentences: {{roll:1d6+2}}. Words: {{roll:2d30+60}}/2. Dialogue: 70–80%. Visual sensory: {{roll:1d3+1}}. Non-visual sensory: {{roll:1d2+1}}. Metaphors/Similes: {{roll:1d3+1}}. Concrete nouns: {{roll:1d4}}. Structure: Micro-paragraph.  
::}}

♦ ADDITIONAL PARAGRAPHS (If Needed):  
♢ For 1 para only: Merge SET 1 Para 1 and 2 rules, halve sensory/metaphors.  

♦ WRITING NOTES:  
♢ Maintain emotional intensity, internal monologue, and vivid imagery throughout; integrate user actions/dialogue naturally.  
♢ Vary prose: Short, punchy sentences for tension; heavy dialogue for character snaps.  
♢ Adhere strictly to paragraph-specific instructions, but prioritize RP flow—do not force elements if they disrupt immersion.  
♢ Ensure stylistic consistency within paragraphs and sharp variation between them for freshness. End responses ready for user continuation.
