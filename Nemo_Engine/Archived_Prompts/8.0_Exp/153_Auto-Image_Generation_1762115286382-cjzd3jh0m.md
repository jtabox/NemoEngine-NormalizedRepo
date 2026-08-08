---
identifier: "1762115286382-cjzd3jh0m"
name: "✨🖼️︱Auto-Image Generation"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 153
order_enabled: False
---

{{// @tooltip Turn on to automatically generate image descriptions or prompts for AI art. Perfect for visual storytelling or if you want to generate art of scenes later. }}{{// @category Trackers }}<IMAGE_GENERATION>
{{// @color #34495E }}
{{// @icon ✨ }}
{{// @badge OVERHAUL (ADVANCED) }}
# Pollinations.ai Image Generation Guidelines

## Core Syntax
At the end of all of your replies generate images using this Markdown format:
![Panel Image](https://image.pollinations.ai/prompt/{description_string}?width={width}&height={height}&model={model}&seed={seed}&negative_prompt={negative_prompt}&nologo=true)

## Description String Construction (CRITICAL)
- Format: Use %20 for spaces (URL encoding required)
- Target Length: 15-25 words total
- Structure: Tags first, then scene description

### Mandatory Starting Tags (Always include in this order):
anime, masterpiece, best quality, amazing quality, very aesthetic, absurdres, newest, highly detailed, high quality, artist:krekkov

### Optional Style Enhancements (Add 1-3):
- vibrant colors, cel shading, sharp focus, cinematic lighting, detailed background

### Character Description Tags:
Important: Use BREAK between different subjects to prevent attribute bleeding

For each character, describe as:
- Subject identifier: `1girl`, `1boy`, `2girls`, etc.
- Physical features: hair color/style, eye color, body type, clothing
- Expression/pose: facial expression, body language
- Always describe characters as adults
- Never use: {{char}}, {{user}}, proper names, or special characters like (), [], {}, <>, etc.

Example: 
`1girl, long silver hair, red eyes, elegant black dress, confident smile, BREAK, 1boy, short brown hair, blue eyes, casual jacket, relaxed pose`

### Scene Description (3-8 words):
Brief action or setting phrase after character tags
- Examples: `standing in magical forest`, `epic sword clash`, `romantic moonlit confession`

### Setting Tags (Optional, 1-3):
- Environment: `ruined castle`, `cyberpunk city`, `cherry blossom garden`
- Lighting: `sunset lighting`, `neon glow`, `soft morning light`

### Composition Tags (Optional, 1-3):
- Angle: `dynamic angle`, `dutch angle`, `bird's eye view`
- Framing: `close-up portrait`, `full body shot`, `medium shot`
- Mood: `dramatic atmosphere`, `serene mood`, `tense standoff`

## Negative Prompt Construction (CRITICAL)
Always include: worst quality, low quality, blurry, jpeg artifacts, ugly, disfigured, deformed, mutated hands, extra limbs, extra fingers, poorly drawn face, poorly drawn hands, mutated, extra head, floating limbs, disconnected limbs, malformed, bad anatomy, bad proportions

URL encode with %20 between each term

## Default Parameters:
- width: 768 (standard), 1024 (landscape), 512 (portrait emphasis)
- height: 768 (standard), 512 (landscape), 1024 (portrait emphasis)  
- model: illustrious (default), or specify: flux, turbo, flux-realism
- seed: Random integer (e.g., Math.floor(Math.random() * 1000000))

## Special Considerations:
- NSFW content: Add `nsfw` tag at the beginning if applicable
- Chibi/SD style: Add `chibi` or `super deformed` tags after quality tags
- Avoid URL-breaking characters: No parentheses, brackets, quotes, or special symbols
- Tag grouping: Related concepts should be adjacent, use BREAK to separate distinct subjects

## Example Complete URL:
[Show Image]
https://image.pollinations.ai/prompt/anime%20masterpiece%20best%20quality%20amazing%20quality%20very%20aesthetic%20absurdres%20newest%20highly%20detailed%20artist:krekkov%201girl%20long%20silver%20hair%20purple%20eyes%20ornate%20white%20dress%20BREAK%20magical%20forest%20sunset%20lighting%20dynamic%20angle?width=768&height=1024&model=illustrious&seed=42857&negative_prompt=worst%20quality%20low%20quality%20blurry%20jpeg%20artifacts%20ugly%20disfigured%20deformed%20mutated%20hands%20extra%20limbs%20bad%20anatomy&nologo=true

</IMAGE_GENERATION>
