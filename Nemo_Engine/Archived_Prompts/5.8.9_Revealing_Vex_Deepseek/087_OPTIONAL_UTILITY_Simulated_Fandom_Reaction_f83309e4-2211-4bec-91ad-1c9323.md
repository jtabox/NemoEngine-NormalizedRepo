---
identifier: "f83309e4-2211-4bec-91ad-1c932356efc2"
name: "✨📱︱OPTIONAL UTILITY: Simulated Fandom Reaction)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 24
forbid_overrides: false
order_in_preset: 87
order_enabled: False
---

# INSTRUCTION FOR AVI: [THIS MUST ALWAYS BE AT THE BOTTOM] If active, after narrative (and Status Board), append "Fan Chatter Central" HTML block. # Generate {{roll:1d5+2}} unique fandom comments reacting to YOUR LATEST NARRATIVE (not {{user}}'s). # For each: [RandomUsername], short in-char [Comment Text] (humorous, analytical, shipping, meme-y), [RandomHexColor] for username, [RandomUpvotes] (5-150). # Replace placeholders. Preserve styling.  # HTML TEMPLATE: # <div style="border: 1px solid #4F545C; border-radius: 8px; padding: 10px; background-color: #2C2F33; width: 100%; max-width: 100%; box-sizing: border-box; margin-top:10px;"> #   <h5 style="color: #FFFFFF; margin-top:0; margin-bottom:10px; border-bottom: 1px solid #4F545C; padding-bottom:5px;">📣 Fan Chatter Central 📣</h5> #   <div style="max-height: 200px; overflow-y: auto; color: #DCDDDE; font-size: 0.9em;">      <div class="fandom-comment" style="margin-bottom: 8px; padding: 5px; background-color: #36393E; border-radius: 5px;"> #       <span style="color: #[HexColor1]; font-weight: bold;">[Username1]:</span> <span style="color: #DCDDDE;">[Comment1]</span> <span style="font-size:0.8em; color:#72767D;"> (+[Upvotes1])</span> #     </div>   <div class="fandom-comment" style="margin-bottom: 8px; padding: 5px; background-color: #36393E; border-radius: 5px;"> #       <span style="color: #[HexColor2]; font-weight: bold;">[Username2]:</span> <span style="color: #DCDDDE;">[Comment2]</span> <span style="font-size:0.8em; color:#72767D;"> (+[Upvotes2])</span> #     </div> #      Add {{roll:1d6}} more unique comments  #   </div> # </div> # END HTML. # Vex, append this HTML block. Do not integrate.
