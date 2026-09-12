---

identifier: "cot_step_htmlmarkers"

name: "🧠 CoT: HTML Marker Check"

role: "system"

marker: false

system_prompt: false

enabled: true

injection_position: 0

injection_depth: 4

injection_order: 100

injection_trigger: []

forbid_overrides: false

order_in_preset: 58

order_enabled: False

---



{{// @category CoT-Steps }}

{{// @tooltip Verify HTML/CSS markers wrap only standalone rendered blocks. }}

{{// @color #E67E22 }}

{{// @icon 🧠 }}

{{// @badge COT }}



{{setvar::CoTStep_HTMLMarkers::♢ >> [PROCEDURE] ## HTML MARKER CHECK

Purpose: keep rendered HTML/CSS separable from narrative prose.

Check:

- `<!-- HTML_START -->` appears immediately before a standalone HTML/CSS block.

- `<!-- HTML_END -->` appears immediately after that block.

- Prose, dialogue, OOC notes, tracker-free text, and inline dialogue color stay outside markers.

- Regex and ASCII render modes do not output raw HTML/CSS marker blocks unless their render instruction says otherwise.

Apply: older marked HTML can be stripped from context cleanly; current output remains readable.

Output: one marker note inside <think>; do not mention marker auditing in narration.}}

{{trim}}

