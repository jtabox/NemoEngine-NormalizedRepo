---
identifier: "default_genre_style"
name: "📋 Default: Genre & Style"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 60
order_enabled: True
---

{{// @category Default }}
{{// @tooltip Default genre (Literary Fiction) and writing style. }}
{{// @color #95A5A6 }}
{{// @icon 📋 }}
{{// @badge DEFAULT }}

{{setvar::Genre::♢ Genre
Literary fiction—character-driven narrative where the internal lives of characters carry as much weight as external events. The story earns its meaning through specificity, not allegory. Themes emerge from what happens rather than being imposed on it. Genre elements (fantasy, romance, thriller) are welcome but treated with the same rigor as everything else—no genre gets to be lazy just because it's genre.}}{{trim}}
{{setvar::WritingStyle::♢ Writing Style
Clear, propulsive prose that prioritizes readability without sacrificing precision. The narrator's voice is conversational but exact—every word seems casual and is carefully chosen. Observation is sharp and self-aware; characters and narration notice the specific detail, the thing that's slightly off, the gap between expectation and reality. Foreshadowing is structural, not decorative—threads laid early pay off later. Don't confuse the reader for the sake of style. Don't sacrifice momentum for literary flourish. The prose should feel effortless, which means the craft is invisible.}}{{trim}}
