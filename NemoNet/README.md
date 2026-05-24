# NemoNet 2.0

NemoNet 2.0 is now an Engine-based experimental preset: Nemo Engine v10 is the spine, and NemoNet-specific ideas are rebuilt as v10-style modules instead of a separate monolithic prompt bank.

## What Changed

- Base architecture: Nemo Engine v10 prompt structure, priority tags, modular variables, CoT wiring, trackers, regex scripts, and settings surfaces.
- Preset size: 511 prompts, restored as compact v10-style modules instead of the older monolithic NemoNet bank.
- Regex scripts: 118 scripts inherited from Nemo Engine v10.
- Removed old Large/Medium/Small monolithic variable banks.
- Rebuilt NemoNet-only features as smaller modules that fit the Engine variable system.
- Restored the worth-keeping v1 scale surfaces: realism, character systems, plot tools, world systems, meta utilities, dialogue modes, formatting modes, sensory modes, RPG systems, extra trackers, and NSFW mechanics/styles.

## Ported NemoNet Features

### Core Pack Profiles

The old full core packs are now compact profile lenses:

- Standard
- Horror
- Epic Fantasy
- Grimdark
- Slice of Life
- Action/Shonen
- Isekai
- Erotic
- Chaos/Schizo
- Poetry/Ethereal
- Alpha
- Omega

Profiles set broad pressure, genre bias, prose register, and payoff preference. They do not override higher-priority laws, agency, format, world logic, or enabled module boundaries.

### CoT Additions

New modular CoT steps were added and wired into Main, Fast, Loose, and Experimental CoT:

- Severity Scale
- Freshness Check
- Observer Constraints
- Thread Budget
- GM Planning
- Dice & Fate

### Trackers

NemoNet v2 keeps Engine trackers and adds:

- Danmaku Comments
- Blood Bond
- Corruption Meter
- Option Bar
- Game Interface
- Summary System
- Word Count
- Objective Tracker
- Story Tracker
- Story Ledger
- Scene Status
- Heart Chart
- Visual Inventory
- Texting Style
- Parallel Events

### Scale Modules

The v1 breadth is now rebuilt into set/get variable modules:

- Realism systems for bodies, violence, psychology, social consequence, logistics, environment, manipulation, economics, and skill limits.
- Character systems for growth, memory, relationships, trauma guards, flaws, mirrored moments, mementos, unreliable perspective, found-family dynamics, personality lenses, and species traits.
- Plot tools for focus lock, branching paths, cliffhanger endings, quiet moments, mystery unraveling, arc progression, ignored consequences, direct starts, swipe variation, and parallel arcs.
- World systems for living-world motion, NPC agency, background atmosphere, reputation, continuity, relationship webs, drip-fed lore, and proactive NPCs.
- Dialogue, formatting, sensory, RPG, meta utility, NSFW mechanic, and NSFW style modules.

### NSFW / Fetish Expansion

NemoNet v2 adds NSFW intensity profiles, NSFW mechanic/style modules, and restored kink/power-dynamic modules in the Engine style. New fetish modules are pulled by the Standard Core Pack, so enabled modules resolve into the assembled core pack correctly.

### Random / Pick Modes

Random Mode and Pick Mode return as experimental lens prompts:

- Random Mode chooses a fresh one-turn style mix during reasoning.
- Pick Mode chooses a session convention once and keeps it until settings change.

They do not overwrite explicit user settings or persistent canon.

## Import File

Use:

`NemoNet/Nemo Net 2.0.json`

Loose prompt mirrors are kept in:

- `NemoNet/Prompts/`
- `NemoNet/Archived Prompts/Nemo Net 2.0/`

## Design Rule

NemoNet v2 should stay Engine-based. Experimental features belong as clean modules, variables, trackers, CoT steps, or lenses. Avoid rebuilding the old giant variable-bank architecture.
