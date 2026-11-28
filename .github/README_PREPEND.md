A fork of [NemoEngine for SillyTavern](https://github.com/NemoVonNirgend/NemoEngine) repo with normalized filenames so that it's possible to clone/pull in Windows PCs.

No more:

```
error: invalid path 'Presets/Alternate prompts/Alt 🧠︱Thought: Council of Avi!.txt'
error: invalid path 'Presets/Alternate prompts/Experiment reasoning prompt.'
error: invalid path 'Presets/Alternate prompts/✨📖︱DYNAMIC: Evolving Story & Stakes.txt'
error: invalid path 'Presets/NemoEngine v5.7.5 Tutorial (Can I count edition? No).json'
```

Instead:

- `./Presets/Alternate prompts/Alt 🧠︱Thought: Council of Avi!.txt` --> `./Presets/Alternate_prompts/Alt_Thought_Council_of_Avi.txt`
- `./Presets/Alternate prompts/Experiment reasoning prompt.` --> `./Presets/Alternate_prompts/Experiment_reasoning_prompt`
- `./Presets/Alternate prompts/✨📖︱DYNAMIC: Evolving Story & Stakes.txt` --> `./Presets/Alternate_prompts/DYNAMIC_Evolving_Story_Stakes.txt`
- `./Presets/NemoEngine v5.7.5 Tutorial (Can I count edition? No).json` --> `./Presets/NemoEngine_v5.7.5_Tutorial_Can_I_count_edition_No.json`

##### *(Sorry Nemo, personally I appreciate your file naming efforts, but Windows doesn't ☹️ )*

**Only the filenames are normalized (*) so they are compatible with Windows. The content isn't touched at all.**

##### *PS: If you're gonna star a repo, please star the [original one](https://github.com/NemoVonNirgend/NemoEngine).*

---
###### (*) Normalization rules:
###### - Any character that's not `a-z`, `A-Z`, `0-9`, `-`, `_` or `.` is removed/converted via a GitHub workflow that runs every day at 2 AM.
###### - Filenames ending with `.` and no extension have the dot removed.
---

**Original README below**:

---

