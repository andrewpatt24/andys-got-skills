# Human, non-robotic prose (anti-AI-slop)

Source requested by user: [r/SEMrush — How to make AI written content sound human](https://www.reddit.com/r/SEMrush/comments/1lialrl/how_to_make_ai_written_content_sound_human_and/)

Reddit may block automated fetch; principles below match that thread’s topic and common SEMrush/community guidance on humanizing AI drafts (perplexity, burstiness, E-E-A-T, edit passes). **Rules:** [best-practices.md](best-practices.md). **Voice samples:** [config-tone.txt](config-tone.txt) (user’s own prose). When rules conflict, best-practices wins (e.g. no em dashes, no contrastive “not X, but Y”).

## Why AI text feels wrong

Detectors and readers flag **low perplexity** (too predictable word choice) and **low burstiness** (uniform sentence length and rhythm). Default model prose is smooth, symmetrical, and connector-heavy. The fix is not “trick the detector”; it is **specificity, rhythm, and evidence that a person shaped the draft**.

## During the interview (feeds human signals)

Collect material detectors cannot invent:

- **First-person facts:** what you built, broke, shipped, measured
- **Numbers:** versions, counts, durations, HTTP codes, file sizes, costs
- **Temporal anchors:** dates, “last weekend”, tool versions
- **Sharp edges:** failures, workarounds, honest limits
- **Opinions or calls** only when the user states them; do not fabricate hot takes

## While drafting

### Rhythm (burstiness without banned punctuation)

- Mix **short** sentences with longer ones; avoid five paragraphs of similar length
- One main idea per paragraph; roughly **2–4 sentences** in blog mode
- Prefer commas, semicolons, periods, parentheses for asides; **never em dashes** per best-practices

### Voice signals (technical blog)

- **Active voice**; name the subject (I, we, the CLI, the connector)
- **Concrete nouns:** `library.db`, `HTTP 416`, `drive.file`, not “the solution” or “the platform”
- **Light hedging** only for real uncertainty (“might”, “seems”, “in my run”); no filler personality
- **Subtle wit** per best-practices and config-tone samples; no hype adjectives

### E-E-A-T for dev posts (experience in the prose)

- **Experience:** what you actually did (commands run, errors hit)
- **Expertise:** why a design choice mattered, not textbook filler
- **Specificity:** link repo paths, flags, env vars verified in README/code
- **Trust:** caveats, undocumented APIs, secrets hygiene; fact-check every claim

### Banned AI phrases and connectors

Scan the draft and remove or rewrite any of these:

| Category | Examples |
|----------|----------|
| Openers | In today's digital age; in this fast-paced; in the ever-evolving landscape |
| Verbs / hype | delve into; embark on a journey; unlock; leverage; elevate; streamline; robust solution |
| Padding | it's important to note; it's worth mentioning; moreover; furthermore; in conclusion; to sum up |
| Nouns | tapestry; multifaceted; comprehensive guide; game-changer; landscape (metaphorical) |
| Meta | in this post we will explore; let's dive in; without further ado; key takeaways (as a box) |
| Contrastive AI spine | it's not X, it's Y; not A, but B (also banned in best-practices) |
| Empty insight | provide valuable insight; navigate the complexities; dive deep into |

Replace with a **specific fact**, **command**, or **one clear sentence**.

## After the first draft (mandatory human-style pass)

Treat the first draft as raw. Before handoff:

1. **Phrase scan:** search banned list above; fix hits
2. **Rhythm scan:** break up three+ same-length sentences in a row; add one short sentence per section if the block reads flat
3. **Specificity scan:** every abstract claim gets a number, file, command, or link; delete unverified stats
4. **Passive scan:** rewrite passive where the actor matters (“was uploaded by” → “the CLI uploads”)
5. **Read-aloud test:** any sentence awkward spoken gets rewritten
6. **best-practices pass:** em dashes, contrastive spines, audience meta-lines, “ah the old”
7. **config-tone pass:** draft sounds like the user’s pasted samples, not generic AI

Prompt-chaining pattern (optional, same session): ask what sounds generic or cliché in the draft, rewrite those sections only, then re-run scans 1–6.

## What not to do (common bad “humanizing” advice)

- **Do not** add em dashes or en-dash clause breaks to sound casual; best-practices forbids them
- **Do not** add throat-clearing filler (“honestly”, “look”, “so yeah”) to fake speech
- **Do not** invent personal anecdotes the interview did not support
- **Do not** bloat with “Moreover / Furthermore” chains between sections
- **Do not** add a generic “In conclusion” paragraph; end with CTA or concrete next step

## Checklist (add to final self-check)

- [ ] Sentence lengths vary within each section
- [ ] No banned AI phrases (table above)
- [ ] First-person or concrete subject where the author did the work
- [ ] At least one temporal anchor or version where relevant
- [ ] Claims tied to repo/README or interview facts
- [ ] Read-aloud pass done on intro and conclusion
- [ ] best-practices.md pass clean
- [ ] config-tone.txt: cadence matches user samples (if samples exist)
