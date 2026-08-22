---
identifier: "a09b5a2c-f079-4bb7-a94b-5ae0f06ecc0c"
name: "Steampunk Theme"
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
  --panel-font: 'Times New Roman', 'Baskerville', serif;
  --panel-border: #B8860B; /* Dark Goldenrod (Brass) */
  --panel-bg-primary: #5D4037; /* Dark Brown (Wood) */
  --panel-bg-secondary: #3E2723; /* Deeper Brown */
  --panel-shadow: rgba(0,0,0,0.6);
  --panel-highlight: rgba(218,165,32,0.2);
  
  /* Headers */
  --header-bg-primary: rgba(0,51,102,0.5); /* Prussian Blue */
  --header-bg-secondary: rgba(0,51,102,0.3);
  --header-text: #F5DEB3; /* Wheat (Parchment) */
  
  /* Text */
  --text-primary: #F5DEB3;
  --text-secondary: #D2B48C; /* Tan */
  --text-tertiary: #8B4513; /* Saddle Brown */
  --text-shadow: 1px 1px 2px rgba(0,0,0,0.7);
  
  /* Accents & Status Colors */
  --accent-primary: #DAA520;   /* Gold */
  --accent-secondary: #003366; /* Deep Blue */
  --accent-tertiary: #800000;  /* Maroon */
  --accent-glow: rgba(218,165,32,0.4);
  --positive-color: #2E8B57; /* Sea Green (Pressure Gauge OK) */
  --negative-color: #B22222; /* Firebrick (Overheating) */
  --neutral-color: #4682B4; /* Steel Blue */
  --critical-color: #FF4500; /* OrangeRed (Danger!) */
  
  /* Items & Details */
  --item-bg: rgba(0,0,0,0.3);
  --item-border: rgba(184,134,11,0.3);
  --item-shadow: rgba(0,0,0,0.4);
}
</style>
