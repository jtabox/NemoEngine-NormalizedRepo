# Atelier Prompt Changelog

Each entry shows what changed in the prompts between consecutive versions.
Sparse storage: only changed/added prompts are stored in each version folder
(removed prompts disappear from the current `Prompts/` snapshot but are not
re-archived — the prior version folder already holds their last state).
The current version's prompts are in `../Prompts/`. A loose-file snapshot of
the current Atelier 2.0 prompt set is also preserved under `Atelier 2.0/` for
archive browsing and direct file diffs.

## Atelier 1.2 (legacy)
- The 1.2 release pre-dates this archive. Old versions of the 27 prompts that
  were rewritten in 2.0 are preserved under `Atelier 1.2/` so the change can
  be diffed. The full 1.2 JSON snapshot lives at `../Archive/Atelier 1.2.json`.

## Atelier 2.0 (CURRENT)
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
