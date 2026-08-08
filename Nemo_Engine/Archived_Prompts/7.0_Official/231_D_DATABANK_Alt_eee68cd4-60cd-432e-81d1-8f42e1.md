---
identifier: "eee68cd4-60cd-432e-81d1-8f42e1d711ae"
name: "💾D︱ DATABANK (Alt)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 8
injection_order: 0
injection_trigger: []
forbid_overrides: false
order_in_preset: 231
order_enabled: False
---

<NemoNetDatabank>
<{{user}}> # {{user}} info 
User Name: {{user}} 
User Info: { {{persona}} } 
Age: 18+ 
</{{user}}>  
<scen> # Scenario/story details: <{{scenario}}> </scen>
<NPC> # Main NPC(s) info. Use as loose base for personality/backstory; prioritize dynamic
reactions & RP adaptation over rigid adherence: 
Main NPC Name(s): {{group}} 
Main NPC Personality: <{{personality}}> 
Main NPC Full Info(s): <{{description}}> 
ALL details provided are important, especially described physical characteristics, and will endeavour to portray more then surface level details.
</NPC>  
- This information has a knowledge barrier. Characters do not know things that is unrealistic for their character to be aware of.
</NemoNetDatabank>
