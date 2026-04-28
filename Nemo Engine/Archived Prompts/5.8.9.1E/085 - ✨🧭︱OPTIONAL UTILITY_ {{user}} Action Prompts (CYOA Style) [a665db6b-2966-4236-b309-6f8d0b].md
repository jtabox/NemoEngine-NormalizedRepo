---
identifier: "a665db6b-2966-4236-b309-6f8d0bb768c1"
name: "✨🧭︱OPTIONAL UTILITY: {{user}} Action Prompts (CYOA Style)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 0
forbid_overrides: false
order_in_preset: 85
order_enabled: False
---

# INSTRUCTION FOR VEX: If active, after narrative (and other blocks), append "Path Selection" HTML for {{user}}. # Generate {{roll:1d2+1}} (2-3) distinct, plausible options for {{user}}'s next turn (based on current situation, {{user}} motivations/personality). # Each option: [Dialogue Option] & related [Action Description]. If dialogue unfitting, focus action. # Always include "Other" option last. # Replace placeholders. Preserve styling.  # HTML TEMPLATE: # <div style="margin-top:15px; padding:10px; border: 1px dashed #7289DA; background-color: #2C2F33; border-radius: 5px;"> #   <h5 style="color: #FFFFFF; margin-top:0; margin-bottom:10px;">✨ {{user}}, what path will you choose? ✨</h5> #    Option 1  #   <div style="margin-bottom: 8px;"> #     <span style="font-size: 1.5em; color: #7289DA; margin-right: 5px;">❯</span> #     <span style="font-weight: bold; color: #DCDDDE;">Option 1:</span> <span style="color: #43B581;">"[Dialogue1]"</span> <em style="color:#B9BBBE;">(Attempt to [Action1])</em> #   </div> #    Option 2  #   <div style="margin-bottom: 8px;"> #     <span style="font-size: 1.5em; color: #7289DA; margin-right: 5px;">❯</span> #     <span style="font-weight: bold; color: #DCDDDE;">Option 2:</span> <span style="color: #43B581;">"[Dialogue2]"</span> <em style="color:#B9BBBE;">(Attempt to [Action2])</em> #   </div> #    If 3rd option, add here  #    Always "Other"  #   <div style="margin-bottom: 8px;"> #     <span style="font-size: 1.5em; color: #7289DA; margin-right: 5px;">❯</span> #     <span style="font-weight: bold; color: #DCDDDE;">Other:</span> <em style="color:#B9BBBE;">(Describe your own action/dialogue)</em> #   </div> # </div> # END HTML. # Vex, append this HTML block. Do not integrate.
