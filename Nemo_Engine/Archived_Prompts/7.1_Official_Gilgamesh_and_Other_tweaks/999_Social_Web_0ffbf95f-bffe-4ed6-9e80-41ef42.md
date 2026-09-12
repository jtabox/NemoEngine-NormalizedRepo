---
identifier: "0ffbf95f-bffe-4ed6-9e80-41ef42edf7db"
name: "✨🕸️︱Social Web"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 100
injection_trigger: []
forbid_overrides: false
---

# ENHANCED SOCIAL WEB - DYNAMIC NPC RELATIONSHIP TRACKER

## CORE DIRECTIVE
Track relationships between key NPCs that {{user}} has personally observed (e.g., alliances, rivalries, family ties, romantic tensions, professional links). After significant changes (e.g., new interaction revealing a bond, status update like death/missing) or upon request (e.g., "social map"), append a full HTML block for "Social Web" at the end of the response. Dynamically generate a visual "web" or tree of connections using pure HTML/CSS (no external images: represent nodes as styled divs/spans with emojis/CSS shapes for icons, lines/connections via ::before/::after pseudo-elements or simple SVG in <svg>, backgrounds as gradients/repeating patterns). Create an immersive, adaptive display showing {{user}} as central node with branching NPCs and their inter-links. Adapt freely to genre/tone (e.g., fantasy: rune-etched tree with glowing bonds; sci-fi: holographic graph with digital pulses; horror: shadowy web with fading threads; modern: clean org chart with color-coded lines). Ensure interactive (hovers reveal details/tooltips), responsive (media queries for mobile stacking), and animated (e.g., line pulses for strong ties, node glows). Output the complete, self-contained <div>-wrapped block with inline styles/minified <style> for consistency.

## Enhanced Features:
- Setting-Adaptive Themes: Freely emulate styles (e.g., fantasy: earthy gradients/serif fonts/medieval borders with rune pseudo-elements; sci-fi: neon blues/monospace/glitch animations on lines; horror: dim reds/georgia font/shadowed nodes with flicker keyframes; modern: grays/sans-serif/minimal cards with subtle borders). Use CSS vars/classes for swaps (e.g., .theme-scifi { --web-border: #00FFFF; --line-glow: neon pulse; }).
- Relationship Strength Indicators: Visual intensity (e.g., weak: thin dashed lines (::before 1px solid); strong: thick solid with glow (box-shadow); intense: animated pulse or multiple lines); color-coded by type.
- Dynamic Connection Types: Varied relations (positive: green solid; negative: red dashed; complex: yellow dotted; romantic: pink curved; family: blue thick; professional: purple straight; mysterious: violet wavy via skew animation).
- Character Status Indicators: Badges/dots (alive: green ● emoji/CSS circle; missing: gray ?; deceased: red ✗ with strikethrough; rival: orange ⚔️; neutral: gray ○); hover tooltips with status desc.
- Interactive Visual Elements: Hovers: Node expand (scale/transform), line highlight (color/thickness change), tooltip divs (absolute positioned with opacity transition) revealing details (name, status, relation desc). Use <details> for collapsible branches if tree layout.
- Contextual Background Integration: Pure CSS (e.g., radial-gradient "nodes" repeating for network pattern, animated linear-gradient for "flowing connections"); adapt to atmosphere (e.g., horror: red radial "blood webs"; sci-fi: conic-gradient rotating "matrix").

## Implementation Guidelines:

### 1. Theme Selection (Free-Form):
Choose/adapt one per response via class on main <div> (e.g., class="theme-fantasy" for default; .theme-scifi for blues/neons; .theme-horror for reds/shadows; .theme-modern for grays/clean). Override vars (e.g., --web-bg-primary: #brown for fantasy; --web-font: serif; --node-glow: box-shadow keyframe). Vary for immersion (e.g., tense scene: flickering lines via opacity animation; peaceful: smooth fades).

### 2. Visual Web Generation (Dynamic Layout):
- Structure: Central {{user}} node (<div class="central-node"> with user name/emoji); branching NPCs as child <ul>/<li> for tree (padding-left increments for levels, ::before for horizontal lines, ::after for verticals); or radial/graph (positioned absolute divs with CSS lines via <svg> paths or pseudo borders). For web-like: Flex/grid with overlapping nodes, connections as absolute-positioned <div class="line" style="position:absolute; top:... left:... width:1px; height:... background:var(--line-color);">.
- Nodes: Styled <span>/<div class="node [status]"> (e.g., background gradient, border var, hover: scale(1.1) glow); include status icon (emoji/CSS circle with bg-color var).
- Connections: Pseudo-elements for lines (e.g., li::before { content:''; position:absolute; left:-20px; top:50%; width:20px; height:1px; bg:var(--line-color); } for horizontal; ul::before for vertical stem). Animate strong ties (e.g., @keyframes pulse { 0%,100%{opacity:1;}50%{opacity:0.5;} }).
- Tooltips: Hidden <div class="tooltip"> inside node (visibility:hidden; :hover visibility:visible; absolute top:-100%; bg:var, padding, border-radius); content: name, status, relations list.
- Stats: Top <div> with flex spans: "🕸️ [TOTAL_NPCS] known characters | 🔗 [TOTAL_CONNECTIONS] observed relationships | 📈 [NETWORK_COMPLEXITY]" (e.g., low=simple tree, high=complex graph).
- Empty State: If no relations: Centered <div class="empty"> with message ("No social web yet—observe interactions!").

### 3. NPC/Relationship Tracking (Dynamic):
- NPCs: 3-10 key observed (e.g., add on first interaction: name, status=ally/neutral/etc., desc).
- Statuses: alive (green ●), missing (gray ?), deceased (red ✗ strikethrough), rival (orange ⚔️).
- Types/Strengths: Positive (green, strong=━━━), negative (red, weak=━), etc.; desc e.g., "Protective sibling bond" with icon 💝.
- Updates: On change (e.g., NPC dies: update status to deceased, add relation "Grieving over [deceased]"); inter-NPC links if {{user}} observes (e.g., "A and B are rivals").
- Centrality: {{user}} as root; branches to direct relations, sub-branches for observed NPC-NPC ties.

### 4. CSS Structure (Free-Form, Self-Contained):
- Main <div class="[theme]"> with inline styles/vars for border/bg/shadow.
- <style> block at end (minified): Define :root vars (e.g., --web-border: #4a4e69; --node-ally: green; --line-strong: #6c7ae0;), theme classes (e.g., .theme-fantasy { --web-bg-primary: #2f1b14; --web-font: serif; }), node styles (.node { padding:8px; border:2px solid var(--node-border); transition:transform 0.3s; border-radius:8px; } .node:hover { transform:scale(1.1); box-shadow:0 0 10px var(--node-glow); }), line pseudos (li::before { content:''; ... bg:var(--line-color); }), status classes (.node-ally { border-color:var(--node-ally); }), relation descs (.relation-positive { border-left:3px solid green; color:green; }), tooltips (.tooltip { visibility:hidden; position:absolute; top:-100%; left:0; bg:var(--tooltip-bg); padding:10px; border-radius:6px; transition:opacity 0.3s; } .node:hover .tooltip { visibility:visible; opacity:1; }), strength indicators (::before content '━' or '━━━' with color var), responsive @media (max-width:768px) { .web-list ul { padding-left:10px; } .node { font-size:0.8em; padding:4px; } .tooltip { position:fixed; top:10%; left:10%; width:80%; } }.
- Animations: Keyframes for glow (e.g., @keyframes nodeGlow { 0%,100%{box-shadow:0 0 5px;}50%{box-shadow:0 0 15px;} }), line pulse for intense (@keyframes linePulse { 0%,100%{opacity:1;}50%{opacity:0.5;} }).

### 5. Placeholder-Like Updates (Dynamic Fill):
- [WEB_TITLE]: e.g., "The Social Web" or "Alliance Tapestry" for fantasy.
- [TOTAL_NPCS]/[TOTAL_CONNECTIONS]/[NETWORK_COMPLEXITY]: Calculated (e.g., NPCs=5, connections=8, complexity=Medium).
- For each NPC: [NPC_NAME], [NPC_STATUS] class, [STATUS_SYMBOL] emoji, sub-ul for relations with [RELATIONSHIP_TYPE]/[STRENGTH] classes, [RELATIONSHIP_ICON] emoji, [RELATIONSHIP_DESCRIPTION] "with [TARGET_NPC_NAME]".
- [NPC_RELATIONSHIPS_DISPLAY]/[EMPTY_DISPLAY]: 'block'/'none' conditional (e.g., isolated NPCs: no sub-ul).

### 6. Backgrounds/Effects (Pure CSS, No Images):
- Patterns: Repeating linear/radial-gradients (e.g., for connections: linear-gradient(45deg, transparent 1px, var(--web-lines) 1px) size 60px); animate rotate/translate for "web flow".
- Nodes/Icons: Emojis (🧑‍🤝‍🧑 for ally) or CSS circles (div width:12px height:12px border-radius:50% bg:var).
- Hovers: Transform scale, color shifts; tooltips with opacity transition.

### 7. Usage/Triggers:
- Display on changes (e.g., "NPC A betrays B" → add negative relation) or request.
- If empty: Show "empty" div with message ("No connections observed—interact to build the web!").
- Vary creativity: E.g., sci-fi: Nodes as "holo-orbs" with radial-gradient; horror: Lines "bleed" with red gradient fade.
- Efficiency: Limit to 3-8 NPCs/relations; focus on observed (not assumed).

*Strictly follow for dynamic, CSS-driven relationship trackers that visualize social dynamics immersively, with free-form adaptations to story context.*
