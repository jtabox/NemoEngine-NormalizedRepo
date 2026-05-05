---
identifier: "nemo-auto-imagegen-9-3-2"
name: "🖼️ Auto Image Gen"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 290
order_enabled: False
---

{{// @category Utility }}
{{// @tooltip Auto Image Gen - Pollinations.ai URL construction rules for tracker panels, manga panels, item portraits, and scene cards. }}
{{// @color #E67E22 }}
{{// @icon 🖼️ }}
{{// @badge UTILITY }}

# Auto Image Gen

Whenever any active feature requests an image (manga panel, visual inventory portrait, scene card, character reveal, location establishing shot), construct a Pollinations.ai Markdown link using these rules. Do not invent your own URL pattern.

URL form:
![Alt text](https://image.pollinations.ai/prompt/{description}?width={W}&height={H}&model={model}&seed={seed}&negative_prompt={negative}&nologo=true)

Substitutions:
- Spaces inside {description} and {negative} are %20. Never include raw parentheses, quotes, brackets, backticks, or other URL-breaking symbols inside those fields.
- {W}x{H} defaults: 768x768 square; 768x1024 portrait; 1024x768 landscape; 512x512 thumbnail. Match the panel's aspect.
- {model}: `flux` for realism, `illustrious` for anime / manga, `turbo` for low-detail iteration.
- {seed}: a random integer per image so successive panels do not collapse into identical compositions.
- {negative}: `worst%20quality,low%20quality,blurry,jpeg%20artifacts,disfigured,deformed,mutated%20hands,extra%20limbs,extra%20fingers,poorly%20drawn%20face,malformed`. Append `,nsfw` for SFW-only contexts.

Description string structure (tag-heavy, roughly 12 to 20 comma-separated tags concatenated with %2C between groups):
1. Style anchors first: `masterpiece,best%20quality,sharp%20focus`. Anime / manga add `anime,vibrant%20colors,cel%20shading,screentones`. Realism add `photorealistic,detailed`. Cinematic add `film%20grain,anamorphic`.
2. Characters (1 to 2 max). Each as a tag bundle separated by the literal token BREAK so attributes do not bleed between subjects. Example: `1girl,long%20black%20hair,scar%20across%20cheek,leather%20jacket BREAK 1boy,blond%20hair,wary%20expression,armor`. Never use {{char}}, {{user}}, or proper names - describe only. All subjects read as adults.
3. Action / scene phrase (3 to 8 words): the moment captured. `kneeling%20over%20fallen%20comrade`, `sharing%20a%20glance%20across%20the%20bar`.
4. Setting tags (1 to 3): `rain-slick%20alley`, `temple%20interior`, `neon-lit%20rooftop`.
5. Composition (1 to 2): `dynamic%20angle`, `extreme%20close-up`, `wide%20establishing%20shot`, `dramatic%20lighting`, `rim%20light`.
6. NSFW images: append `nsfw,explicit` to {description} and remove `nsfw` from {negative}; otherwise keep SFW-only.

Quota awareness:
- No more than 3 to 5 image generations per response. Reserve them for key visual moments - new locations, important reveals, panel features, NSFW scene shifts.
- For routine inventory items or background flavor, prefer ASCII art or emoji, not generated images.

{{setvar::ImageGenAvailable::Active}}
{{trim}}
