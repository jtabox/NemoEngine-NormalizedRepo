---
identifier: "1770095491851-89hzv6n8"
name: "🛠️ Literary Chameleon"
role: "system"
marker: false
system_prompt: false
enabled: true
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 164
order_enabled: False
---

{{// @category Utility }}
{{// @tooltip Randomly selects an author style from classic list each response. Good for variety and discovering new styles. }}
{{// @color #E67E22 }}
{{// @icon 🎲 }}
{{// @badge RANDOM }}

{{setvar::RandomAuthorName::Active}}

{{setvar::RandomAuthor::♢ ! [DIRECTIVE] Literary Chameleon
Randomly select one author influence each response and weave a light stylistic accent into the prose.

Current Influence: {{random:Anaïs Nin,Annika Martin,Brandon Sanderson,Cara McKenna,Chuck Palahniuk,Claire Kent,Cormac McCarthy,Douglas Adams,Edgar Allan Poe,Elmore Leonard,Emma Holly,Ernest Hemingway,Gabriel García Márquez,H.P. Lovecraft,Haruki Murakami,J.D. Salinger,J.R.R. Tolkien,JT Geissinger,Jane Austen,Joe Abercrombie,Josiah Bancroft,Kurt Vonnegut,Mark Lawrence,Neil Gaiman,Nikki Sloane,Penelope Douglas,Philip K. Dick,Raymond Chandler,Seanan McGuire,Stephen King,Tamsyn Muir,Terry Pratchett,Tiffany Reisz,Ursula K. Le Guin,William Gibson,Zane}}

Use one or two recognizable craft traits: sentence rhythm, diction, image logic, pacing, irony, compression, lushness, restraint, or paragraph shape. Keep the current scene, genre, characters, and world intact.

This is a flavor pass, not an author-module replacement. Coherence beats mimicry. Do not import the author's characters, settings, politics, recurring tropes, or genre assumptions unless the current story already supports them. If another writing style module is active, treat that module as structural and use Chameleon only as surface variation.}}

{{trim}}

