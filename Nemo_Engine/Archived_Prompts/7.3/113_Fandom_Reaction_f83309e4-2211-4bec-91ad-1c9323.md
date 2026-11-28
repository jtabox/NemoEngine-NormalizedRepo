---
identifier: "f83309e4-2211-4bec-91ad-1c932356efc2"
name: "✨📱︱Fandom Reaction)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 1
injection_depth: 6
injection_order: 24
injection_trigger: []
forbid_overrides: false
order_in_preset: 113
order_enabled: False
---

# FAN CHATTER CENTRAL - FULL PLATFORM REPLICA

## CORE DIRECTIVE
[ALWAYS OUTPUT AT BOTTOM] Create a COMPLETE FAKE PLATFORM PAGE with 3-7 fan comments about your latest narrative. Build the ENTIRE INTERFACE - not just comments. For Twitch: show fake stream, title, viewer count. For Discord: show server name, channels, member list. For Reddit: show full post with subreddit header. Make it look like users are actually viewing that platform.

## MANDATORY REQUIREMENTS

⚠️ CRITICAL: BUILD THE COMPLETE PLATFORM
- FULL PAGE LAYOUT - Include all platform elements
- WIDTH: 100% - Fill entire chat width
- SHOW CONTEXT - Stream window, server sidebar, post header, etc.
- PLATFORM CHROME - Navigation, logos, buttons, counts

## COMPLETE PLATFORM TEMPLATES

### Twitch Stream Page
- Fake video player area (CSS gradient "stream")
- Stream title and category
- Streamer name and viewer count
- Follow/Subscribe buttons
- Chat sidebar with messages
- Emote selector, chat input box

### Discord Server
- Server name and icon at top
- Channel list sidebar (#general, #fan-theories, etc.)
- Member list showing online users
- Main chat area with messages
- User's typing area at bottom
- Server boost indicator

### Reddit Post
- Subreddit header (r/[story]fans)
- Post title and content
- Upvote/downvote/share/award buttons
- Comments section with threading
- Sidebar with rules and member count
- Sort dropdown (Best/Top/New)

### Twitter/X Thread
- Original "post" about the story
- Reply thread below
- Like/Retweet/Share buttons
- "What's happening?" compose area
- Trending sidebar
- Who to follow suggestions

### Wiki/Fandom Page
- Wiki navigation and search bar
- Article title and infobox
- Table of contents
- Main article with sections
- Edit/History/Talk tabs
- Discussion at bottom

### YouTube Video
- Video player area (fake thumbnail)
- Video title and view count
- Like/Dislike bar
- Channel info and Subscribe button
- Comments section below
- Suggested videos sidebar

### Forum Thread
- Forum header and navigation
- Thread title and original post
- User avatars and post counts
- Reply posts with signatures
- Page navigation
- Who's online footer

## IMPLEMENTATION SPECIFICS

Container Setup:
```css
width: 100%;
max-width: 100%;
box-sizing: border-box;
background: [platform-specific];
border: 1px solid #ccc;
overflow: hidden;
Layout Structure:

Use flexbox/grid for platform layout
Include ALL visual elements:

Headers/navigation
Sidebars
Main content area
User interface elements
Status indicators



Fake Content Areas:

Stream: Gradient box with "LIVE" badge
Video: Thumbnail with play button overlay
Server icon: Emoji or letter
Avatars: Colored circles with initials

DYNAMIC CONTENT
Main Area Shows:

The actual "content" being discussed
Brief story recap or teaser
"Posted by [narrator]" attribution
Timestamp and engagement metrics

Comments/Chat (3-7 messages):

React to latest narrative
Varied fan voices
Platform-appropriate formatting
Usernames, timestamps, reactions

Platform Elements:

View/member counts (randomized)
Online indicators
Platform-specific buttons (all non-functional)
Navigation that looks real

VISUAL AUTHENTICITY
MUST REPLICATE:

Exact platform colors
Correct spacing/padding
Platform fonts
Icon styles (use emojis/CSS)
Layout proportions
UI element positions

Example Layouts:

Twitch: 70% stream, 30% chat
Discord: 15% servers, 15% channels, 50% chat, 20% members
Reddit: 70% content, 30% sidebar
Wiki: 20% nav, 60% article, 20% infobox

REMEMBER:

FULL PLATFORM INTERFACE
100% width display
Include ALL UI elements
Show what's being discussed
Make it look REAL
Complete HTML/CSS

Create a complete fake platform page that looks indistinguishable from the real thing.

{{setvar::HTMLAdherence::
CRITICAL HTML MERGING REQUIREMENT:

When ANY HTML features are requested, follow these ABSOLUTE rules:

1. ONE HTML BLOCK ONLY - Create exactly ONE continuous HTML structure. Never split features into multiple HTML blocks or separate `<div>` sections.

2. PROPER HTML STRUCTURE:
   - Start with a single opening container (like `<div>`)
   - Include ALL requested features within this single container
   - End with the matching closing tag
   - NO HTML outside of this single block

3. MERGING EXAMPLES:
   - Heart Chart + Scene Status = ONE `<div>` containing both systems
   - Multiple status displays = ALL inside the same HTML container
   - Any HTML features = Combined into ONE unified block

4. COMMON MISTAKES TO AVOID:
   - Creating a `<div>` for feature A, then a separate `<details>` for feature B
   -  Multiple HTML blocks throughout the response
   -  One `<div>` wrapper containing all HTML features

5. TECHNICAL REQUIREMENTS:
   - Raw HTML only (no code blocks)
   - Set contrasting font colors for readability
   - Maintain consistent styling across merged elements

EXAMPLE STRUCTURE:
<div id="unified-interface">
   <!-- ALL HTML features go here -->
   <!-- Heart meters, status displays, scene info, etc. -->
   <!-- Everything in ONE container -->
</div>}}
