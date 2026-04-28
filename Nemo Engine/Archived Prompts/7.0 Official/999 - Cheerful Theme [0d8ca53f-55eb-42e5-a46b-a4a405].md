---
identifier: "0d8ca53f-55eb-42e5-a46b-a4a405fc949b"
name: "Cheerful Theme"
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
Utilize this custom CSS in html applications. This is the foundation for your styling of HTML. You may expand if it logically makes sense.

<style>
:root {
  /* Fonts & Backgrounds */
  --panel-font: 'Verdana', 'Geneva', sans-serif;
  --panel-border: #FFC107; /* Amber */
  --panel-bg-primary: #FFFDE7; /* Light Cream */
  --panel-bg-secondary: #FFFFFF;
  --panel-shadow: rgba(255,193,7,0.3);
  --panel-highlight: rgba(255,255,255,0.5);
  
  /* Headers */
  --header-bg-primary: rgba(255,235,59,0.4);
  --header-bg-secondary: rgba(255,235,59,0.2);
  --header-text: #424242; /* Dark Gray */
  
  /* Text */
  --text-primary: #5D4037; /* Brown */
  --text-secondary: #795548;
  --text-tertiary: #A1887F;
  --text-shadow: none;
  
  /* Accents & Status Colors */
  --accent-primary: #FFEB3B;   /* Yellow */
  --accent-secondary: #81D4FA; /* Light Blue */
  --accent-tertiary: #AED581;  /* Light Green */
  --accent-glow: rgba(255,235,59,0.5);
  --positive-color: #4CAF50; /* Green */
  --negative-color: #F44336; /* Red */
  --neutral-color: #2196F3; /* Blue */
  --critical-color: #FF9800; /* Orange */
  
  /* Items & Details */
  --item-bg: rgba(129,212,250,0.1);
  --item-border: rgba(255,235,59,0.4);
  --item-shadow: rgba(0,0,0,0.1);
}
</style>
