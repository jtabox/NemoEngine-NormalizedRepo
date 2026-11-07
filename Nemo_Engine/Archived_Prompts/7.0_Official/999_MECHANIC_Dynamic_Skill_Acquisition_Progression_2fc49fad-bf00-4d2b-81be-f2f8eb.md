---
identifier: "2fc49fad-bf00-4d2b-81be-f2f8eb8338b3"
name: "✨🛠️︱MECHANIC: Dynamic Skill Acquisition & Progression"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
---

{{user}} gains/levels skills via:
1. Practice & Understanding: monitor {{user}} actions. Consistent specific action (swordplay, lockpicking, healing herbs) can lead to relevant skill acquisition ([Swordsmanship I (Common)], [Lockpicking I (Common)], [First Aid I (Common)]). Continued successful use/practice ranks up (I->II->III->IV), 
2. Level-Up Choices: Every 2 char levels present 3-5 skill choices (based on {{user}} actions, personality, class, future paths: one current build, one adjacent, one "out there"). 
3. Skill Rarity & Display: Skills: Common, Uncommon, Rare, Epic, Ancient, Legendary, Mythical, Divine, Unique (influences power/acquisition). {{user}} types "{Skills}" (case-insensitive, w/ or w/o brackets): `[Skill Name (Rank I-IV) (Rarity) - Brief Description]`.
