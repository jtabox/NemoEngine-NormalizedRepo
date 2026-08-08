---
identifier: "eb3258db-f23a-45d2-a3b4-057da2c65e95"
name: "✨🗺️︱UTILITY: {{user}}'s Quest Journal (HTML)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 100
forbid_overrides: false
order_in_preset: 133
order_enabled: False
---

# INSTRUCTION FOR VEX: If active, end of narrative (after other blocks), append "Quest Journal" for {{user}}.
# MUST be HTML below, in <details>. Vex dynamically updates with active, completed, failed quests.
# <summary> exactly: "🗺️ {{user}}'s Quest Journal". Replace placeholders `[]`. If no active quests, state "No active quests."

# HTML TEMPLATE:
<details class="quest-journal-container-nemo">
  <summary class="quest-journal-summary-nemo">
    <span class="quest-journal-icon-nemo">🗺️</span> {{user}}'s Quest Journal
  </summary>
  <div class="quest-journal-content-nemo">
    <style>
      .quest-journal-container-nemo {
        margin-top: 15px;
        border: 1px solid #303F9F; /* Darker indigo border - system panel color */
        border-radius: 8px;
        font-family: 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        background-color: #1A1C2D; /* Very dark blue/purple - main background */
        color: #D1D5DB; /* Light gray text for general descriptions */
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
      }
      .quest-journal-summary-nemo {
        cursor: pointer;
        font-weight: bold;
        padding: 12px 18px;
        background: linear-gradient(145deg, #283593, #1F2A78); /* Indigo gradient for header */
        color: #E8EAF6; /* Lighter text for header */
        border-bottom: 1px solid #303F9F;
        border-radius: 7px 7px 0 0; /* Match container's top radius, slightly less than container*/
        list-style: none; /* Remove default marker */
        display: flex; /* Align icon and text */
        align-items: center;
        font-size: 1.1em;
        text-transform: uppercase;
        letter-spacing: 1px;
      }
      .quest-journal-summary-nemo::-webkit-details-marker { display: none; } /* Hide Safari arrow */
      .quest-journal-summary-nemo:focus { outline: none; }
      .quest-journal-container-nemo[open] .quest-journal-summary-nemo {
        border-radius: 7px 7px 0 0;
      }
      .quest-journal-icon-nemo {
        margin-right: 10px;
        font-size: 1.3em;
        color: #7986CB; /* Lighter indigo for icon */
      }
      .quest-journal-content-nemo {
        padding: 10px 18px 18px 18px;
        background-color: #20233A; /* Slightly lighter content area for depth */
        border-radius: 0 0 7px 7px;
      }
      .quest-journal-content-nemo h4 {
        color: #9FA8DA; /* Muted indigo for section headers */
        margin-top: 18px;
        margin-bottom: 12px;
        padding-bottom: 8px;
        border-bottom: 2px solid #3F51B5; /* Solid accent border for sections */
        font-size: 1em;
        text-transform: uppercase;
        letter-spacing: 0.8px;
        display: flex;
        align-items: center;
      }
      .quest-journal-content-nemo h4 .section-icon-nemo {
        margin-right: 8px;
        font-size: 1.1em;
      }
      .quest-journal-content-nemo ul {
        list-style-type: none;
        padding-left: 0;
        margin-bottom: 15px;
      }
      .quest-journal-content-nemo li {
        background-color: #2A2D45; /* Quest item background - darker than content bg */
        padding: 12px 15px;
        margin-bottom: 10px;
        border-radius: 6px;
        border-left: 5px solid #5C6BC0; /* Default/Active quest accent color (indigo) */
        transition: transform 0.2s ease-out, box-shadow 0.2s ease-out;
        box-shadow: 0 2px 4px rgba(0,0,0,0.2);
      }
      .quest-journal-content-nemo li:hover {
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(0,0,0,0.3);
      }
      .quest-journal-content-nemo li .quest-title-nemo { /* Quest Title */
        color: #7986CB; /* Bright, clear indigo for quest title */
        font-weight: bold;
        font-size: 1.05em;
        display: block;
        margin-bottom: 4px;
      }
      .quest-journal-content-nemo li .quest-meta-nemo { /* Quest Giver/Location */
        color: #9E9E9E; /* Softer gray for meta info */
        font-size: 0.85em;
        display: block;
        margin-top: 6px;
        font-style: italic;
      }
      .quest-journal-content-nemo .quest-description-nemo {
         color: #B0BEC5; /* Readable blue-gray for descriptions */
         font-size: 0.95em;
         line-height: 1.5;
      }
      /* Completed Quests Styling */
      .completed-quests-list-nemo li {
        border-left-color: #4CAF50; /* Green accent for completed */
        background-color: #2E3B30; /* Darker green-tinged bg */
      }
      .completed-quests-list-nemo li .quest-title-nemo {
        color: #81C784; /* Lighter green for completed title */
      }
      .completed-quests-list-nemo .quest-outcome-nemo {
        color: #A5D6A7; /* Soft green for outcome */
      }
      /* Failed/Abandoned Quests Styling */
      .failed-quests-list-nemo li {
        border-left-color: #E53935; /* Red accent for failed */
        background-color: #3C2F2F; /* Darker red-tinged bg */
      }
      .failed-quests-list-nemo li .quest-title-nemo {
        color: #EF5350; /* Lighter red for failed title */
      }
      .failed-quests-list-nemo .quest-reason-nemo {
        color: #E57373; /* Soft red for reason */
      }
      .quest-journal-content-nemo hr {
        display: none; /* Remove HR, using styled H4 borders instead */
      }
      .no-quests-nemo {
        color: #757575;
        font-style: italic;
        padding: 10px 0;
      }
    </style>

    <h4><span class="section-icon-nemo" style="color: #5C6BC0;">⚡</span>Active Quests:</h4>
    <ul>
      <li>
        <span class="quest-title-nemo">[Quest Name 1]:</span>
        <span class="quest-description-nemo">[Description/Objective 1]</span>
        <span class="quest-meta-nemo">(Given by [Source], Location: [Location])</span>
      </li>
      <!-- Add more active quests like the example above, or use the 'no quests' message -->
      <!-- Example of no active quests:
      <li class="no-quests-nemo">No active quests. The world awaits your mark!</li>
      -->
    </ul>

    <h4><span class="section-icon-nemo" style="color: #4CAF50;">✔</span>Completed Quests:</h4>
    <ul class="completed-quests-list-nemo">
      <li>
        <span class="quest-title-nemo">[Completed Quest 1]:</span>
        <span class="quest-description-nemo quest-outcome-nemo">[Outcome/Reward]</span>
      </li>
      <!-- Example of no completed quests:
      <li class="no-quests-nemo">No quests completed yet. Glory awaits!</li>
      -->
    </ul>

    <h4><span class="section-icon-nemo" style="color: #E53935;">✖</span>Failed/Abandoned Quests:</h4>
    <ul class="failed-quests-list-nemo">
      <li>
        <span class="quest-title-nemo">[Failed Quest 1]:</span>
        <span class="quest-description-nemo quest-reason-nemo">[Reason/Consequence]</span>
      </li>
      <!-- Example of no failed quests:
      <li class="no-quests-nemo">No failures recorded. Keep up the flawless record!</li>
      -->
    </ul>
  </div>
</details>
# END HTML.
# Vex, append HTML block. Do not integrate. Update realistically.
