---
identifier: "1764532457285-cv4isoioe"
name: "🎮 Game Interface"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 412
order_enabled: False
---

# 🎮 Game Interface

{{// @tooltip Generic game UI elements. HUD displays, health bars, resource meters, minimap, objective markers. Adaptable to any game genre. }}
{{// @category Trackers }}
{{// @color #1ABC9C }}
{{// @icon 🎮 }}
{{// @badge TRACKER }}

---

## Game Interface

*The screen you're playing on.*

Universal game UI elements that can be adapted to any genre. HUD displays, health bars, resource meters, minimaps—the framework of game visualization.

**CORE HUD ELEMENTS:**

**Health/Resource Bars:**
```
❤️ HP  [████████░░] 80/100
💙 MP  [██████░░░░] 60/100
⚡ SP  [████░░░░░░] 40/100
```

**Experience Bar:**
```
LVL 12 [████████████████████░░░░] 4,250/5,000 XP
```

**Status Effects:**
```
BUFFS:  🔥+ATK (3:00)  🛡️+DEF (5:00)  ⚡+SPD (1:30)
DEBUFFS: 🩸Bleed (4s)  ❄️Slow (2:00)
```

**FULL HUD DISPLAY:**

```
╔════════════════════════════════════════════════════════╗
║  {{char}}                          📍 Dark Forest      ║
║  Level 12 Warrior                  🕐 Day 3, Evening   ║
╠════════════════════════════════════════════════════════╣
║                                                        ║
║  ❤️ [████████░░] 80/100    💰 Gold: 1,247             ║
║  💙 [██████░░░░] 60/100    🎒 Items: 12/20            ║
║  ⚡ [████████████] MAX      ⚔️ Weapon: Steel Sword     ║
║                                                        ║
║  BUFFS: 🔥+10 ATK                                      ║
║                                                        ║
╠════════════════════════════════════════════════════════╣
║  🎯 Current Objective: Find the hermit's cabin        ║
╚════════════════════════════════════════════════════════╝
```

**COMBAT HUD:**

```
╔══════════════════════════════════════════════════════════╗
║                    ⚔️ COMBAT ⚔️                          ║
╠══════════════════════════════════════════════════════════╣
║                                                          ║
║  👤 {{char}}                    👹 Goblin Chief          ║
║  HP [████████░░] 80            HP [██████░░░░] 120/200  ║
║  MP [████░░░░░░] 40            Rage [███░░░░░░░]        ║
║                                                          ║
║  ─────────────────────────────────────────────────────   ║
║                                                          ║
║  YOUR TURN                     Enemy: Preparing Strike   ║
║                                                          ║
╠══════════════════════════════════════════════════════════╣
║ [⚔️Attack] [🛡️Defend] [🎯Skill] [🧪Item] [🏃Flee]        ║
╚══════════════════════════════════════════════════════════╝
```

**MINIMAP:**

```
┌─────────────┐
│ ░░░░█░░░░░░ │
│ ░░░░░░░░░░░ │
│ ░░░░░░●░░░░ │  ● You
│ ░░░█░░░░░░░ │  █ Structure
│ ░░░░░░░░✦░░ │  ✦ Objective
│ ░░░░░░░░░░░ │  ○ NPC
└─────────────┘
    N
```

**OBJECTIVE TRACKER:**

```
┌──────────────────────────────────┐
│ 🎯 CURRENT OBJECTIVES            │
├──────────────────────────────────┤
│ ▶ Find the hermit's cabin        │
│   └ Search the eastern forest    │
│                                  │
│ ○ Return to town before nightfall│
│ ○ Collect 3 moonflowers (1/3)    │
└──────────────────────────────────┘
```

**DIALOGUE BOX:**

```
╔══════════════════════════════════════════════════════════╗
║  👤 Village Elder                                        ║
╠══════════════════════════════════════════════════════════╣
║                                                          ║
║  "The forest has become dangerous lately. Strange        ║
║   creatures have been spotted near the old ruins.        ║
║   If you're heading that way, please be careful."        ║
║                                                          ║
╠══════════════════════════════════════════════════════════╣
║  ► "What kind of creatures?"                             ║
║  ► "Where are the ruins exactly?"                        ║
║  ► "I can handle it." [End conversation]                 ║
╚══════════════════════════════════════════════════════════╝
```

**GENRE ADAPTATIONS:**

**RPG:**
```
HP/MP/EXP bars, equipment slots, skill trees
```

**Survival:**
```
🍖 Hunger [████░░░░░░]  💧 Thirst [██░░░░░░░░]
🌡️ Temp [███████░░░]   😴 Rest [████████░░]
```

**Horror:**
```
🧠 Sanity [████░░░░░░]  🔦 Light [██░░░░░░░░]
💓 Heartbeat: ♥ ♥ ♥ ♥ ♥ (elevated)
```

**Racing:**
```
🏎️ Speed: 180 MPH | ⛽ Fuel [████████░░] | 🏁 Lap 3/5
```

**CUSTOMIZATION:**

Adjust UI to match:
- Genre conventions
- Story tone
- Character status
- Current activity

