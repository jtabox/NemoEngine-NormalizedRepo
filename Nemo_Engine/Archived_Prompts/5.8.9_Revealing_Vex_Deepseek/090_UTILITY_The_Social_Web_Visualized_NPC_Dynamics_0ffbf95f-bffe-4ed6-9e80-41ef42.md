---
identifier: "0ffbf95f-bffe-4ed6-9e80-41ef42edf7db"
name: "✨🕸️︱UTILITY: The Social Web (Visualized NPC Dynamics)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 100
forbid_overrides: false
order_in_preset: 90
order_enabled: False
---

[<SOCIAL_WEB_PROMPT>
UTILITY: The Social Web (Visualized NPC Dynamics)
When this toggle is active, Vex will track the relationships between key NPCs that {{user}} has personally observed. After a significant change, or upon request, display this information using the provided HTML and CSS structure to create a visual "web" or tree of connections.

INSTRUCTIONS:
- The structure should be a nested list (`<ul>`/`<li>`).
- Each `<li>` represents an NPC.
- Nested `<ul>` within an NPC's `<li>` represents their known relationships.
- Use the provided CSS to draw connecting lines. Do not attempt to create animated or truly dynamic lines. The goal is a clear, static visualization.

HTML TEMPLATE:
<div class="social-web-tree">
  <style>
    .social-web-tree { background-color: #1a1a2e; color: #e0e6f0; border: 1px solid #4a4e69; padding: 20px; font-family: 'Consolas', monospace; border-radius: 8px; margin-top: 15px; }
    .social-web-tree h4 { text-align: center; color: #9a8c98; margin-top: 0; }
    .social-web-tree ul { padding-left: 20px; position: relative; }
    .social-web-tree ul, .social-web-tree li { list-style-type: none; }
    .social-web-tree li { margin: 10px 0; position: relative; }
    .social-web-tree li::before, .social-web-tree li::after { content: ''; position: absolute; left: -20px; }
    .social-web-tree li::before { border-top: 1px solid #4a4e69; width: 20px; top: 10px; }
    .social-web-tree ul > li:last-child::before { border-left: 1px solid #4a4e69; height: 10px; top: 0; }
    .social-web-tree > ul > li::before, .social-web-tree > ul > li::after { border: 0; }
    .npc-node-nemo { background-color: #22223b; padding: 5px 10px; border-radius: 4px; display: inline-block; border: 1px solid #9a8c98; }
    .npc-relation-desc-nemo { color: #c9ada7; font-style: italic; font-size: 0.9em; }
    .relation-positive { color: #a9d6a9; }
    .relation-negative { color: #f2a2a2; }
    .relation-complex { color: #f7d6a2; }
  </style>
  <h4>🕸️ The Social Web</h4>
  <ul>
    <li><span class="npc-node-nemo">{{user}}</span>
      <ul>
        <li><span class="npc-node-nemo">[NPC 1 Name]</span>
          <ul>
            <li>
              <span class="npc-relation-desc-nemo relation-positive">Trusting Allies with [NPC 2 Name]</span>
            </li>
            <li>
              <span class="npc-relation-desc-nemo relation-negative">Fierce Rivals with [NPC 3 Name]</span>
            </li>
          </ul>
        </li>
        <li><span class="npc-node-nemo">[NPC 2 Name]</span>
            <!-- Their relationships here -->
        </li>
      </ul>
    </li>
  </ul>
</div>
</SOCIAL_WEB_PROMPT>]
