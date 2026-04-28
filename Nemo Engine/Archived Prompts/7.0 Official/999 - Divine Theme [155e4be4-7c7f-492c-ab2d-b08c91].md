---
identifier: "155e4be4-7c7f-492c-ab2d-b08c919f1e78"
name: "Divine Theme"
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
  --panel-border: #FFD700; /* Gold */
  --panel-bg-primary: #FFFFFF; /* White Marble */
  --panel-bg-secondary: #F0F8FF; /* Alice Blue */
  --panel-shadow: rgba(255,215,0,0.3);
  --panel-highlight: rgba(255,255,255,0.5);
  
  /* Headers */
  --header-bg-primary: linear-gradient(90deg, #E6F7FF, #FFFFFF);
  --header-bg-secondary: #E6F7FF;
  --header-text: #2F4F4F; /* Dark Slate Gray */
  
  /* Text */
  --text-primary: #2F4F4F;
  --text-secondary: #708090; /* Slate Gray */
  --text-tertiary: #B0C4DE; /* Light Steel Blue */
  --text-shadow: 0 0 10px rgba(255,215,0,0.3);
  
  /* Accents & Status Colors */
  --accent-primary: #FFD700;   /* Gold */
  --accent-secondary: #87CEEB; /* Sky Blue */
  --accent-tertiary: #C0C0C0;  /* Silver */
  --accent-glow: rgba(255,215,0,0.5);
  --positive-color: #87CEEB; /* Celestial Blue */
  --negative-color: #708090; /* Somber Gray (Not evil) */
  --neutral-color: #D3D3D3; /* Light Gray */
  --critical-color: #F0E68C; /* Khaki (Warning light) */
  
  /* Items & Details */
  --item-bg: rgba(135,206,235,0.1); /* Faint Blue */
  --item-border: rgba(255,215,0,0.4);
  --item-shadow: rgba(0,0,0,0.1);
}
</style>
