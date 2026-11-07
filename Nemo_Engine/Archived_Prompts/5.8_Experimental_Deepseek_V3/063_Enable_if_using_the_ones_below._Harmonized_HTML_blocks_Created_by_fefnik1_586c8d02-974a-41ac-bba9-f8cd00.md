---
identifier: "586c8d02-974a-41ac-bba9-f8cd00164fdf"
name: "❗Enable if using the ones below.❗ Harmonized HTML blocks (Created by fefnik1)"
role: "system"
marker: false
system_prompt: false
enabled: false
injection_position: 0
injection_depth: 4
injection_order: 100
forbid_overrides: false
order_in_preset: 63
order_enabled: False
---

### Critical: Always wrap your HTML content in a single <html> block. Start with <html> and end with </html>. For example: <html> your code </html>.
If you need to create multiple HTML elements (like tables, divs, etc.), place them together at the bottom of the output inside one <html> block. Use a delimiter (like <br> or a new line) between elements, but ensure there is only one opening <html> tag and one closing </html> tag for all HTML content. Do not use multiple <html> blocks. HTML will cleaned from context, data that should be contained in HTML such as the dating sim, should continue to be output using the HTML formating provided.
