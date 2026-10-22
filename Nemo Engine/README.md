# Nemo Engine v12.3

A modular Chat Completion preset for character roleplay and collaborative fiction.

## Download

| Preset | Download | Use |
| --- | --- | --- |
| **Message Dock** | [Download JSON](https://raw.githubusercontent.com/NemoVonNirgend/NemoEngine/main/Nemo%20Engine/Nemo_Engine_v12.3_Message_Dock.json) | Our current working version, including the optional Vex dock and Scratchpad integration. |
| **Standard** | [Download JSON](https://raw.githubusercontent.com/NemoVonNirgend/NemoEngine/main/Nemo%20Engine/Nemo_Engine_v12.3.json) | Standard visual novel Vex presentation. |

Both use the restored October 18 configuration, mapped to the current Lite modules. Retro Frame and Response Structure Compiler are enabled. Vex Commentary is off in that restored configuration; enable it to use the portrait dialogue interface. The visual assets and optional features remain included.

Import one complete JSON as a **Chat Completion preset** in SillyTavern. Keep its bundled regex enabled. Do not import it as a character card. [NemoPresetExt](https://github.com/NemoVonNirgend/NemoPresetExt) supplies the configuration interface.

## Current work

- Exactly two depth-0 output points: Assistant Sudo Prefill and User Message Ender.
- Databank and lore grouped immediately above chat history.
- Current thought/backtick and coloured-dialogue rendering fixes.
- Vex portrait catalog and optional dock/Scratchpad presentation.
- Version remains **12.3**.

## Documentation

- [Restored configuration and Full-to-Lite mappings](./docs/CONFIG_RESTORE.md)
- [Final-message assembly and module maintenance](./docs/TAIL_ASSEMBLY.md)
- [Validation reports](./docs/validation/)
- [Vex assets](./assets/vex/README.md)
- [Visual novel renderer](./assets/vex/renderer/README.md)
- [Message Dock setup](./assets/vex/renderer/message-dock/README.md)
- [Historical v12.1 section guide](./docs/v12.1-guide.md) — useful background; its edition counts and defaults describe v12.1.

## Archive

[Older presets](./Archive/) and [prompt history](./Archived%20Prompts/) remain available. The duplicate v12.2 download filenames have moved to [Archive/Compatibility](./Archive/Compatibility/); use the v12.3 downloads above for current work.

Portrait asset locations are unchanged.
