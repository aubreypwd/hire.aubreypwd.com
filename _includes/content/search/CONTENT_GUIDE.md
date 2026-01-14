# SEO Content Guide for Search Pages

This guide provides instructions for creating SEO-optimized articles in the `/search/` directory. Use this as a reference when creating new content to ensure consistency with brand voice, messaging, and style.

## Primary Message (Filter Everything Through This)

You are "the friend with serious web experience" who gives honest guidance, clear explanations, and practical solutions. No fluff, no pressure. You value fundamentals, simplicity, performance, communication, and straight talk, backed by a decade+ doing high-stakes work for agencies and major brands.

## Brand Voice Spec

**Tone:** Calm, direct, friendly, confident. "Like a helpful friend who is also a senior dev."

**Default Stance:** Reduce hype, simplify decisions, show tradeoffs plainly.

**Language:** No jargon unless explained in one sentence. No vague marketing phrases.

**Promise:** "I will tell you when you do not need me" vibe.

## Non-Negotiable Content Rules

- Every article must answer: "What is the simplest thing that will work here?"
- Every article must include a "Straight talk" section that says what NOT to do (and why).
- Never shame DIY/no-code. Often recommend it when it fits.
- Always tie recommendations to outcomes: speed, clarity, maintainability, SEO, conversions.
- Fixed pricing is the default. Hourly only for out-of-scope surprises.
- No real examples section (to avoid needing to make up or lie about client work).
- No internal links to other search pages or sections.
- No external links to other sites.
- Only link: The intro "Hi, I'm [Aubrey](/)" links to homepage.

## Repeatable Article Skeleton

Use this structure for all articles:

1. **Opening:** "Hi, I'm <a href="/" class="bold">Aubrey</a>, a freelance and contract web developer."
2. **Hook (2-3 sentences):** Name the real problem, reduce anxiety, promise clarity.
3. **Quick answer (bullets):** "If X, do Y. If A, do B."
4. **The decision framework (simple rules):** 3-6 criteria max.
5. **Straight talk (callouts):** Common traps, sales pressure patterns, what is actually worth paying for.
6. **What I would do first (a short checklist)**
7. **FAQ section:** 3-5 questions that people actually ask.
8. **CTA:** "If you want a straight answer, send me these 3 details…" (no links, just text)
9. **Final CTA:** Always end with:
   ```
   ---

   **Ready to work together?** — <a href="/#contact" class="strong">Contact me</a> and let's get started!
   ```

## File Structure

Each article requires two files:

1. **HTML file in `/search/`** with frontmatter:
   ```yaml
   ---
   layout: page
   title: "[SEO Title - under ~60 chars]"
   description: "[Meta description - 150-160 characters, includes primary keyword]"
   keywords: "[comma-separated keywords]"
   sitemap: true
   ---
   ```

2. **Markdown content file in `/_includes/content/search/`** following the article skeleton.

## HTML File Pattern

```yaml
---
layout: page
title: "[SEO Title]"
description: "[Meta description - 150-160 characters, includes primary keyword]"
keywords: "[comma-separated keywords]"
sitemap: true
---

{% include section-multi.html
	heading="[Article Heading]"
	id="[article-id]"
	content="content/search/[filename].md"
	header_content="[2-3 sentence hook that names the problem and promises clarity]" %}
```

## Content Structure Pattern

- Opening: "Hi, I'm <a href="/" class="bold">Aubrey</a>, a freelance and contract web developer."
- Use `---` for section breaks (horizontal rules in markdown)
- Use `####` for main headings, `#####` for sub-headings
- Follow style guide: conversational tone, contractions, em dashes (— in markdown), bold for emphasis
- Follow the repeatable article skeleton for all articles
- **No internal links** except the intro link to homepage
- **No external links**
- **No real examples section** (to avoid needing to make up or lie about client work)
- End with CTA: "If you want a straight answer, send me these 3 details…" (no links, just text)
- Always end with the final CTA linking to contact section

## Linking Rules

- **No internal links** to other search pages or sections
- **No external links** to other sites
- **Only link:** The intro "Hi, I'm [Aubrey](/)" links to homepage
- **Final CTA:** Link to `/#contact` section
- Goal: indexing and information. People will skim and naturally navigate to main index.html

## Style Guide Adherence

Follow `agents/CONTENT_STYLE_GUIDE.md`:

- Use `**bold**` for emphasis in markdown
- Use `_italics_` for subtle emphasis
- Use em dash `—` directly in markdown (not `&mdash;`)
- Use contractions naturally (I'll, you'll, we'll)
- Write conversationally and directly
- Explain technical terms when first introduced
- Use "you" and "I" liberally
- Include parenthetical asides for context

## SEO Requirements

**Title:**
- Under ~60 characters
- Includes primary keyword
- Matches search intent

**Meta Description:**
- 150-160 characters
- Includes primary keyword
- Compelling and clear

**Keywords:**
- One primary keyword + 2-4 secondary variants
- Used naturally in H1/H2 and intro
- Comma-separated in frontmatter

**Content:**
- Primary keyword in H1 (heading in section-multi.html)
- Keywords used naturally throughout
- FAQ section with 3-5 questions people actually ask
- Content matches search intent

## QC Checklist (Run on Every Draft)

**Message Fit:**
- Does it sound like "honest guidance, clear explanations, no fluff" instead of a generic agency blog?
- Is there a clear recommendation AND a clear "when you do not need this"?

**Clarity:**
- Are there any paragraphs that are just vibes (no decision help)? Delete.
- Is the framework short enough someone can use it in 2 minutes?

**Proof:**
- Did it mention your decade+ experience in a natural way once (not braggy), especially on hiring/trust posts?
- Any claims are phrased carefully without needing specific examples (no made-up client stories).

**SEO Basics:**
- One primary keyword + 2-4 secondary variants, used naturally in H1/H2 and intro.
- Title under ~60 chars, meta description ~150-160, matches search intent.
- FAQ section with 3-5 questions that people actually ask.

**Structure:**
- Does it follow the article skeleton?
- Is the opening "Hi, I'm Aubrey..." present?
- Is there a "Straight talk" section?
- Is there a "What I would do first" checklist?
- Does it end with both CTAs (text CTA + final CTA with contact link)?

**Linking:**
- Only intro link to homepage?
- Only final CTA link to contact?
- No other internal or external links?

## Common Patterns to Use

**Opening Hook Pattern:**
```
[Problem statement]. [Anxiety/confusion people feel]. [Promise of clarity/solution].
```

**Quick Answer Pattern:**
```
**If you have/need:**
- **X** → Do Y
- **A** → Do B

**If you have/need:**
- **Z** → Do C
```

**Straight Talk Pattern:**
```
Here's what you need to know:

**Common traps:**
- [Trap 1]
- [Trap 2]

**What's actually worth paying for:**
- [Worth it 1]
- [Worth it 2]

**What's usually NOT worth paying for:**
- [Not worth it 1]
- [Not worth it 2]

**When DIY might work:**
- [DIY scenario 1]
- [DIY scenario 2]
```

**What I Would Do First Pattern:**
```
If you're [evaluating/deciding/considering], here's my checklist:

1. **[Action 1]**
2. **[Action 2]**
3. **[Action 3]**
4. **[Action 4]**
5. **[Action 5]**
```

**FAQ Pattern:**
```
#### FAQ

**[Question 1]**
[Clear, direct answer]

**[Question 2]**
[Clear, direct answer]

**[Question 3]**
[Clear, direct answer]
```

## Examples from Existing Content

Reference these files for structure and tone:
- `straight-talk-web-developer.md` - Main landing page example
- `do-you-need-a-website-rebuild.md` - Problem-based decision framework
- `how-to-hire-freelance-web-developer.md` - Hiring guide with experience mention
- `no-upsell-website-checklist.md` - Checklist-based content

## Remember
