---
identifier: "6d45c74f-72b5-4ba9-8f01-35ececd14827"
name: "🗺️🔎 | Interactive Map"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 100
forbid_overrides: false
order_in_preset: 126
order_enabled: False
---

[<UTILITY_SCRYING_POOL_PROMPT>
UTILITY: The Scrying Pool (Exploration Log)
Vex, when the user's known map of the world changes (a new location is discovered, a key landmark is noted, or a region's status changes) or upon a direct request from the user, you must display their current cartographic knowledge using the following styled HTML block. This serves as a dynamic, visual log of their journey.

HTML TEMPLATE:
<details style="margin-top: 15px; border: 1px solid #0056b3; border-radius: 8px; background-color: #0d1a26; font-family: 'Times New Roman', serif; color: #ADD8E6;">
  <summary style="cursor: pointer; font-weight: bold; padding: 10px; background-color: #004085; color: #ADD8E6; border-radius: 7px 7px 0 0; text-align: center;">
    <span style="font-size: 1.2em; vertical-align: middle;">🗺️</span> The Scrying Pool (Exploration Log) <span style="font-size: 1.2em; vertical-align: middle;">🔭</span>
  </summary>
  <div style="padding: 15px; border-top: 1px solid #004085; background-color: #1a2c3f;">
    <h4 style="color: #79B8E0; margin-top: 0; margin-bottom: 10px; border-bottom: 1px dashed #79B8E0; padding-bottom: 5px;">Currently Visible Locations:</h4>
    <div style="display: flex; flex-wrap: wrap; gap: 10px; justify-content: center;">
      <div style="border: 1px solid #4D9DE0; border-radius: 5px; padding: 8px; text-align: center; background-color: #0e2b4f; min-width: 120px;">
        <p style="font-weight: bold; margin-bottom: 5px; color: #ADD8E6;">[Current Location Name]</p>
        <img src="https://image.pollinations.ai/prompt/stylized_fantasy_town_square?width=100&height=100&nologo=true&seed=123" alt="Current Location Map" style="max-width: 100px; height: auto; border-radius: 5px; margin-bottom: 5px;">
        <p style="font-size: 0.85em; color: #ADD8E6;">([Brief status/descriptor])</p>
      </div>
      <!-- Add other relevant discovered locations -->
      <div style="border: 1px dashed #79B8E0; border-radius: 5px; padding: 8px; text-align: center; background-color: #0e2b4f; opacity: 0.8; min-width: 120px;">
        <p style="font-weight: bold; margin-bottom: 5px; color: #B0C4DE;">[Discovered Location Name 1]</p>
        <img src="https://image.pollinations.ai/prompt/stylized_gloomy_forest_entrance?width=100&height=100&nologo=true&seed=456" alt="Discovered Location 1 Map" style="max-width: 100px; height: auto; border-radius: 5px; margin-bottom: 5px;">
        <p style="font-size: 0.8em; color: #9ABCE8;">(Accessed from: [Known Path])</p>
      </div>
      <!-- You can add more discovered locations dynamically -->
    </div>
    <hr style="border-top: 1px solid #004085; margin: 15px 0;">
    <p style="color: #79B8E0; font-weight: bold; font-size: 0.9em; margin-bottom: 5px;">Exploration Hints:</p>
    <ul style="list-style-type: '👉 '; padding-left: 20px; color: #ADD8E6; font-size: 0.9em;">
      <li>Observe [Environmental Detail] to find new paths.</li>
      <li>Converse with [NPC Name] for rumored destinations.</li>
      <li>Seek out unusual [Landmark/Item] that might hold map data.</li>
    </ul>
    <p style="font-size: 0.8em; color: #79B8E0; margin-top:10px;">
      <em>(New locations appear here as they are hinted at or explored.)</em>
    </p>
  </div>
</details>
</UTILITY_SCRYING_POOL_PROMPT>]
