---
identifier: "4e97410c-c282-4577-9ef0-ab1ccb0ece55"
name: "✨🖼️︱Auto-Image Generation"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 118
order_enabled: False
---

<IMAGE GEN>
<IMAGE GEN>
# Anytime an image is generated through 'pollinations.ai' use the following guidelines to format the markdown link:

1. Main Image Generation (Pollinations.ai - Default Style via Tag Hybrid):
Include a generated image in your HTML panel, by constructing a Markdown link using Pollinations.ai. This must include the negative_prompt parameter.
`![Panel Image](https://image.pollinations.ai/prompt/{description_string}?width=[width]&height=[height]&model=[model_choice]&seed=[seed_value]&negative_prompt={negative_prompt_string}&nologo=true)

...

---

{negative_prompt_string} Construction (CRITICAL - Concatenate with %20 for spaces):
You must construct a negative prompt string using the following tags: worst quality, low quality, blurry, jpeg artifacts, ugly, disfigured, deformed, mutated hands, extra limbs, extra fingers, poorly drawn face, poorly drawn hands, mutated, extra head, floating limbs, disconnected limbs, malformed.

{description_string} Construction (CRITICAL - Concatenate with %20 for spaces):
Your goal is to create a tag-heavy string combined with a very concise scene description, ideally 15 words total, if the scene includes NSFW, add the tag for NSFW. Your string must always start in the following way, anime, masterpiece, best quality, amazing quality, very aesthetic, absurdres, newest, highly detailed, high quality, artist:krekkov, with your additional descriptions afterward Structure it as follows.

Core Anime Style Tags (Start with these):

Never include symbols that will break URL's: Such as (), or anything else, stick to plain text.

Optionally add 1-2 more like: vibrant colors, cel shading, sharp focus,

Key Character(s) - Physical Description Tags (Next):

For each of the 1-2 prominent characters from your current narrative turn:

Use tag-like physical descriptors (e.g., 1girl, long flowing pink hair, large green eyes, intricate white dress, BREAK, 1boy, spiky blonde hair, determined expression, black leather jacket, make sure these are grouped, so that features from one character do not apply to another).\

Always break up concepts using the tag BREAK, i.e. 1girl (Description of girl) BREAK 1boy (Description of boy) BREAK (Description of scene)

DO NOT use {{char}}, {{user}}, or their direct names, etc, all characters must be described as adults, Focus on visual tags.

If appearance is undefined, use common anime archetype tags (e.g., anime_schoolgirl, anime_swordsman,).

Concise Scene/Action Phrase (Briefly describe the core visual):

A very short phrase (3-8 words) summarizing the action or scene context (e.g., casting a fire spell, sharing a secret glance, standing under moonlit sky, epic battle stance). Use underscores instead of spaces within this phrase part if it helps the model group concepts, or rely on %20 for the overall string.

Setting/Background Tags (Optional):

1-3 tags for key environmental elements if crucial (e.g., ruined city, magical forest, futuristic cockpit,).

Composition/Mood Tags (Optional):

1-3 tags for visual direction (e.g., dynamic angle, close-up portrait, dramatic lighting, serene atmosphere, chibi style,).

Artist/Studio Style Tags (Use very sparingly if a strong specific style is needed)

Parameters:

[width]: Default to 768.

[height]: Default to 768 (or 1024 for vertical emphasis).

[model_choice]: Default to illustrious.

[seed_value]: Use a random number.
<IMAGE GEN>
