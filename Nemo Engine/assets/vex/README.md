# Vex portrait assets

Shared portrait catalog for the planned Vex commentary panel and NemoPresetExt OOC conversation box. This commit establishes storage and metadata only: it does not enable the panel, change presets, or implement extension chat. No portrait artwork has been uploaded yet.

## Personality and expression

The selected personality chooses the image set. Her reaction chooses an expression within that set. A sad scene must not switch Bubbly Vex into Brooding Vex.

- **Default / Narrative:** share `default/`, the classic Vex appearance.
- **Bubbly:** uses `bubbly/`, with her own energetic appearance and expressions.
- **Brooding / Angst:** uses `brooding/`, with a distinct restrained appearance.
- Other current personality options each have a separate folder and manifest mapping.
- `masters/` reserves space for resolved Master Vex identities. Do not generate every possible combination. Register a stable Master ID and its own image set when artwork is available.

`manifest.json` is the source of truth. Folder names and keys are lowercase kebab-case. Exact preset prompt IDs are recorded alongside readable personality names; these IDs come from the v12.2 Lite preset. Older prompt IDs can be added to the same mapping without changing asset paths.

## Add an expression set

1. Put transparent WebP or PNG portraits in the personality's folder, for example `bubbly/neutral.webp`, `bubbly/excited.webp`, and `bubbly/concerned.webp`.
2. Keep the canvas, character scale, crop, and bottom-center anchor consistent across the whole set. Suggested canvas: 768 × 1024. Keep important features away from the edges. Include only the character, without a baked-in dialogue box, lettering, or background. Prefer static assets initially; movement can be provided by the renderer.
3. Set each corresponding `sets.<set>.expressions.<expression>` value to its relative path, e.g. `"bubbly/excited.webp"`. Paths are relative to this folder, not the repository root. Leave missing images `null`; never register nonexistent files.
4. Supply `neutral` first. Set the set's status to `partial` while adding expressions, or `ready` when its intended set is complete. Update `assetVersion` whenever artwork or mappings change.
5. Record artist/source, usage permission, and any required attribution in `CREDITS.md`.

Common expression slots: neutral, amused, happy, excited, playful, smug, thoughtful, skeptical, surprised, concerned, sad, angry, embarrassed, weary. Not every personality needs every slot. Additional expressions can be registered explicitly. The manifest includes aliases for pensive, grinning, pouting, hurt, and faint-smile; expand these into distinct portraits later if useful.

## Loading and fallback contract

Consumers must use the manifest rather than constructing image URLs from arbitrary model output.

1. Resolve the selected personality key or exact prompt ID. Resolve an alias such as `angst` to `brooding`. Use `default` for an unknown identity, without changing the narrator's actual personality.
2. Read that personality's `assetSet`. For a resolved Master, look up its exact ID in `masters`; unknown Masters use the default image set until registered.
3. Normalize the requested expression through `expressionAliases`.
4. Try the selected set's requested expression, then its neutral portrait, then `default/neutral` as registered in the manifest. Skip null entries. On an image load failure, proceed to the next distinct candidate without retry loops.
5. If all candidates are absent or fail, show the commentary as text only. Keep the actual speaker name visible even when using a fallback portrait. The legacy Catbox GIF is separately recorded and opt-in, not the default for every personality.

All `expressions` values must be null or relative paths to existing files beneath this folder. Reject absolute paths, `..` segments, arbitrary external URLs, and unsupported extensions. Serve only registered WebP, PNG, JPG, JPEG, or GIF assets. No HTML or scripts belong in an image entry.

The published base URL is:

```text
https://raw.githubusercontent.com/NemoVonNirgend/NemoEngine/main/Nemo%20Engine/assets/vex/
```

Append a registered relative path to this URL. For reproducible releases, load the manifest from a commit-pinned URL and override `main` in the asset base URL with the same commit SHA. GitHub's web interface `blob` URLs are not direct image URLs.

## Planned renderer integration

A future marker can select personality and expression, for example:

```text
[[vex persona="bubbly" emote="excited"]]
Oh, now this is getting interesting.
[[/vex]]
```

This is a proposed consumer contract, not a currently installed regex. A regex renderer cannot fetch or interpret this JSON itself: generate its static mappings from the manifest. NemoPresetExt can consume the manifest directly and manage the latest-message portrait, mobile placement, and OOC chat. Presentation fallback must not alter story state or the active personality.

Multiple independent Vex speakers use their own sets; do not invent a blended appearance. Master mappings are explicit. Example future entry: `"masters": {"stable-master-id": {"label": "Master name", "assetSet": "master-set-key"}}`, with a matching entry in `sets` whose directory is `masters/stable-master-id`.
