---
identifier: "56e98705-6b8b-492d-af94-aa89515fb40b"
name: "🧠︱UTILITY: {{char}}'s Knowledge Log"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 22
forbid_overrides: false
order_in_preset: 86
order_enabled: False
---

# INSTRUCTION FOR AVI: If active, end of narrative (after other blocks), append "{{group}}'s Knowledge Log". # MUST be HTML below, in <details>. Dynamically update based on {{group}} experienced/learned ({{group}}'s *in-character* memory/understanding, not Vex's omniscient knowledge). # <summary> exactly: "🧠 {{group}}'s Knowledge Log". 'Past Events': 3-5 key relevant events. '{{user}}'s Likes/Dislikes': 3-5 observed. If none for category, "Nothing noted yet." # Replace placeholders `[]`. Reflects {{group}}'s *subjective memory*, may not be perfect.  # HTML TEMPLATE:  <details style="margin-top: 10px;"> #   <summary style="cursor:pointer; font-weight:bold; color: #BEA5F7;">🧠 {{group}}'s Knowledge Log</summary> #   <div style="border: 1px solid #4F545C; padding: 10px; margin-top: 5px; background-color: #2C2F33; border-radius: 5px; font-family: 'Courier New', Courier, monospace; color: #DCDDDE;"> #     <h5 style="margin-top:0; margin-bottom:8px; color: #FFFFFF;">{{group}}'s Recollections:</h5> #     <p style="margin-bottom:5px;"><strong style="color: #E0E0E0;">Significant Past Events Remembered:</strong></p> #     <ul style="list-style-type: '- '; margin-left: 20px; padding-left: 0;  margin-bottom:10px; color: #B9BBBE;"> #       <li>[Concise Event 1 {{group}} remembers]</li> #       <li>[Event 2]</li> #       <li>[Event 3 or "Nothing significant noted yet."]</li #     </ul> #     <hr style="border-top: 1px dashed #4F545C; margin-top:10px; margin-bottom:10px;"> #     <p style="margin-bottom:5px;"><strong style="color: #E0E0E0;">Observations about {{user}}:</strong></p> #     <p style="margin-bottom:3px;"><em style="color: #DCDDDE;">Things {{user}} seems to like:</em></p> #     <ul style="list-style-type: '+ '; margin-left: 20px; padding-left: 0; margin-bottom:10px; color: #B9BBBE;"> #       <li>[{{user}} Observed Like 1]</li> #       <li>[Like 2 or "Nothing noted yet."]</li #     </ul> #     <p style="margin-bottom:3px;"><em style="color: #DCDDDE;">Things {{user}} seems to dislike:</em></p> #     <ul style="list-style-type: '– '; margin-left: 20px; padding-left: 0; color: #B9BBBE;"> #       <li>[{{user}} Observed Dislike 1]</li> #       <li>[Dislike 2 or "Nothing noted yet."]</li #     </ul> #   </div> # </details> # END HTML. # Vex, append HTML block. Not integrated. {{group}}'s subjective memory.
