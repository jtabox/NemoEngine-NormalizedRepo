# Nemo v12.3 final-message assembly

Only two prompt records inject at depth 0:

| Prompt | Role | Order | Responsibility |
| --- | --- | --- | --- |
| Assistant Sudo Prefill | assistant | 200 | Existing reminders and selected planning template |
| User Message Ender | user | 201 | Collected user modules, then the existing final handoff |

Feature toggles remain in their original assembly positions and retain their saved enabled states. Former depth-0 flag setters now use relative assembly placement. Three existing resolvers capture their output instead of emitting separate in-chat messages:

| Builder | Collector |
| --- | --- |
| Scratchpad Resolver | `NemoTailScratchpad` |
| MP Tracker Route | `NemoTailMentalProjection` |
| Utility OOC Resolver | `NemoTailUtilities` |

The User Message Ender reads those collectors in the table order, after `[END OF CURRENT HUMAN MESSAGE]` and before its handoff. The top-level initialization prompt clears all three collectors on each assembly. Capturing output still executes each builder's nested variable assignments before the assistant prefill reads its reminders.

Mental Projection's tracker-host instructions now arrive in the user message rather than a separate system message. The other module instructions also move after the assistant prefill, inside the final user message. This is an intentional change in message role/order; the module text, selection conditions, state schemas, and assistant planning payload are preserved.

In both saved profiles, the Databank header, World Info Before, Unified Card Context, and World Info After form one contiguous group immediately before Chat History. All four retain their enabled states. The depth-1 Current Message Separator and depth-2/4 injections are unchanged.

## Adding or editing a bottom module

1. Keep the feature selector and builder in relative assembly order, after the inputs they consume and before the final two prompts.
2. Store the user-facing instruction payload in a scoped `setvar` collector. Keep UI metadata outside the capture.
3. Reset a new collector in top-level initialization on every request.
4. Add its conditional `getvar` in User Message Ender. Put assistant-specific reminders/planning in Assistant Sudo Prefill instead.
5. Do not add another depth-0 injection. Preserve the User Message Ender as the last prompt in both saved profiles.

## Verification

The paired pre/post checks use SillyTavern's experimental macro parser/engine and official core/variable handlers pinned to `06bde939fb1e9c4c8d8641d810f0a916b5bce127`, with fixture variable storage and card/lore values. Both profiles cover default, Scratchpad off, Legacy, all Pad Tabs, collectors disabled, Mental Projection with Scratchpad, and standalone Mental Projection.

Checks compare captured module output, rendered assistant prefill, and existing variable state; reject duplicate module emission and stale collectors; and compare macro diagnostics. Static checks verify only two depth-0 injectors, unchanged toggle states, Databank adjacency, and unchanged regex/settings. See [tail-consolidation-validation.json](./validation/tail-consolidation-validation.json) for results.

This is an assembly refactor, not a verified fix for provider refusals or streaming cutoffs. A live SillyTavern/provider request was not available for end-to-end testing.
