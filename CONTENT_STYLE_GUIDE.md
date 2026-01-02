# Content Style Guide

This document provides instructions for AI agents and editors to maintain consistent writing style, punctuation, and formatting across all content in this project.

## Writing Style & Tone

### Voice
- **Conversational and direct**: Write as if speaking directly to the reader
- **Personal**: Use "I" and "you" liberally—this is personal, not corporate
- **Friendly but professional**: Approachable without being overly casual
- **Confident**: Assertive statements without being arrogant
- **Active voice**: Prefer active voice over passive

### Sentence Structure
- Mix short, punchy sentences with longer explanatory ones
- Use parenthetical asides frequently for additional context
- Vary sentence length for rhythm and readability
- Use contractions naturally: I'll, you'll, we'll, it's, that's, etc.

## Punctuation

### Em Dashes
- **In Markdown files**: Use em dash character (—) directly
- **In HTML files**: Use HTML entity `&mdash;`
- **Usage**: Use em dashes for:
  - Parenthetical thoughts and asides: `Yes, it's **lengthy**—but that's intentional.`
  - Emphasis or dramatic pauses: `performance isn't optional&mdash;it's required.`
  - Clarifying information: `Once all deliverables are in—and the stylescape/sitemap are approved—we'll schedule a **kickoff call.**`

### Commas
- Use commas liberally for readability and natural pauses
- Use Oxford/serial commas in lists: `quality, integrity, and what matters most`
- Use commas to separate clauses and improve flow

### Periods
- Always use periods at the end of complete sentences
- Use periods in list items only if they are complete sentences

### Non-breaking Spaces
- Use `&nbsp;` in HTML when you need to prevent line breaks between specific words
- Example: `Real&nbsp;world data` (keeps "Real world" together)

### Special Characters
- Use `&rarr;` for arrows in markdown: `&rarr; _Usually the proposal gets tweaked..._`
- Use `&mdash;` for em dashes in HTML (not `—`)

## Formatting

### Bold Text
- **In Markdown**: Use `**text**` for emphasis on key terms
- **In HTML**: Use `<b>text</b>` for emphasis
- **Usage**: Bold important concepts, key terms, and emphasis points
- Example: `I'll send over a **questionnaire** with important questions`

### Italics
- **In Markdown**: Use `_text_` for subtle emphasis or asides
- **In HTML**: Use `<i>text</i>` or `<em>text</em>`
- **Usage**:
  - Subtle emphasis: `_deeply_`
  - Parenthetical thoughts: `_yes, even for one-pagers_`
  - Asides: `_Usually the proposal gets tweaked a bit during this stage._`

### Headings
- Use `####` for main section headings
- Use `#####` for sub-section headings
- Keep headings concise and descriptive

### Lists
- Use bullet points (`-`) for unordered lists
- Use numbered lists when sequence matters
- No periods after list items unless they are complete sentences
- Use consistent indentation

### Horizontal Rules
- Use `<hr>` in HTML for major section breaks
- Use `---` in Markdown for section breaks

## Hyphenation Rules

### Always Hyphenate
- `in-depth` (when used as adjective: "in-depth discussion")
- `performance-first` (compound adjective)
- `one-pager` (compound noun)
- `off-site` (compound adjective/adverb)
- `pre-built` (compound adjective)
- `high-performing` (compound adjective)
- `real-world` (when used as adjective: "real-world data")

### Two Words (Not Hyphenated)
- `in depth` (when used as adverbial phrase: "discuss in depth")
- `straightforward` (one word, not hyphenated)
- `Real world` (when starting a sentence: "Real world data shows...")

### Context Matters
- `in-depth` (adjective): "We'll have an in-depth discussion"
- `in depth` (adverb): "We'll discuss your project in depth"

## Ampersands

### In Markdown Files
- Use plain `&` character
- Example: `First meeting & initial proposal`

### In HTML Files
- Use HTML entity `&amp;` for proper encoding
- Example: `Static Sites &amp; Landing Pages`
- Also use in attributes: `alt="Awesome Motive &amp; AffiliateWP"`

## Grammar & Language

### Common Patterns
- Use "you'll" not "you will" (conversational)
- Use "I'll" not "I will" (conversational)
- Use "we'll" not "we will" (conversational)
- Use "it's" not "it is" (conversational)

### Parallel Structure
- Maintain parallel structure in lists: `identify and resolve` (not "identify and resolved")
- Keep verb tenses consistent within sentences

### Common Phrases
- "Everything is flexible" (not "Everything are flexible")
- "performance-first" (hyphenated compound)
- "from the very beginning" (not "from very beginning")

## Content Structure

### Paragraphs
- Keep paragraphs focused and concise
- Use single line breaks between paragraphs
- Use double line breaks before major sections

### Sections
- Use `<hr>` or `---` to separate major sections
- Use consistent heading hierarchy
- Maintain logical flow between sections

### Lists
- Use bullet points for features, benefits, or items
- Use consistent formatting within lists
- No trailing periods unless list items are complete sentences

## Common Mistakes to Avoid

### Typos to Watch For
- "generally" not "genrally"
- "straightforward" not "straight forward"
- "Building" not "Buiding"
- "identify" not "identifiy"
- "typical" not "typcial"
- "deviate" not "devate"

### Grammar Issues
- "doesn't just fast" → "isn't just fast"
- "identifiy and resolved" → "identify and resolve"
- Avoid double em dashes: `from the very beginning. &mdash; If` → `from the very beginning. If`

### Punctuation Issues
- Don't use double em dashes unnecessarily
- Ensure proper comma usage
- Don't forget periods at end of sentences

## HTML-Specific Guidelines

### Entities
- Always use `&amp;` for ampersands in HTML
- Use `&mdash;` for em dashes in HTML
- Use `&nbsp;` for non-breaking spaces when needed
- Use `&rarr;` for arrows

### Tags
- Use `<b>` for bold (not `<strong>` unless semantically needed)
- Use `<i>` for italics (not `<em>` unless semantically needed)
- Use semantic HTML where appropriate

## Markdown-Specific Guidelines

### Formatting
- Use `**text**` for bold
- Use `_text_` for italics
- Use `####` and `#####` for headings
- Use `-` for bullet lists
- Use `---` for horizontal rules

### Special Characters
- Use em dash `—` directly (not `&mdash;`)
- Use `&` directly (not `&amp;`)
- Use `&rarr;` for arrows

## Review Checklist

When editing content, verify:
- [ ] All ampersands use correct format (`&` in markdown, `&amp;` in HTML)
- [ ] Em dashes use correct format (`—` in markdown, `&mdash;` in HTML)
- [ ] Hyphenation follows the rules above
- [ ] Contractions are used naturally (I'll, you'll, we'll)
- [ ] Bold and italic formatting is consistent
- [ ] No typos (check common mistakes list)
- [ ] Parallel structure in lists and sentences
- [ ] Periods at end of complete sentences
- [ ] Commas used appropriately for readability
- [ ] Writing maintains conversational, direct tone

## Examples

### Good Example (Markdown)
```markdown
I'll send over a **questionnaire** with important questions to help me prepare. After you complete the questionnaire, we'll **schedule our first meeting** to talk about your project in-depth.

Yes, it's **lengthy**—but that's intentional. Many clients find the process itself valuable, and you'll walk away with a copy you can reference at any time, share with stakeholders, or use as a foundation for other projects.
```

### Good Example (HTML)
```html
<p>I'm a <b>web developer</b> who helps <b>businesses</b> create experiences on the web when <b>performance matters most.</b> When your livelihood depends on <b>leads,</b> <b>sales,</b> or <b>search visibility,</b> <i>performance isn't optional</i>&mdash;<b>it's required.</b></p>
```

---

**Remember**: The goal is to maintain a consistent, conversational, and professional tone that feels personal and direct. When in doubt, read the content aloud—it should sound natural and authentic.

