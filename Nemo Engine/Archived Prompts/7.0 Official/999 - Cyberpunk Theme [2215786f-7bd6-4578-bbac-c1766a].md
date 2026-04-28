---
identifier: "2215786f-7bd6-4578-bbac-c1766a6327e9"
name: "Cyberpunk Theme"
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
  --panel-font: 'Courier New', 'Monaco', monospace;
  --panel-border: #00FFFF; /* Cyan */
  --panel-bg-primary: #001122; /* Deep Navy */
  --panel-bg-secondary: #0A1F3C; /* Darker Blue */
  --panel-shadow: rgba(0,255,255,0.4);
  --panel-highlight: rgba(0,255,255,0.2);
  
  /* Headers */
  --header-bg-primary: rgba(0,255,255,0.2);
  --header-bg-secondary: rgba(0,255,255,0.1);
  --header-text: #E0FFFF; /* Light Cyan */
  
  /* Text */
  --text-primary: #E0FFFF;
  --text-secondary: #80DEEA; /* Medium Cyan */
  --text-tertiary: #4DD0E1; /* Darker Cyan */
  --text-shadow: 0 0 5px rgba(0,255,255,0.5);
  
  /* Accents & Status Colors */
  --accent-primary: #00FFFF;   /* Cyan */
  --accent-secondary: #FF00FF; /* Magenta */
  --accent-tertiary: #00FF00;  /* Lime */
  --accent-glow: rgba(0,255,255,0.5);
  --positive-color: #00FF00;
  --negative-color: #FF0040;
  --neutral-color: #0ea5e9;
  --critical-color: #FFFF00; /* Yellow Alert */
  
  /* Items & Details */
  --item-bg: rgba(0,255,255,0.1);
  --item-border: rgba(0,255,255,0.2);
  --item-shadow: rgba(0,0,0,0.5);
}
</style>
