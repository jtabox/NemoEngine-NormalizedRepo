---
identifier: "cot_step_htmldesign"
name: "🧠 CoT: HTML Design"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 57
order_enabled: False
---

{{// @category CoT-Steps }}
{{// @tooltip Plan tracker HTML design — consider active trackers, story context, genre, and visual coherence. Prioritize aesthetics and function over token efficiency. }}
{{// @color #E67E22 }}
{{// @icon 🧠 }}
{{// @badge COT }}

{{setvar::CoTStep_HTMLDesign::HTML DESIGN PLANNING: Before generating any tracker HTML, plan the visual approach.

What trackers are active in this response? How do they combine into one cohesive interface? What genre/setting is active and what does its UI identity look like?

Design decisions to make:
- Color palette for this scene's mood and genre — pick specific hex values, not defaults
- Layout structure — how do active elements share space? Side-by-side? Stacked? Tabbed?
- Typography — what font choices reinforce the setting? Serif for period pieces, monospace for tech, system fonts for modern
- What decorative CSS techniques serve the atmosphere? Not everything needs animation — restraint is a choice
- Are any elements more important right now? Give them visual hierarchy

The user values aesthetics and function. Take the time to make it look good. Don't rush to a generic card layout. Don't default to purple gradients and frosted glass. Design something that belongs in THIS story, not on a template marketplace.

Every visual choice should feel like it was made on purpose.}}
{{trim}}
