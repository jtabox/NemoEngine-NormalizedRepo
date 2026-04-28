---
identifier: "nemo-manga-panels-9-3-2"
name: "📖 Manga / Comic Panels"
role: "user"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 294
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Manga / Comic Panels - inline visual panels (Pollinations.ai images) that illustrate the scene. Coexists with normal narration; does not replace it. }}
{{// @color #EC4899 }}
{{// @icon 📖 }}
{{// @badge TRACKER }}

# Manga / Comic Panels

When to output: when the scene has clear visual beats worth illustrating - reveals, action, charged stares, dramatic shifts. Skip for purely talky or transitional turns. Default cadence: 2 to 4 panels per response, up to 8 if the moment justifies it.

Important: this does NOT replace narration. The model writes the scene as prose normally. Panels are an inline visual layer that illustrates beats from the prose. The captions and speech bubbles inside panels echo or trim the prose; they don't carry the whole story.

Layout: a multi-panel grid. Two columns on wider displays, single column on narrow. Each panel is a Pollinations.ai image plus optional speech bubble, narrator caption, and SFX text overlay.

For each panel, capture:
- A pivotal visual moment from the current narration (one beat per panel - first kiss, drawn blade, slammed door, shared glance, the body falls).
- Image prompt built per the Auto Image Gen rules. Style anchor for manga: include `manga_style,comic_panel,screentones,sharp_focus`. Add `black_and_white` for traditional manga, or `vibrant_colors` for colored comic.
- Optional speech bubble - one short line of dialogue from the character speaking, white background, black border, tail toward speaker.
- Optional narrator caption - boxed in the corner, italic, sets context or interior thought ("Three nights without sleep.").
- Optional SFX overlay - large bold colored text, slight rotation, layered on the panel ("CRASH!", "—!", "BA-DUMP").

HTML structure (keep simple):

<div class="comic-page-container-nemo">
  <style>
    .comic-page-container-nemo { display: flex; flex-wrap: wrap; gap: 12px; padding: 12px; background: #f0f0f0; border: 2px solid #333; }
    .panel-nemo { position: relative; flex: 1 1 45%; min-width: 280px; border: 3px solid #000; overflow: hidden; }
    .panel-nemo img { display: block; width: 100%; height: auto; }
    .narrator-box-nemo { position: absolute; top: 8px; left: 8px; background: #fdd835; border: 2px solid #000; padding: 6px 10px; font-style: italic; font-family: Arial, sans-serif; font-size: 0.9em; max-width: 80%; }
    .speech-bubble-nemo { position: absolute; background: #fff; border: 2px solid #000; border-radius: 0.4em; padding: 8px; max-width: 180px; font-size: 1em; }
    .sfx-nemo { position: absolute; font-weight: bold; color: yellow; -webkit-text-stroke: 2px red; text-shadow: 3px 3px 0 #000; transform: rotate(-12deg); font-size: 3em; }
  </style>
  <!-- Panels go here -->
</div>

Panel template:

<div class="panel-nemo">
  <img src="{Pollinations URL via Auto Image Gen}" alt="brief alt"/>
  <div class="narrator-box-nemo">Narrator caption here.</div>
  <div class="speech-bubble-nemo" style="bottom: 12%; left: 18%;"><font color="black">"Dialogue line."</font></div>
  <div class="sfx-nemo" style="top: 25%; left: 45%;">CRASH!</div>
</div>

Image construction defers to {{getvar::ImageGenAvailable}} / Auto Image Gen rules. Use seed variation per panel so successive panels do not collapse into duplicates. Never use {{char}} or {{user}} names in the image prompt - tag visual descriptions only, all subjects read as adults.

Regex render: when the active render mode is regex rather than HTML, output a compact <st-tracker type="manga" title="Panels">...</st-tracker> block with <st-row k="Panel N" v="caption + speech"/> entries and image URLs as <st-row k="img" v="..."/>. The panels themselves still need the HTML for visual rendering; in regex mode, surface only the text content.

Placement: directly after the prose narration, wrapped in HTML markers so older panel blocks can be stripped from context.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_MangaPanels::Active}}
{{trim}}
