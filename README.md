# NemoEngine Presets

NemoEngine is a collection of large modular presets for SillyTavern and
RoleCall-style AI roleplay / collaborative fiction workflows.

If you are new to this: a preset is a bundle of instructions that tells the AI
how to narrate, how to handle characters, how much agency the user has, what
style to write in, how to track the scene, and which optional systems are active.
The JSON files are the presets you import. The `Prompts/` folders are the same
presets split into readable pieces so you can inspect, edit, search, and compare
them.

This repo currently contains three related preset families:

- **Nemo Engine** - the main curated preset. It is modular, mature, and focused
  on strong roleplay narration, character agency, user autonomy, style control,
  and optional game/story systems.
- **NemoNet** - the maximal experimental rebuild. It is larger, more granular,
  and built around lots of switches: variable prompt sizes, randomization,
  modular reasoning steps, trackers, anti-pattern fixes, and style libraries.
- **Atelier** - the guided preference preset. It is built around user taste
  sliders: stakes, romance, violence, humor, POV, agency, response length,
  sensory detail, world logic, and visual formatting.

## Announcement: One Year Of NemoEngine

It has been a year.

Nemo Engine started as a big SillyTavern preset experiment and kept growing:
from the early [v5.4 Gemini 2.5 Flash/Pro post](https://www.reddit.com/r/SillyTavernAI/comments/1ksi3d7/nemoengine_v54_preset_primarily_for_gemini_25/),
through the [6.0 redesign](https://www.reddit.com/r/SillyTavernAI/comments/1mc3px6/nemo_engine_60_the_official_release_of_my_redesign/),
the [7.0 official release](https://www.reddit.com/r/SillyTavernAI/comments/1nqhjzn/nemo_engine_70_official/),
and the [8.0 Gemini 3.0 update](https://www.reddit.com/r/SillyTavernAI/comments/1p0rlu5/nemo_engine_80_update_for_gemini_30/).

What began as a single preset has turned into a small family of related systems:
Nemo Engine for the curated mainline experience, NemoNet for maximal modular
experimentation, and Atelier for guided preference-based setup.

The next major update wave is planned around:

- **Nemo Engine v10**
- **Atelier v2**
- **NemoNet v2**

All three are being updated and maintained for the people who enjoy this work:
the testers, tinkerers, roleplayers, writers, and preset nerds who kept giving
feedback, breaking things, suggesting ideas, and making the project better than
it could have been alone.

## Related Projects: RoleCall And Plotlight

Alongside these presets, I am also developing
[RoleCall](https://rolecallstudios.com/) and
[Plotlight](https://plotlightstudios.com/).

The short version:

- **RoleCall** is an interactive fiction chat frontend, character studio, and
  scene engine. It is being built around BYOK model access, end-to-end encrypted
  scenes, visual editors, presets, prompts, lorebooks, characters, personas,
  regexes, and immersive scene tools.
- **Plotlight** is the creator/discovery side: a place to browse, fork, share,
  and host open roleplay content such as characters, presets, lorebooks, guides,
  regexes, series, compendiums, and eventually visual novels.

The long-term idea is that Nemo Engine, NemoNet, and Atelier are not just loose
prompt files floating around forever. They are part of a larger ecosystem for
building, sharing, remixing, and actually playing interactive fiction: chat
frontends, character hosting, preset hosting, lorebook hosting, visual novel
systems, novel-DM tools, and whatever else makes AI roleplay feel less like a
blank textbox and more like a real creative stage.

## Which Preset Should I Use?

| Preset | Best for | What it feels like |
|---|---|---|
| **Nemo Engine** | General roleplay, fiction, RPG-style scenes, reusable daily use | A curated storytelling engine with lots of optional modules. |
| **NemoNet** | Experimenting, stress-testing models, building highly customized stacks | A big prompt lab with many knobs and modular systems. |
| **Atelier** | Users who want to configure the story by preference rather than prompt hunting | A guided creative-writing preset shaped by selected taste dials. |

If you are just trying the repo for the first time, start with **Nemo Engine**.
If you want the biggest playground, try **NemoNet**. If you want a more guided
"what kind of story do you want?" setup, try **Atelier**.

## Quick Start

1. Download or clone this repository.
2. Pick a JSON preset:
   - `Nemo Engine/Nemo Engine 9.3.6.json`
   - `NemoNet/Nemo Net 2.0.json`
   - `Atelier/Atelier 2.0.json`
3. Import the JSON into SillyTavern or your compatible RoleCall preset workflow.
4. Open the matching `Prompts/` folder if you want to see what the preset is
   doing internally.
5. Enable only the modules you actually want. Many prompts are optional toggles,
   mutually exclusive styles, or advanced systems.

## Setup Guide

### First-Time Nemo Engine Setup

For a first run, keep the stack simple. Nemo Engine works best when you start
with a stable core and add modules for a specific reason.

Recommended baseline:

1. Import `Nemo Engine/Nemo Engine 9.3.6.json`.
2. Keep the default core prompts enabled.
3. Use **one** Vex personality at a time. The default Vex is fine for general
   play.
4. Use **Main CoT** when you want quality and consistency.
5. Use **Fast CoT** when the model is slow or you want lighter turns.
6. Pick only the genre/style modules that match the current story.
7. Leave trackers and visual UI modules off until you actually want them.

The usual mistake is enabling too much. Nemo Engine is modular, but modules can
compete with each other if you stack several narrator voices, genres, pacing
rules, trackers, and style packs at once.

### What To Enable For Common Situations

For general roleplay:

- Default Core
- Default Vex or one Vex personality
- Main CoT or Fast CoT
- Default Genre & Style
- Default Narrative
- Default World
- a response length that fits your model and chat style

For long-running stories:

- Databank
- Settings Reminder
- Character State or Knowledge Mapping CoT steps
- conservative pacing controls
- fewer style modules, so the voice stays stable

For dialogue-heavy scenes:

- More Dialogue
- Voice Crafting
- Subtext Layer
- Relationship Stage
- a Vex personality that fits the emotional register

For mystery, noir, or investigation:

- Noir Vex, Clinical Vex, or a thriller-style module
- Knowledge Mapping
- Information Asymmetry
- Last Turn Critique
- Slow Burn Mysteries or related world/story modules

For RPG, TTRPG, or adventure play:

- Gamemaster Vex or Tactical Vex
- RPG / TTRPG / LitRPG modules
- Success Dice
- Quest Journal
- Location Board
- CYOA if you want explicit options
- a difficulty module such as Balanced, Heroic, Hard Gritty, or Nightmare

For romance or character-drama:

- Soft Romance Vex, Gentle Vex, Cozy Vex, or another matching narrator voice
- Romance, Fluff, Angst, Melancholy, or Tragedy style modules as needed
- Relationship Stage
- Emotional Matrix
- Dating Sim if you want relationship UI/tracker behavior

For visual or UI-style outputs:

- Tracker Toggle
- one render mode, such as HTML/CSS, ASCII, or Regex render
- one or two specific trackers, such as Status Board, Quest Journal, CYOA,
  Dating Sim, Manga Panels, Webtoon Panels, or Immersive World HTML

For low-token or faster models:

- Fast CoT instead of Main CoT
- Short or Medium response length
- fewer modular CoT steps
- avoid large tracker outputs
- avoid stacking multiple author/style modules

For stronger anti-slop behavior:

- use Nemo Engine's built-in core-pack anti-slop sections
- relevant CoT review steps such as Last Turn Critique or Course Correction
- fewer decorative style modules
- a clear genre/style target

For mature roleplay:

- Review adult-content modules before enabling them.
- Enable only the specific controls you want.
- Avoid mixing mature modules into public or general-purpose preset exports
  unless that is intentional.

## Current Files

| Preset family | Importable JSON files | Size | Prompt folder | Prompt files |
|---|---|---:|---|---:|
| Nemo Engine | `Nemo Engine 9.3.5.json`, `Nemo Engine 9.3.6.json` | 1.81 MB / 1.83 MB | `Nemo Engine/Prompts/` | 316 |
| NemoNet | `Nemo Net 2.0.json` | 3.30 MB | `NemoNet/Prompts/` | 529 |
| Atelier | `Atelier 2.0.json` | 0.23 MB | `Atelier/Prompts/` | 91 |
| Templates | Standalone add-ons and experiments | n/a | `Templates/Alternate Prompts/` | 13 |

## What Is In Each Preset?

### Nemo Engine

Nemo Engine is the mainline preset. Its core idea is that the AI should behave
like a capable narrator and world-runner, not a customer-service assistant.

It focuses on:

- preserving user agency: the AI should not decide the user's thoughts, actions,
  dialogue, or voluntary choices
- autonomous NPCs: characters have their own motives, limits, knowledge, and
  lives beyond the current scene
- theory of mind: characters only know what they have seen, heard, or reasonably
  inferred
- strong prose: concrete description, natural dialogue, less repetition, fewer
  generic AI writing habits
- modular narrator voices through Vex personas
- genre and style overlays such as romance, horror, comedy, high fantasy,
  thriller, AO3-style writing, literary modes, and author-inspired profiles
- story controls for pacing, difficulty, perspective, tense, response length,
  user-driven versus AI-driven agency, and world logic
- optional trackers and visual systems such as status boards, quest journals,
  CYOA choices, dating sim UI, manga panels, webtoon panels, ASCII output,
  HTML/CSS render blocks, and auto-image prompts
- optional RPG/TTRPG/LitRPG mechanics, dice, combat, progression, and world
  augments

Use Nemo Engine when you want a strong, curated preset that can cover many kinds
of roleplay without needing to assemble everything from scratch.

### NemoNet

NemoNet is the big experimental preset. It rebuilds many Nemo Engine ideas into
a larger modular system with more switches and more aggressive customization.

It includes:

- variable prompt sizes: Large, Medium, and Small configurations for balancing
  detail against token cost
- Random Mode and Pick Mode for randomized style/personality/core-pack selection
- compact Vex personalities and core packs
- many optional reasoning steps for context scanning, knowledge mapping, scene
  calibration, character state, bias correction, pacing, hooks, subtext, NPC
  tracking, and other planning tasks
- controls for agency, POV, tense, pacing, length, difficulty, realism, plot,
  world behavior, character development, formatting, and sensory focus
- large genre/style libraries: emotional tones, settings, prose styles,
  author-inspired modes, regional literature styles, formats, genre hybrids,
  tropes, and dialogue controls
- RPG systems, tracker systems, CYOA, game interfaces, visual inventory,
  knowledge logs, gacha, manga/webtoon formatting, word counts, and other
  optional output tools
- anti-pattern prompts for common AI writing issues such as echoing, repetition,
  robotic phrasing, purple prose, mind-reading, over-summarizing, and lazy scene
  construction
- optional mature-content modules and controls

Use NemoNet when you want the biggest possible configuration surface and do not
mind spending time tuning modules.

### Atelier

Atelier is built around preferences rather than a huge module catalog. The idea
is to shape the story by choosing what kind of experience you want.

It includes preference sections for:

- stakes and tension
- sexual content level
- violence intensity
- romance level
- humor and levity
- response length
- sensory density
- mood and tone
- point of view
- who drives the story
- dialogue versus prose balance
- worldbuilding depth
- character development
- world logic
- visual formatting

Atelier also includes a large writing-style library, anti-slop rules, character
anchoring, dynamic progression, and an optional chain-of-thought planning prompt.

Use Atelier when you want a preset that feels more like setting creative
preferences than manually building a prompt stack.

## FAQ

### What is the idea behind Nemo Engine?

Nemo Engine tries to make the AI behave like a narrator, world-runner, and NPC
controller for collaborative fiction. It pushes the model away from the default
assistant voice and toward scene logic: characters act from motives, the world
keeps continuity, consequences matter, and the user controls only their own
character.

The goal is not just "write prettier." The goal is to make roleplay feel less
like an assistant responding to prompts and more like a living story reacting to
what the user does.

### Why does it care so much about user agency?

In roleplay, the user character belongs to the user. Nemo Engine repeatedly tells
the model not to invent the user's actions, dialogue, thoughts, feelings, or
voluntary choices.

That does not mean the user has plot armor. NPCs can interrupt, attack, help,
refuse, restrain, mislead, or create consequences. The line is simple: the world
can act on the user, but the AI should not decide what the user chooses.

### Why does it emphasize NPC autonomy?

A lot of roleplay presets make NPCs orbit the user too much. Nemo Engine tries to
make characters feel like people with their own wants, limits, knowledge,
relationships, and bad timing.

NPCs should sometimes disagree, leave, lie, fail, misunderstand, pursue their
own goals, or act before the user asks. That is what keeps a scene from becoming
a passive wish-fulfillment loop.

### What is "theory of mind" doing here?

Theory of mind means each character has a separate mind and a separate knowledge
boundary. A character should not know something just because the narrator, the
model, or another character knows it.

This matters for mysteries, romance, betrayal, combat, social scenes, and long
stories. Information should travel through observation, dialogue, documents,
rumors, deduction, or direct experience.

### Who or what is Vex?

Vex is the narrator identity used by Nemo Engine. Think of Vex as the authorial
lens: the voice behind what gets noticed, how the prose frames a moment, and what
kind of emotional register the story defaults to.

Different Vex personalities change that lens. Noir Vex, Cozy Vex, Clinical Vex,
Gamemaster Vex, and others are not separate presets; they are narrator modes.
Use one primary Vex personality at a time.

### Why are there so many disabled prompts?

Because most prompts are options. A disabled prompt might be a genre module, a
Vex personality, a tracker, a render mode, a style overlay, a mature-content
toggle, or an experimental feature.

Disabled does not mean obsolete. It usually means "available when needed."

### Should I enable every prompt I like?

Usually no. Enable modules that solve a specific problem or support the current
story. Too many modules can create mixed signals: several voices, several genres,
several pacing rules, or several output formats all pulling at once.

Start with the core. Add one layer at a time.

### Which CoT should I use?

Use **Main CoT** for the strongest all-around behavior. Use **Fast CoT** when you
want lighter reasoning or faster output. Use more modular CoT steps only when
they serve the scene: investigation, continuity repair, character tracking,
HTML output checks, relationship focus, or pacing problems.

### When should I use trackers?

Use trackers when you want visible state: quests, location, relationship
progress, inventory-like information, CYOA choices, status boards, or game UI.

Do not enable trackers just because they exist. Trackers add output weight and
can distract from prose if the scene does not need them.

### What makes NemoNet different from Nemo Engine?

Nemo Engine is more curated. NemoNet is more experimental and more configurable.
If Nemo Engine is the main preset, NemoNet is the big workshop version with more
variables, randomization, module categories, anti-prompts, trackers, style
libraries, and optional systems.

### What makes Atelier different?

Atelier is built around preference selection. Instead of asking the user to know
which module name they need, it lets them shape the experience through broad
creative choices: more stakes or less, more romance or none, more sensory detail
or less, user-driven or AI-driven story, grounded or anime logic, plain text or
immersive formatting.

## Repository Layout

```text
Nemo Engine/
  Nemo Engine 9.3.5.json
  Nemo Engine 9.3.6.json
  Prompts/
    extracted markdown prompts from the current Nemo Engine preset
  Archive/
    older full JSON exports from 5.4 through 9.3.4
    NemoSet/
      older themed preset variants
  Archived Prompts/
    sparse per-version prompt history
    CHANGELOG.md
    INDEX.md
    DEAD_PROMPTS.md
    REGRESSION_CANDIDATES.md
    TRACKER_COMPARISON.md

NemoNet/
  Nemo Net 2.0.json
  README.md
  Prompts/
    extracted markdown prompts from the current NemoNet preset
  Archive/
    older full JSON exports (1.0)
  Archived Prompts/
    sparse per-version prompt history
    CHANGELOG.md
    INDEX.md

Atelier/
  Atelier 2.0.json
  Prompts/
    extracted markdown prompts from the current Atelier preset
  Archive/
    older full JSON exports (1.2)
  Archived Prompts/
    sparse per-version prompt history
    CHANGELOG.md
    INDEX.md

Templates/
  Alternate Prompts/
    standalone experiments and optional add-ons
```

## Prompt Shards

Each file in a `Prompts/` folder is one prompt from the exported preset. It has
frontmatter metadata and then the prompt text.

Example:

```markdown
---
identifier: "default_core"
name: "Default: Core"
role: "system"
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
order_in_preset: 3
order_enabled: True
---

{{// @category Default }}
{{// @tooltip Core narrative rules }}

Prompt content...
```

Useful fields:

- `identifier`: stable ID for tracking a prompt across versions
- `name`: display name in the preset
- `role`: where the prompt is injected
- `enabled`: whether it is enabled in the export
- `order_enabled`: whether it is active in the preset order
- `injection_position`, `injection_depth`, `injection_order`: injection behavior
- `order_in_preset`: exported prompt order

You will also see template helpers such as:

- `{{setvar::Name::Value}}`
- `{{getvar::Name}}`
- `{{trim}}`
- `{{// @category ... }}`
- `{{// @tooltip ... }}`

These are part of how the presets organize reusable variables and UI metadata.

## How The Core Pack Works

If you open something like `Standard Core Pack`, it may look strangely empty at
first. A lot of it is just lines like:

```text
{{getvar::StyleGuidelines}}
{{getvar::DialogueGuidelines}}
{{getvar::WritingStyle}}
{{getvar::Genre}}
{{getvar::CoT_Main}}
```

That is intentional. The core pack is not supposed to hold every rule directly.
It is a composition layer. It pulls in whatever the currently active modules
have placed into those variable slots.

The preset works in two stages:

1. Default prompts fill the baseline slots.
2. Optional modules replace specific slots with stronger, more specialized rule
   blocks.

This is why Nemo Engine modules are often longer than a simple instruction like
"write in this genre" or "use this narrator voice." They are not just adding a
single extra rule on top of the existing preset. They are replacing the relevant
parts of the preset so the whole stack supports the selected mode.

For example, an author-style module does not merely say "write like this author"
while the rest of the preset keeps enforcing a different style. It can replace
style-related variables such as:

- `StyleGuidelines`
- `WritingStyle`
- `DistinctVoice`
- `ImperfectSpeech`
- `BodyInSpeech`
- `DialogueDynamics`
- `DirectLanguage`

That way the active style is supported throughout prose, dialogue, rhythm,
physical description, and narration rules.

The same idea applies to genres and Vex personalities:

- A genre module can replace the genre logic, tone assumptions, pacing, world
  behavior, and prose expectations.
- A Vex module can replace not just `VexPersona`, but also physical
  storytelling, character storytelling, dialogue texture, and even the CoT
  structure.
- A tracker or UI module can fill tracker variables that the core pack later
  renders in the right place.

This variable-swap design avoids a common preset problem: contradictions. A
weaker preset might say "write as a grim horror narrator" in one prompt while
another prompt still says "keep things cozy and light." Nemo Engine tries to
make the selected module rewrite the related rule blocks instead of stacking
conflicting instructions.

The short version: `getvar` is where a rule block is used. `setvar` is where a
module defines or replaces that rule block.

## Customizing The Preset

The safest way to customize Nemo Engine is to work with the variable-slot system
instead of fighting it.

### Good customization pattern

When adding a new module, decide what kind of module it is:

- Vex personality
- writing style
- genre
- format
- tracker
- world augment
- difficulty mode
- CoT step
- utility rule

Then copy a similar existing prompt and change the relevant `setvar` blocks.

For example:

- A new Vex personality should usually set `VexPersona` and may also replace
  storytelling, dialogue, tone, and CoT variables.
- A new writing style should usually set style and dialogue variables rather
  than adding one loose instruction at the bottom.
- A new genre should set `Genre` and, if needed, related pacing, tone, world
  logic, or prose variables.
- A new tracker should follow the existing tracker/render pattern instead of
  inventing a new output location.

### Avoid this pattern

Avoid adding a prompt that only says:

```text
Write like X.
```

or:

```text
Make this cyberpunk.
```

or:

```text
Be more romantic.
```

That kind of add-on can work for small changes, but it often creates rule
conflicts. The rest of the preset may still be enforcing a different genre,
voice, tone, dialogue model, or prose style.

Instead, make the module replace the relevant variable slots. The more central
the change is, the more supporting sections it should update.

### Quick personal edits

If you just want to add a custom instruction for yourself and do not want to deal
with `setvar` / `getvar`, you can add the line directly inside the active core
pack.

For example, instead of making a whole module, you can place a short rule near
the relevant section of `Standard Core Pack`:

```text
When writing tavern scenes, make background NPC chatter more present and varied.
```

The model will read that line the same way it reads a rule block pulled in by
`{{getvar::...}}`, because by the time the prompt reaches the model, both are
just text in the assembled preset.

Use this for quick personal tweaks. Use the variable system when you want a
clean reusable module, a toggle, a mutually exclusive style, or something you
plan to share.

### Practical customization rules

- Enable only one module from a mutually exclusive group, such as one primary
  Vex personality or one primary writing style.
- Keep defaults enabled unless you are intentionally replacing them.
- Prefer editing or copying an existing similar module over writing a totally
  free-floating prompt.
- Preserve `identifier` only if it is the same logical prompt. Use a new
  identifier for a genuinely new module.
- Keep module scope clear. A genre prompt should not secretly change unrelated
  tracker behavior unless that is the point.
- If your custom module changes the desired output format, make sure it also
  updates any render/tracker instructions that depend on that format.
- Test one customization at a time. If the output gets weird, disable the last
  module you added before changing five more things.

### Simple customization examples

If you want a new cozy mystery mode, start from an existing mystery/noir or
cozy-style module and adjust:

- `Genre`
- `ToneGuidelines`
- `NarrativePrinciples`
- `WritingStyle`
- `DialogueGuidelines`
- optional CoT steps for clues and information boundaries

If you want a new narrator personality, start from a Vex prompt and adjust:

- `VexPersona`
- `PhysicalStorytelling`
- `CharacterStorytelling`
- `VoiceRelationships`
- `DialogueGuidelines`
- `CoT_Main`, if the narrator should think differently

If you want a new visual tracker, start from an existing tracker and adjust:

- the tracker activation variable
- the render instructions
- the exact fields shown
- whether it belongs in HTML, ASCII, regex, or plain markdown output

That is the main mental model: do not just add a command. Replace the rules that
need to change so the preset speaks with one coherent voice.

## Prompt Status

Many prompts are intentionally disabled by default. That does not mean they are
dead. They may be optional modules, mutually exclusive choices, style presets,
trackers, mature-content toggles, or experimental systems.

| Folder | Prompt files | `enabled: true` | `order_enabled: true` | Both enabled and ordered |
|---|---:|---:|---:|---:|
| `Nemo Engine/Prompts/` | 316 | 96 | 74 | 47 |
| `NemoNet/Prompts/` | 529 | 92 | 104 | 74 |
| `Atelier/Prompts/` | 91 | 27 | 35 | 27 |

## Archive And Version History

`Nemo Engine/Archive/` contains older full JSON exports.

`Nemo Engine/Archived Prompts/` contains the prompt-level history. It uses sparse
storage: after the baseline version, a version folder only stores prompts that
changed or were added in that version.

Useful files:

- `CHANGELOG.md`: what changed between versions
- `INDEX.md`: where each prompt appears over time
- `DEAD_PROMPTS.md`: prompts that existed before but are not in the current set
- `REGRESSION_CANDIDATES.md`: prompts whose current version is much shorter than
  a richer historical version
- `TRACKER_COMPARISON.md`: old tracker systems compared to modern equivalents

This is useful if you want to recover a removed feature, compare old behavior,
or understand why the preset changed.

## Templates

`Templates/Alternate Prompts/` is a scratchpad of optional prompts and
experiments. It includes alternate reasoning prompts, image-generation helpers,
dating-sim variants, reminder prompts, narration conventions, and other modules
that may or may not be part of a current preset.

Some files are placeholders or category markers.

## Searching The Repo

The loose markdown files make search much easier than digging through JSON.

Examples:

```powershell
rg "theory of mind" "Nemo Engine/Prompts"
rg "setvar::VexPersona" "Nemo Engine/Prompts"
rg "Prose Anti-Slop" "Nemo Engine/Prompts"
rg "interview_worldlogic" "Atelier/Prompts"
```

## Notes

- These presets are large. NemoNet especially may need trimming or careful module
  selection on smaller-context models.
- Token counts can vary depending on frontend and tokenizer.
- Some modules are for mature or adult-oriented roleplay. Review enabled modules
  before sharing a preset publicly.
- If a JSON export and a `Prompts/` folder disagree, the JSON is what the
  frontend imports, while the prompt folder is the readable/editable extraction.
- When editing prompt shards, preserve `identifier` for the same logical prompt
  so version history remains traceable.
