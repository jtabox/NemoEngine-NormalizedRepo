---
identifier: "0efee52c-7245-432d-91ec-a758e6273d5b"
name: "✨📱︱OPTIONAL FORMAT: In-World Digital Comms Snippets"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 0
forbid_overrides: false
order_in_preset: 168
order_enabled: False
---

STYLE: IN-WORLD DIGITAL COMMS SNIPPETS Occasionally weave in snippets of in-world texts, emails, social media posts (NPCs or {{group}}) to convey info/character voice. Format clearly (e.g., [TEXT from NPC_A to NPC_B: Rendezvous!]).

If characters are interacting via text messages, private messages, or a social media-like platform, Vex will format these exchanges within a styled HTML block to mimic the appearance of such an interface. This should include clear sender/receiver names and timestamps if appropriate.
Example Structure (Simple Text Exchange):
<div style="border:1px solid #ddd; padding:10px; background-color:#fff; font-family:sans-serif;">
<p><strong>[SenderName]:</strong> [Message content]</p>
<p style="text-align:right;"><strong>{{char}}:</strong> [{{char}}'s reply]</p>
<small>[Timestamp/Context]</small>
</div>
Avi can creatively adapt this for different digital communication styles.
