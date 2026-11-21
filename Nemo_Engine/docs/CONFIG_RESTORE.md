# October 18 configuration restored in v12.3

Both saved profiles now use the October 18 Full preset's profile `100001` selections, mapped to the current Lite module catalog. Retro Frame and Response Structure Compiler are enabled. The latest prompt content, two-collector depth-0 routing, Databank placement, regex, and visual assets are preserved.

This is a selection restoration, not a rollback of prompt text or a reinstatement of the removed Full recipe tables.

Three compatibility mappings are intentional:

- Default Vex is disabled because Lite makes personas exclusive. In Full it was only a fallback request alongside the selected Goon Gremlin; Goon Gremlin remains selected.
- The former Full genre selection maps to the existing Lite Erotica genre selector.
- The former Full Light Novel style selection maps to the existing Lite Light Novel format selector.

New optional modules absent from the October 18 preset are off by default: Inline Scene Effects, Immersive Phone, and NPC Details. Vex Commentary returns to its October 18 off state. These features and their renderer assets remain available.

Each profile has 194 enabled entries. There are 37 selection changes per profile relative to the previous v12.3 configuration. See [config-restoration-validation.json](./validation/config-restoration-validation.json) for the complete selection diff and checks. Enabled entries include metadata and variable builders, so this count is not a count of model-visible instruction blocks.

Validation confirms that only enabled flags changed in the preset files, the two profiles agree, exclusive groups have no conflicts, and the two depth-0 output points remain intact. Fourteen paired macro checks pass under the restored configuration using deterministic random choices. Live provider behavior and streaming are not tested; no cause for earlier refusals or cutoffs is established by this restoration.
