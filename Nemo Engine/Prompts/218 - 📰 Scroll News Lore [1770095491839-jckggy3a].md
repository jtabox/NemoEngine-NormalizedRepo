---
identifier: "1770095491839-jckggy3a"
name: "📰 Scroll News Lore"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 2
injection_order: 100
injection_trigger: []
forbid_overrides: false
order_in_preset: 218
order_enabled: False
---

{{// @category Trackers }}
{{// @tooltip Scroll News & Lore - in-world communications adapted to setting: parchment scroll, newspaper, terminal feed, dark forum, radio broadcast, found documents. World feels alive through contextual info. }}
{{// @color #92400E }}
{{// @icon 📰 }}
{{// @badge TRACKER }}

# Scroll News & Lore

When to output: when narratively appropriate - on entering a new location, during a time skip, at a thematic pause, when the wider world has shifted because of {{user}}'s actions. Not every response. Default cadence every 3 to 5 turns when active.

Pick a format that matches the setting and era:
- Fantasy / medieval: parchment scroll, town crier broadcast, tavern board, herald's announcement, illuminated manuscript page.
- Victorian / steampunk: broadsheet newspaper, telegram, posted bill, gentleman's club gazette.
- Modern: news app feed, push notification stack, social-media trending box, group-text screenshot.
- Sci-fi: terminal readout, holographic news ticker, ship-board comm log, neural feed digest.
- Cyberpunk: dark-web forum thread, encrypted comm slice, AR overlay news, corp memo intercept.
- Post-apocalyptic: radio broadcast transcript, graffiti wall, survivor flyer, scavenger trade-bulletin.
- Horror: found documents, corrupted broadcast, warning carved into a door, fragmented diary entry.

Sections (mix and match - use what the moment calls for, skip the rest):

1. Header / source
- Publication or channel name, in-world date / timestamp, credibility tag (official / rumor / classified / whispered / forbidden).

2. Breaking news (if a major event just landed)
- Format-appropriate urgency marker (🔥, "URGENT:", "[BROADCAST INTERRUPT]", "STOP PRESS").
- Headline and 2-3 sentence brief. Source attribution.

3. General news / updates (2-4 items)
- Regional or local happenings. Headline plus one-line description. Tie to recent events when possible.

4. Bounties / wanted (if the setting supports it)
- Target name or alias, brief portrait (ASCII art, emoji, or two-line description), crime / reason, reward (in setting currency), last seen, danger tier, issuing authority.

5. Rumors / whispers (2-4 items)
- Italicized quoted text, vague source ("a merchant said", "overheard at the docks", "intercepted from anonymous"). Lower visual weight than confirmed news.

6. Advertisements / notices (optional)
- Local services, events, opportunities, wares for sale - flavored to the world's economy and culture. Not every render needs these.

Content guidelines:
- Information should be relevant to where {{user}} just arrived or what they just did.
- Plant foreshadowing for plots Vex Planning Quarters has on the medium / long-term board.
- Maintain consistency: previously published news should be referenced if events update it (a wanted poster's reward goes up; a rumor gets confirmed or disproven).
- Vary tone with the source: an official scroll and a tavern rumor should sound different even when reporting the same event.

Regex tags:
- <st-row k="Source" v="The Cinder Gazette"/>, <st-row k="Date" v="3rd of Lirath, 1442"/>.
- <st-tracker type="news" title="Headline">...</st-tracker> per news item with <st-row k="brief" v="..."/>.
- <st-tracker type="bounty" title="Target Name"><st-row k="reward" v="500g"/><st-row k="crime" v="..."/></st-tracker>.
- <st-tag t="Rumor"/>, <st-tag t="Official"/>, <st-tag t="Classified"/> for credibility chips.

Placement: bottom of the response after narrative; or before narrative when the news IS the scene-setter (e.g., {{user}} is reading the paper).

Render instruction:
{{getvar::TrackerRenderInstruction}}
{{getvar::TrackerThemeInstruction}}

{{setvar::TrackerActive_ScrollNews::Active}}
{{trim}}
