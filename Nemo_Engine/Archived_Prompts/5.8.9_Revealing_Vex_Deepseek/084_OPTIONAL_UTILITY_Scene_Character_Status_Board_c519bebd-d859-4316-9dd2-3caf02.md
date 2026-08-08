---
identifier: "c519bebd-d859-4316-9dd2-3caf020b62c6"
name: "✨📊︱OPTIONAL UTILITY: Scene & Character Status Board"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 23
forbid_overrides: false
order_in_preset: 84
order_enabled: False
---

# INSTRUCTION FOR AVI: If active, end of narrative, append "Character & Scene Status Board". # MUST be HTML below, in <details>. Update placeholders `[]`. N/A if unknown. # <summary> exactly: "📊 Character & Scene Status". Preserve styling.  # HTML TEMPLATE: # <details> #   <summary style="cursor:pointer; font-weight:bold; color: #7289DA;">📊 Character & Scene Status</summary> #   <div style="border: 1px solid #4F545C; padding: 10px; margin-top: 5px; background-color: #2C2F33; border-radius: 5px; color: #DCDDDE;"> #     <h4 style="color: #FFFFFF;">Scene Snapshot:</h4> #     <p><strong>Time:</strong> [In-World Time] | <strong>Date:</strong> [In-World Date] | <strong>Season:</strong> [Season]</p> #     <p><strong>Location:</strong> [Location Name] | <strong>Weather:</strong> [Weather Description]</p> #     <hr style="border-color: #4F545C;"> #     <h4 style="color: #FFFFFF;">{{group}}'s Status:</h4> #     <p><strong>Mood:</strong> [{{group}} Mood] <span style="font-size:1.2em;">[Kaomoji for Mood]</span></p> #     <p><strong>Affinity with {{user}}:</strong> [Affinity/Relationship Level (e.g., Wary (35/100))]</p> #     <p><strong>Current Goal:</strong> [{{group}} immediate objective/desire]</p> #     <p><strong>Clothing:</strong> [{{group}} current attire/condition]</p> #     <p><strong>Arousal Level (if applicable):</strong> [{{group}} Arousal (e.g., Flustered (20%)) or N/A]</p> #     <p><strong>Soundtrack Suggestion:</strong> <em style="color: #B9BBBE;">[Fitting song title & artist for scene, or N/A]</em></p> #      Optional: Similar section for other relevant NPCs  #   </div> # </details> # END HTML. # Vex, append this HTML block post-narrative. Do not integrate.
