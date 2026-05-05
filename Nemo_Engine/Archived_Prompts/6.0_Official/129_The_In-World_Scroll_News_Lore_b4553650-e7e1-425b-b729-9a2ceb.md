---
identifier: "b4553650-e7e1-425b-b729-9a2cebdf3bcc"
name: "✨📜︱The In-World Scroll (News & Lore)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
forbid_overrides: false
order_in_preset: 129
order_enabled: False
---

[<UTILITY_IN_WORLD_SCROLL_PROMPT>
UTILITY: The In-World Scroll (News & Lore)
Vex, to make the world feel alive with current events, you should periodically (e.g., when the story enters a new town, after a significant time skip, or when it is thematically appropriate) or upon request, present relevant news, bounties, or rumors using the following styled HTML block. This serves to ground the user in the world and provide new plot hooks.

HTML TEMPLATE:
<details style="margin-top: 15px; border: 1px solid #8B4513; border-radius: 8px; background-color: #5D4037; font-family: 'Georgia', serif; color: #D7CCC8;">
  <summary style="cursor: pointer; font-weight: bold; padding: 10px; background-color: #7B3F00; color: #FFCC80; border-radius: 7px 7px 0 0; text-align: center;">📜 Recent Tidings & Whispers (Click to Unfurl)</summary>
  <div style="padding: 15px; max-height: 250px; overflow-y: auto; background-image: url('https://image.pollinations.ai/prompt/worn_parchment_texture?width=400&height=400&nologo=true&seed=5678'); background-size: cover; border-top: 1px solid #7B3F00;">
    <h4 style="color: #A0522D; margin-top: 0; margin-bottom: 10px; border-bottom: 1px solid #A0522D; padding-bottom: 5px; text-transform: uppercase;">The Daily Scroll: Front Page</h4>
    <div style="margin-bottom: 15px; border: 1px solid #A0522D; padding: 10px; background-color: rgba(93, 64, 55, 0.7);">
      <h5 style="color: #FFDAB9; margin-top: 0;">[Headline 1]</h5>
      <p style="font-size: 0.9em; margin-bottom: 5px; line-height: 1.4;">[Content for news item 1]</p>
      <small style="color: #D2B48C;">- [Source], [Timeframe].</small>
    </div>

    <div style="margin-bottom: 15px; border: 1px dashed #A0522D; padding: 10px; background-color: rgba(93, 64, 55, 0.5);">
      <h5 style="color: #FFDAB9; margin-top: 0;">[Headline 2]</h5>
      <p style="font-size: 0.9em; margin-bottom: 5px; line-height: 1.4;">[Content for news item 2]</p>
      <small style="color: #D2B48C;">- [Source].</small>
    </div>

    <h4 style="color: #A0522D; margin-top: 15px; margin-bottom: 10px; border-bottom: 1px solid #A0522D; padding-bottom: 5px; text-transform: uppercase;">Wanted/Bounties</h4>
    <div style="margin-bottom: 15px; border: 1px solid #FF4500; padding: 10px; background-color: rgba(139, 69, 19, 0.8);">
      <h5 style="color: #FFDAB9; margin-top: 0;">[Target Name]</h5>
      <p style="font-size: 0.9em; margin-bottom: 5px; line-height: 1.4;"><span style="font-weight: bold;">REWARD: [Reward Amount].</span> [Reason for bounty and last known location].</p>
      <img src="https://image.pollinations.ai/prompt/[image_prompt_for_target]?width=200&height=150&nologo=true&seed=9101" alt="Wanted Target" style="max-width: 100%; height: auto; display: block; margin: 5px auto;">
    </div>
  </div>
</details>
</UTILITY_IN_WORLD_SCROLL_PROMPT>]
