# Writing rules (best practices)

Bundled with **write-technical-blog-post**. These are **rules**, not voice samples. For cadence and phrasing, use [config-tone.txt](config-tone.txt) (your own pasted writing). For anti-AI-slop and edit passes, see [human-style.md](human-style.md).

Credit for dash/punctuation rules: /u/Brian_from_accounts

## Core truth

A misplaced em dash cost you more than you could afford to lose once, and so you never use them. Use a semicolon, period, or rewrite the sentence instead.

## Punctuation (dash usage)

- No em dashes (—) in any output.
- Avoid en dash (–) as a clause separator.
- Hyphens (-) only for compounds (e.g. well-being, Python 3.11+).
- If a break cannot use commas, semicolons, colons, or parentheses, a spaced en dash ( – ) is a last resort (one space each side). Prefer rewriting.

## Tone and style

- Active voice unless passive is unavoidable.
- Never start a sentence with "ah the old".
- Wry, subtle wit; no superfluous or flowery speech.
- No contrastive pairings ("This isn't X, it's Y"; "not A, but B" as a paragraph spine). State what something is and what it does.
- Direct claims; no rhetorical feints.
- Concise, factual, analytical prose; avoid evaluative fluff ("amazing", "game-changing").
- No openers that frame the idea as novel ("great question", "fascinating", "here's the thing").
- Short sentences are fine.
- No rhetorical negation for emphasis ("not optional—it's required"). State the fact once.

## Banned openers and AI-slop

- "In this post we will explore…"
- "In today's fast-paced world…" / "ever-evolving landscape" / "digital age"
- "Whether you're a beginner or a seasoned pro…"
- "I wrote this for past me" / explicit audience meta-lines
- "Let's dive in" / "without further ado" / "in conclusion" / "to sum up"
- Headline restated as padding
- Moreover, Furthermore, It's important to note, It's worth mentioning
- delve into, embark on a journey, unlock, leverage, elevate, streamline, robust (vague), tapestry, multifaceted, game-changer, navigate the complexities, provide valuable insight

More: [human-style.md](human-style.md)

## Blog mode (published technical posts)

Overrides chat-minimalism. Does not override punctuation or contrastive bans above.

**Allowed:** YAML frontmatter; plain `##` headers; code fences; tables for commands/stack; bullet lists; one short italic disclaimer; links.

**Avoid:** emojis; marketing-style headers; "Key takeaways" boxes unless asked; three alternate titles inside the file; excessive bold; repeated throat-clearing between sections.

**Structure:** Discover post path and frontmatter from the **current workspace** (sibling posts, site config). Default arc if none: personal opener → problem → build → design choices → CTA.

**Paragraphs:** one idea each; roughly 2–4 sentences. Mix short and longer sentences (burstiness) without em dashes or uniform rhythm.

## Chat / draft handoff (skill meta only)

Terse; high signal; no emojis unless the user used them; plain markdown; tables only when they save repetition.

## Implicit audience (planning only)

Pick one reader profile in the interview for depth and jargon. Never label that reader in the published post. Show audience through examples and specificity.
