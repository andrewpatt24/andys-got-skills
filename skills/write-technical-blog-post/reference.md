# Technical blog post reference

Source: [The Ultimate Guide to Writing Technical Blog Posts](https://dev.to/blackgirlbytes/the-ultimate-guide-to-writing-technical-blog-posts-5464) (Rizèl Scarlett).

## Principles (use during drafting)

| Principle | Application |
|-----------|-------------|
| Specific audience | **Plan** as one reader (e.g. you before you knew the trick)—then write *to* them through level and examples. **Do not** label the audience in prose (“past me,” “for beginners,” “this is aimed at…”). Rizèl’s “past you” is a **thinking device**, not a sentence to publish. |
| Narrow topic | Subtopic, not whole framework (“useEffect pitfalls” not “React”). |
| Your voice | Match [config-tone.txt](config-tone.txt) samples (user’s prose). Rules: [best-practices.md](best-practices.md). |
| Unique angle | Someone else covered the topic; your path and examples differ. |
| Hook | Concrete opener — story, pain, or surprising result. |
| Flow then edit | Draft complete sections first; trim and clarify once. |
| Good enough | Ship clarity; perfect is optional. |
| CTA | End with one clear next step for the reader. |

## Post types → outlines

### How-to

```
Intro
  - Hook
  - Problem / what this solves

Step-by-Step Guide
  1. Step 1 (+ optional deeper links)
  2. Step 2
  ...
  N. Final step

Conclusion
  - Recap
  - Tips / gotchas
  - CTA (try it, share feedback)
```

### Explainer

```
Intro
  - Hook
  - What the topic is and why care

Body (per concept)
  1. Concept 1 — definition, example, why it matters
  2. Concept 2 — ...
  ...
  N. Final concept

Conclusion
  - Summary
  - Implications
  - CTA (explore further, ask questions)
```

*Variant:* example → definition → relevance if that fits the audience better.

### Thought leadership / opinion

```
Intro
  - Hook
  - Opinion and why it matters to you

Body
  1. Supporting point + evidence
  2. Supporting point + evidence
  ...

Counter-arguments (optional)

Conclusion
  - Reinforce view
  - CTA (discuss, disagree constructively)
```

### Listicle

```
Intro
  - Hook
  - Theme of the list

Items
  1. Item — explanation + example
  2. Item — ...
  ...

Conclusion
  - Wrap-up
  - CTA (share favorites, add to list)
```

## Hook patterns

- **Scenario:** “Every August I rebuild the same spreadsheet…”
- **Frustration:** “I pay £X/month for Y, but when I need my data…”
- **Result-first:** “After one weekend, 400GB lived in Drive — here’s the CLI.”
- **Question:** “Why do merge conflicts still feel like magic?”

Avoid: “In this article, we will explore…”; “I wrote this for past me”; “Whether you’re new to X or a seasoned pro…” (meta-audience filler). Rules: [best-practices.md](best-practices.md). Anti-AI edit pass: [human-style.md](human-style.md). Voice samples: [config-tone.txt](config-tone.txt).

## Light edit checklist

- [ ] Hook in first 2 paragraphs
- [ ] No explicit audience meta-lines in the body
- [ ] Audience never feels talked down to or lost
- [ ] Jargon defined on first use
- [ ] Code/commands match repo (verified)
- [ ] Sections scannable (headers, lists, one table if useful)
- [ ] CTA present
- [ ] Trim duplicate ideas and throat-clearing
- [ ] human-style.md: banned AI phrases removed; sentence rhythm varied; facts verified
- [ ] best-practices.md: dashes, contrastive spines, “ah the old”, banned phrases
- [ ] config-tone.txt: draft matches user writing samples (if file has samples)

## Publishing reminders (user-facing, end of draft)

- **Cover image** — professional polish; user supplies asset (Canva/Figma/etc.).
- **Cross-post** — adapt intro links for DEV vs personal site.
- **Social** — share with a short helpful blurb, not “look at me.”

## Workspace publishing (agent discovers)

The skill does not encode a fixed site or path. From the **current workspace**:

- Find where posts live (search for `_posts`, `content/blog`, `posts/`, etc.) and copy filename + frontmatter conventions from siblings.
- Read `_config.yml`, `config.toml`, or README for generator hints (Jekyll, Hugo, Astro, etc.).
- Reuse tag/category fields only if existing posts use them.

Default narrative arc when no siblings exist: personal story → problem → what you built → design choices → try it / repo link (audience via tone, not “who this is for” paragraphs).
