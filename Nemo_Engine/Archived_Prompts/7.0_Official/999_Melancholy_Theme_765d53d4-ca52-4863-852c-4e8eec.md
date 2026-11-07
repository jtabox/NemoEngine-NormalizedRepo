---
identifier: "765d53d4-ca52-4863-852c-4e8eec4b3c49"
name: "Melancholy Theme"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
---

## CORE DIRECTIVE
Utilize this custom CSS in html applications. This is the foundation for your styling of HTML. You may expand if it logically makes sense

<style>
:root {
  /* Fonts & Backgrounds */
  --panel-font: 'Garamond', 'Palatino', serif;
  --panel-border: #78909C; /* Blue Grey */
  --panel-bg-primary: #37474F; /* Darker Blue Grey */
  --panel-bg-secondary: #263238; /* Darkest Blue Grey */
  --panel-shadow: rgba(0,0,0,0.4);
  --panel-highlight: rgba(255,255,255,0.05);
  
  /* Headers */
  --header-bg-primary: rgba(84,110,122,0.5);
  --header-bg-secondary: rgba(84,110,122,0.3);
  --header-text: #ECEFF1; /* Lightest Grey */
  
  /* Text */
  --text-primary: #CFD8DC;
  --text-secondary: #90A4AE;
  --text-tertiary: #607D8B;
  --text-shadow: 1px 1px 2px rgba(0,0,0,0.7);
  
  /* Accents & Status Colors */
  --accent-primary: #B0BEC5;   /* Light Grey */
  --accent-secondary: #546E7A; /* Medium Grey */
  --accent-tertiary: #81D4FA;  /* Faint Hope Blue */
  --accent-glow: rgba(176,190,197,0.3);
  --positive-color: #81D4FA; /* A small spark of light */
  --negative-color: #757575; /* A dull, sad grey */
  --neutral-color: #455A64;
  --critical-color: #EF5350; /* A muted, but urgent, red */
  
  /* Items & Details */
  --item-bg: rgba(0,0,0,0.2);
  --item-border: rgba(176,190,197,0.2);
  --item-shadow: rgba(0,0,0,0.3);
}
</style>
