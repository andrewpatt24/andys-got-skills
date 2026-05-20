---
name: write-technical-blog-post
description: >-
  Runs voice interview (~5 min) if config-tone.txt is empty, then a ~10-minute blog
  interview, repo context, and full draft (Rizèl guide, best-practices, human-style).
  Saves user prose to config-tone.txt for cadence. Use for dev blog posts and write-ups.
---

# Write Technical Blog Post

Based on [The Ultimate Guide to Writing Technical Blog Posts](https://dev.to/blackgirlbytes/the-ultimate-guide-to-writing-technical-blog-posts-5464).

| File | Role |
|------|------|
| [reference.md](reference.md) | Outlines, hooks, checklist |
| [best-practices.md](best-practices.md) | **Rules** (punctuation, bans, blog mode) |
| [human-style.md](human-style.md) | Anti-AI-slop, burstiness, edit pass |
| [config-tone.txt](config-tone.txt) | **Your writing samples** (cadence reference; may be blank) |
| [voice-interview.md](voice-interview.md) | **Voice setup interview** when config-tone is empty |

## Goals

1. **≤10 minutes** for the blog interview (+ confirmation). If `config-tone.txt` is empty, run **voice setup first** (~5 min; [voice-interview.md](voice-interview.md)).
2. Enough signal to write the **full post** without further Q&A unless the user asks to revise.
3. Ground claims in **repo/README/code** when a GitHub URL is provided.
4. Match **the user's** voice from `config-tone.txt` samples, not from AI drafts in the repo.

## Phase 0 — Start (agent only)

Before the blog interview:

1. **Resolve config-tone.txt** (see below). If **empty**, run **[voice-interview.md](voice-interview.md)** in full before the blog interview (same chat; ~5 min).
2. **Read [best-practices.md](best-practices.md)** and **[human-style.md](human-style.md)**.
3. **Workspace context:** drafts, ideas notes, README, blog config, sibling posts for **structure and frontmatter only**. Do **not** treat existing posts as voice samples unless the user confirms they wrote them and they are in `config-tone.txt`.
4. If the user gave a **repo URL**, start README/code investigation in parallel (after voice file exists or user opts out).

**First message to user:** if voice file empty → say voice interview runs first, then blog interview. If voice file has samples → say **3 blog rounds (~10 min)** only.

### Resolve config-tone.txt

Check in order; use the first file with **real sample prose** (not only `#` comment lines):

| Priority | Path |
|----------|------|
| 1 | `<workspace>/.cursor/config-tone.txt` |
| 2 | `~/.cursor/skills/write-technical-blog-post/config-tone.txt` |

**Empty** = no non-comment, non-blank lines below the "Paste your samples" marker.

### Voice setup (when empty)

Follow **[voice-interview.md](voice-interview.md)** exactly.

- **Path A:** user pastes existing prose → save verbatim, then blog interview.
- **Path B:** no samples → **3 voice rounds** (explain technical topic; live mini paragraph; opener/humor/avoid/prefer; save location). Agent **writes** `config-tone.txt` from their verbatim answers using the template in voice-interview.md.
- **Opt-out:** only if user says **“skip voice setup”** or **“go without samples”**; note in assumptions.

Do **not** draft blog posts until voice setup completes or user opts out. Do **not** invent sample prose; only the user’s words go in `config-tone.txt`.

## Phase 1 — Interview (≤10 min user time)

Use **AskQuestion** when available. Otherwise ask conversationally.

**Rules**

- **Three rounds only.** No fourth round unless a required field is empty.
- **Batch questions** (3–6 per round).
- Brain dump from user → map to capture template; skip answered questions.
- Enrich repo context while they answer.

### Round 1 — Topic & shape (~3 min)

| Field | What to learn |
|-------|----------------|
| Topic | One **narrow** topic |
| Post type | how-to \| explainer \| opinion \| listicle |
| Audience | One reader profile (**planning only**; never label in post) |
| Motivation | Why you cared; problem or spark |
| Repo | GitHub URL or local path |

### Round 2 — Story & substance (~4 min)

| Field | What to learn |
|-------|----------------|
| Hook | Opening scenario or line |
| Before / after | Pain before; what changed |
| Key beats | 3–5 takeaways |
| Proof | Metrics, commands, code (numbers/dates help human-style) |
| Your angle | What differs from other tutorials |

### Round 3 — Delivery (~3 min)

| Field | What to learn |
|-------|----------------|
| Title direction | Working title or vibe |
| Length | Short (~800w) \| medium (~1500w) \| long |
| Publish target | Site, DEV, Hashnode, draft only |
| Tags | 2–5 if the platform uses them |
| Exclude | Secrets, employer, scope limits |
| CTA | Try repo, discuss, share results |

### After Round 3 — Confirm

Brief capture: title, post type + audience (internal), hook, outline headers, repo facts, assumptions.

Ask: **“Anything wrong or missing? Reply with edits, or say ‘go’ to draft.”**

## Phase 2 — Repo context

README, architecture, commands, APIs, tradeoffs, GitHub link. Do not invent flags or env vars.

## Phase 3 — Write the full post

**Before writing:** re-read resolved **config-tone.txt** (samples), **best-practices.md**, **human-style.md**.

### Voice

- **Cadence and phrasing:** mimic patterns in **config-tone.txt** samples (sentence length, openings, humor level, jargon).
- **Rules:** [best-practices.md](best-practices.md) (dashes, contrastive bans, blog mode, audience).
- **Anti-slop:** [human-style.md](human-style.md) mandatory edit pass after first draft.

**Structure:** [reference.md](reference.md) outline for post type. Hook = concrete moment, not “In this post we will…”

### Output format

**Default:** Markdown in chat.

**Blog/site repo:** discover posts directory and frontmatter from siblings + config; write on-disk file. Voice from **config-tone**, layout from **workspace posts**.

### End of draft (in chat only)

Suggested title (+ 2 alternates), meta description, cover image reminder, optional social blurb, fact-check assumptions.

## Phase 4 — Revisions

Edit on request; re-run human-style + best-practices scans. Re-interview only if topic, audience, or post type changes.

## After first draft — mandatory passes

1. [human-style.md](human-style.md): phrase scan, rhythm, specificity, passive, read-aloud  
2. [best-practices.md](best-practices.md): em dashes, contrastive spines, audience meta-lines, banned phrases  
3. **config-tone:** does the draft sound like the samples (not like generic AI)?

## Anti-patterns

- Drafting with empty `config-tone.txt` without user opt-out
- Using repo blog posts as voice reference when they are AI-written
- Stretching interview past **10 min** (voice setup is separate and short)
- Employer secrets, tokens, private URLs in posts
- Explicit audience framing in the body (“past me”, “for beginners”)
- Em dashes; “not X, but Y” spines; “ah the old”

## AskQuestion template

**Voice (if empty):** see voice-interview.md (Path A: paste now + save path; Path B: opener style, humor level, save path).

**Blog Round 1:** post type, audience, motivation, repo URL.

**Round 2:** hook style, length, key beats (from README), angle.

**Round 3:** publish target, tags, exclude scope, CTA.
