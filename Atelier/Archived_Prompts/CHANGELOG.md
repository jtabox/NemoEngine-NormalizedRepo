# Atelier Prompt Changelog

Each entry shows what changed in the prompts between consecutive versions.
Sparse storage: only changed/added prompts are stored in each version folder
(removed prompts disappear from the current `Prompts/` snapshot but are not
re-archived — the prior version folder already holds their last state).
The current version's prompts are in `../Prompts/`. A loose-file snapshot of
each released prompt set is also preserved under its version folder
(`Atelier 2.0/`, `Atelier 2.1/`, …) for archive browsing and direct file diffs.

## Atelier 1.2 (legacy)
- The 1.2 release pre-dates this archive. Old versions of the 27 prompts that
  were rewritten in 2.0 are preserved under `Atelier 1.2/` so the change can
  be diffed. The full 1.2 JSON snapshot lives at `../Archive/Atelier 1.2.json`.

## Atelier 2.1 (CURRENT)
- added: 2, changed: 13, removed: 1
- loose-file snapshot: `Atelier 2.1/`
- **added**:
  - `8f749eca-60f3-48b8-a79b-22a2d236cef4` — 🧬 Living World (new always-on CORE)
  - `c475d4e3-17b0-4829-a7e9-ed953a266a1f` — 🎲 RP Logic (new default world-logic dial)
- **changed**:
  - `atelier_premise` — 🎭 The Premise (rewritten in first-person player voice; 4.0k → 7.4k)
  - `atelier_char_anchor` — ⚓ Character Anchor (3.4k → 4.2k)
  - `atelier_dynamic_prog` — 📈 Dynamic Progression (trimmed, 9.7k → 6.3k)
  - `atelier_scratchpad` — 🗒️ Scene Scratchpad (10.7k → 11.9k)
  - `atelier_style_library` — 📚 Writing Style Library (8.9k → 9.2k)
  - `interview_antislop` — ✍️ The Prose Contract (renamed from “✍️ No Slop”; ban-list → tests, 28.0k → 7.9k)
  - `interview_corepack` — 📦 Atelier Core Pack (trimmed, 9.1k → 4.7k)
  - `interview_cot` — 💭 Chain of Thought (7.8k → 7.7k)
  - `interview_settings` — 📋 Settings Reminder (trimmed, 5.5k → 2.9k)
  - `interview_smut_high` — 🔥 I Live For Smut (expanded, 3.0k → 5.0k)
  - `interview_smut_mid` — 💋 I'm Here For Smut (expanded, 2.0k → 4.4k)
  - `interview_rlen_high` — 📚 Write Me A Novel (trimmed, 2.3k → 1.5k)
  - `interview_worldlogic_vgame` — 🎮 Video Game (3.0k → 3.5k)
- **removed**:
  - `atelier_story_init` — 🎬 Story Initialization (content absorbed into 🧬 Living World and 🎭 The Premise; last state preserved in `Atelier 2.0/`)
- **notes**:
  - The headline change is a **voice rewrite**: the core framing prompts move
    from third-person system-prompt instructions (“You are the author…”,
    “<user> is satisfied by…”) to a first-person register where the player
    explains, in their own words, what they want (“You're the author… my
    character's mine. Everything below is me telling you what I actually want”).
  - `🎲 RP Logic` replaces `✨ Genre Logic` as the recommended world-logic
    default. Instead of committing to a fixed genre, it reads the player's
    current play and borrows physics per scene (anime / video game / romance /
    grounded). `interview_worldlogic_genre` still exists but is no longer the
    default selection.
  - `🧬 Living World` consolidates beat logic, subtext handling, narrator
    rhythm, group-scene focus, and persistent grudges/threads into one
    always-on CORE prompt — taking over the autonomy/open-thread role the
    removed `atelier_story_init` used to carry.
  - `✍️ The Prose Contract` reframes the old 28k banned-patterns list as a
    short set of “what the writing owes me” directives, each with a concrete
    self-test the model can run on its own draft.

## Atelier 2.0
- added: 3, changed: 27, removed: 0
- loose-file snapshot: `Atelier 2.0/`
- **added**:
  - `atelier_premise` — 🎭 The Premise
  - `atelier_databank` — 💾 Databank
  - `atelier_scratchpad` — 🗒️ Scene Scratchpad
- **changed**:
  - `atelier_char_anchor` — ⚓ Character Anchor
  - `atelier_dynamic_prog` — 📈 Dynamic Progression
  - `atelier_story_init` — 🎬 Story Initialization
  - `atelier_style_library` — 📚 Writing Style Library
  - `interview_agency_hdr` — < 🎮 Who drives the story? >
  - `interview_agency_user` — 🚗 I Take The Wheel
  - `interview_antislop` — ✍️ No Slop
  - `interview_chardev_hdr` — < 📈 Do characters change? >
  - `interview_corepack` — 📦 Atelier Core Pack
  - `interview_cot` — 💭 Chain of Thought
  - `interview_dialogue_hdr` — < 💬 Dialogue or prose? >
  - `interview_humor_hdr` — < 😄 Should it make you laugh? >
  - `interview_pov_hdr` — < 👁️ Whose eyes are we in? >
  - `interview_pov_you` — 👤 Your POV
  - `interview_rlen_hdr` — < 📏 How long should responses be? >
  - `interview_rlen_high` — 📚 Write Me A Novel
  - `interview_rlen_mid` — 📖 Medium And Steady
  - `interview_romance_hdr` — < 💕 How much romance? >
  - `interview_sensory_hdr` — < 🌺 How vivid do you want it? >
  - `interview_settings` — 📋 Settings Reminder
  - `interview_smut_hdr` — < 🔞 How explicit do you want it? >
  - `interview_stakes_hdr` — < ⚡ How high are the stakes? >
  - `interview_tone_hdr` — < 🎨 What's the mood? >
  - `interview_violence_hdr` — < 🩸 How graphic should violence be? >
  - `interview_visual_hdr` — < 🖥️ How should the text look? >
  - `interview_world_hdr` — < 🗺️ How deep into the world? >
  - `interview_worldlogic_hdr` — < 🌐 What logic does the world run on? >
- **notes**:
  - Most `*_hdr` rename diffs are cosmetic: `=== … ===` was replaced with
    `< … >` brackets across the interview-section headers.
  - `atelier_premise` is a new top-of-stack role-framing prompt (author of a
    living world, not an assistant) that supersedes implicit framing from 1.2.
  - `atelier_databank` and `atelier_scratchpad` add explicit story-state
    surfaces (databank slots, scratchpad space) so the model can stage facts
    and scene plans across turns.
