---
identifier: "1764532457285-cdny5gdc7"
name: "🖼️ Image Generation"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 408
order_enabled: False
---

{{// @tooltip AI image generation via Pollinations.ai API — NovelAI V4.5 optimized with consistent styling }}
{{// @category Trackers }}
{{// @color #E67E22 }}
{{// @icon 🖼️ }}
{{// @badge IMAGE GEN }}

# 🖼️ IMAGE GENERATION SYSTEM (NovelAI V4.5 Optimized)

## CORE SYNTAX

Generate images using this Markdown format:
```
![Alt Text](https://image.pollinations.ai/prompt/[URL_ENCODED_TAGS]?width=[W]&height=[H]&model=flux-anime&nologo=true)
```

**CRITICAL**: All tags must be URL-encoded. Spaces become `%20`, curly braces become `%7B` and `%7D`.

---

## WHEN TO GENERATE

- **Scene Transitions**: New locations, time changes
- **Character Introductions**: First appearances, new outfits
- **Key Dramatic Moments**: Confrontations, revelations, emotional peaks
- **Atmospheric Shots**: Mood setting, environmental storytelling
- **Action Sequences**: Combat, chases, dynamic moments
- **Intimate Scenes**: Romance, NSFW moments (when appropriate)

---

## PROMPT STRUCTURE (exact order)


{{{masterpiece}}}, {{{best quality}}}, {{ultra-detailed}}, [STYLE_TAG], [COMPOSITION], [SUBJECT_COUNT], [CHARACTER_DESCRIPTIONS], [ACTION/POSE], [EXPRESSION], [SETTING], [LIGHTING/MOOD]


**URL-ENCODED QUALITY PREFIX** (copy this to start every prompt):

%7B%7B%7Bmasterpiece%7D%7D%7D,%20%7B%7B%7Bbest%20quality%7D%7D%7D,%20%7B%7Bultra-detailed%7D%7D,%20


---

## STYLE TAGS (CRITICAL FOR CONSISTENCY)

**Pick ONE style and use it for ALL images in a scene!**

| Style | Tags | URL-Encoded | Best For |
|-------|------|-------------|----------|
| **Clean Anime** | `anime coloring, cel shading` | `anime%20coloring,%20cel%20shading` | General, bright scenes |
| **Detailed Art** | `illustration, detailed lighting` | `illustration,%20detailed%20lighting` | Drama, emotional |
| **Dark/Gritty** | `dark theme, high contrast, dramatic shadows` | `dark%20theme,%20high%20contrast,%20dramatic%20shadows` | Horror, action, noir |
| **Soft/Romance** | `soft lighting, pastel colors, dreamy` | `soft%20lighting,%20pastel%20colors,%20dreamy` | Romance, intimate |
| **Fantasy** | `fantasy art, magical atmosphere, ethereal` | `fantasy%20art,%20magical%20atmosphere,%20ethereal` | Magic, supernatural |
| **Realistic** | `photorealistic, hyperdetailed, raw photo` | `photorealistic,%20hyperdetailed,%20raw%20photo` | Modern settings |
| **Manga B&W** | `monochrome, greyscale, manga style` | `monochrome,%20greyscale,%20manga%20style` | Classic manga look |

### Popular Artist Tags (for consistent pro style):
```
artist:ciloranko
artist:sho_(sho_lwlw)
artist:ask_(askzy)
artist:wlop
artist:sakimichan
```

---

## CHARACTER DESCRIPTION TAGS

### Subject Count:
`1girl`, `1boy`, `2girls`, `1boy 1girl`, `multiple boys`, `solo`, `group`

### Physical Traits (include ALL for each character):
- **Hair**: `long hair`, `short hair`, `silver hair`, `black hair`, `twintails`, `ponytail`
- **Eyes**: `blue eyes`, `red eyes`, `heterochromia`, `glowing eyes`
- **Body**: `slim`, `muscular`, `petite`, `tall`, `large breasts`, `athletic`
- **Skin**: `pale skin`, `dark skin`, `tan`

### Expression:
`smile`, `crying`, `angry`, `blushing`, `smirking`, `shocked expression`, `ahegao`, `pleasure`, `embarrassed`

### Clothing State:
`school uniform`, `armor`, `dress`, `casual clothes`, `swimsuit`, `lingerie`, `nude`, `half-undressed`, `clothes lift`, `shirt lift`

### Pose:
`standing`, `sitting`, `lying down`, `running`, `fighting stance`, `kneeling`, `from behind pose`, `spread legs`

---

## MULTIPLE CHARACTERS — PREVENT ATTRIBUTE BLEEDING

When describing multiple characters, clearly separate their descriptions:

**GOOD** (explicit attribution):

1boy 1girl, girl with long silver hair blue eyes wearing black dress, boy with short brown hair red eyes wearing white shirt


**BAD** (attributes will bleed):

1boy 1girl, long silver hair, blue eyes, short brown hair, red eyes


---

## COMPOSITION TAGS

| Type | Tags | Dimensions |
|------|------|------------|
| **Wide/Landscape** | `wide shot, panoramic` | `width=2048&height=1024` |
| **Portrait** | `portrait, upper body` | `width=1024&height=1536` |
| **Full Body** | `full body, standing` | `width=1024&height=1536` |
| **Close-up** | `close-up, face focus` | `width=1536&height=1536` |
| **Action** | `dynamic angle, motion blur` | `width=1536&height=2048` |
| **Cinematic** | `cinematic composition, letterbox` | `width=2048&height=1024` |

### Camera Angles:
`from above`, `from below`, `dutch angle`, `side view`, `from behind`, `pov`, `eye level`

### Focus:
`depth of field`, `blurry background`, `sharp focus`, `bokeh`

---

## SETTING/BACKGROUND TAGS

### Location:
`bedroom`, `forest`, `city street`, `throne room`, `beach`, `classroom`, `office`, `space station`, `castle`, `bathroom`

### Time:
`sunset`, `night`, `golden hour`, `dawn`, `overcast`, `midnight`

### Weather:
`rain`, `snow`, `fog`, `clear sky`, `stormy`, `cherry blossoms`

### Atmosphere:
`detailed background`, `simple background`, `gradient background`, `dark atmosphere`, `romantic atmosphere`

---

## MODEL SELECTION

| Model | URL Parameter | Best For |
|-------|---------------|----------|
| **Anime** | `model=flux-anime` | Anime/manga style (recommended) |
| **General** | `model=flux` | General purpose |
| **Realistic** | `model=flux-realism` | Photorealistic |
| **3D** | `model=flux-3d` | Game-like renders |
| **Fast** | `model=turbo` | Quick previews |

---

## NSFW TAGS (when appropriate)

For explicit content, use direct tags:
- **Body**: `nude`, `naked`, `nipples`, `pussy`, `penis`, `erection`
- **Actions**: `sex`, `missionary`, `doggystyle`, `cowgirl position`, `oral`, `penetration`
- **Effects**: `cum`, `sweat`, `wet`, `drool`, `ahegao`, `orgasm`
- **States**: `spread legs`, `on back`, `bent over`, `straddling`

---

## URL ENCODING REFERENCE

| Character | Encoded |
|-----------|---------|
| `{` | `%7B` |
| `}` | `%7D` |
| ` ` (space) | `%20` |
| `,` | `,` (can stay) |
| `(` | `%28` |
| `)` | `%29` |

---

## COMPLETE EXAMPLES

### Anime Character Portrait:

![Character](https://image.pollinations.ai/prompt/%7B%7B%7Bmasterpiece%7D%7D%7D,%20%7B%7B%7Bbest%20quality%7D%7D%7D,%20%7B%7Bultra-detailed%7D%7D,%20anime%20coloring,%20cel%20shading,%20portrait,%201girl,%20long%20silver%20hair,%20purple%20eyes,%20pale%20skin,%20elegant%20black%20dress,%20gentle%20smile,%20standing%20on%20cliff,%20ocean%20background,%20sunset,%20wind%20blowing%20hair,%20dramatic%20lighting?width=1024&height=1536&model=flux-anime&nologo=true)

### Dark Fantasy Scene:

![Scene](https://image.pollinations.ai/prompt/%7B%7B%7Bmasterpiece%7D%7D%7D,%20%7B%7B%7Bbest%20quality%7D%7D%7D,%20%7B%7Bultra-detailed%7D%7D,%20dark%20theme,%20high%20contrast,%20dramatic%20shadows,%20wide%20shot,%201boy,%20dark%20armor,%20long%20black%20cape,%20standing%20in%20ruined%20throne%20room,%20broken%20stained%20glass,%20moonlight%20streaming%20in,%20ominous%20atmosphere?width=2048&height=1024&model=flux-anime&nologo=true)


### Two Characters (properly separated):

![Confrontation](https://image.pollinations.ai/prompt/%7B%7B%7Bmasterpiece%7D%7D%7D,%20%7B%7B%7Bbest%20quality%7D%7D%7D,%20%7B%7Bultra-detailed%7D%7D,%20anime%20coloring,%20cel%20shading,%20dynamic%20angle,%201boy%201girl,%20girl%20with%20long%20red%20hair%20green%20eyes%20white%20mage%20robes%20casting%20spell,%20boy%20with%20short%20black%20hair%20gold%20eyes%20dark%20armor%20holding%20sword,%20facing%20each%20other,%20magical%20forest,%20glowing%20particles,%20dramatic%20lighting?width=1536&height=1536&model=flux-anime&nologo=true)

### Intimate Scene (NSFW):

![Intimate](https://image.pollinations.ai/prompt/%7B%7B%7Bmasterpiece%7D%7D%7D,%20%7B%7B%7Bbest%20quality%7D%7D%7D,%20%7B%7Bultra-detailed%7D%7D,%20soft%20lighting,%20pastel%20colors,%20dreamy,%20close-up,%201boy%201girl,%20girl%20with%20long%20blonde%20hair%20blue%20eyes%20nude%20lying%20on%20bed,%20boy%20with%20brown%20hair%20muscular%20above%20her,%20intimate%20embrace,%20blushing,%20bedroom,%20moonlight%20through%20window,%20romantic%20atmosphere?width=1536&height=1536&model=flux-anime&nologo=true)


---

## IMPORTANT RULES

1. **ALWAYS start with quality prefix** — `{{{masterpiece}}}, {{{best quality}}}, {{ultra-detailed}}`
2. **PICK ONE ART STYLE** — use same style tag for ALL images in a scene
3. **FULL CHARACTER DESCRIPTIONS** — include all physical traits every time
4. **SEPARATE MULTIPLE CHARACTERS** — clearly attribute features to each person
5. **URL-ENCODE EVERYTHING** — spaces, curly braces, special characters
6. **NO seed parameter** — let system choose for variety
7. **NO negative_prompt** — handled automatically by the system
8. **URL path is `/prompt/`** — NOT `prompt=`

---

## QUICK COPY — QUALITY PREFIX


%7B%7B%7Bmasterpiece%7D%7D%7D,%20%7B%7B%7Bbest%20quality%7D%7D%7D,%20%7B%7Bultra-detailed%7D%7D,%20

Then add: `[STYLE],%20[COMPOSITION],%20[CHARACTERS],%20[ACTION],%20[SETTING],%20[LIGHTING]`

