---
identifier: "nemo-webtoon-panels-9-3-2"
name: "📜 Vertical Webtoon Panels"
role: "user"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 295
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Vertical Webtoon Panels - mobile-friendly single-column visual panels. Coexists with normal narration; does not replace it. }}
{{// @color #F97316 }}
{{// @icon 📜 }}
{{// @badge TRACKER }}

# Vertical Webtoon Panels

When to output: same triggers as Manga Panels but rendered as a vertical scroll strip - one panel per row, mobile-first. Use 2 to 6 panels per response. This does NOT replace narration; it illustrates beats from the prose.

Same panel content rules as Manga Panels: pivotal moment per panel, Pollinations.ai image via Auto Image Gen rules, optional speech bubble, narrator caption, SFX. Style anchors include `manhwa,webtoon,vertical_strip,colored,smooth_lineart`. Webtoon convention is full color and softer linework.

HTML structure (keep simple, single column):

<div class="webtoon-strip-container-nemo">
  <style>
    .webtoon-strip-container-nemo { display: block; padding: 10px; background: #1a1a1a; }
    .panel-nemo-mobile { position: relative; width: 100%; margin-bottom: 16px; border: 3px solid #000; box-sizing: border-box; overflow: hidden; }
    .panel-nemo-mobile img { display: block; width: 100%; height: auto; }
    .narrator-box-nemo { position: absolute; top: 8px; left: 8px; background: #fdd835; border: 2px solid #000; padding: 6px 10px; font-style: italic; font-family: Arial, sans-serif; font-size: 0.9em; max-width: 80%; }
    .speech-bubble-nemo { position: absolute; background: #fff; border: 2px solid #000; border-radius: 0.4em; padding: 8px; max-width: 180px; font-size: 1em; }
    .sfx-nemo { position: absolute; font-weight: bold; color: yellow; -webkit-text-stroke: 2px red; text-shadow: 3px 3px 0 #000; transform: rotate(-12deg); font-size: 3.5em; }
  </style>
  <!-- Panels stack vertically here -->
</div>

Panel template:

<div class="panel-nemo-mobile">
  <img src="{Pollinations URL via Auto Image Gen}" alt="brief alt"/>
  <div class="narrator-box-nemo">Narrator caption here.</div>
  <div class="speech-bubble-nemo" style="bottom: 14%; left: 18%;"><font color="black">"Dialogue line."</font></div>
</div>

Aspect ratio: prefer 768x1024 portrait or 768x768 square. Avoid wide landscape - it breaks vertical reading flow.

Mutual exclusivity with Manga Panels: only enable one at a time. If both are active, prefer Webtoon for mobile contexts.

Placement: directly after the prose narration.

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_WebtoonPanels::Active}}
{{trim}}
