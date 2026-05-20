# Voice interview (when config-tone.txt is empty)

Run **before** the blog post interview. Target **~5 minutes**. Goal: produce a usable `config-tone.txt` even when the user has no saved writing yet.

**Do not** copy AI-rewritten posts from the repo into this file without explicit confirmation.

## Open

One short message:

> Your voice file is empty. I’ll run a quick voice setup (~5 min) so future drafts sound like you, then we’ll do the blog interview. You can replace this file anytime with real samples you’ve written.

## Path A — User already has text

If they paste 300+ words in the first reply:

1. Ask where to save: project `.cursor/config-tone.txt` vs personal skill folder.
2. Write their paste under the samples marker (verbatim; light typo fixes only).
3. Skip to blog Phase 1.

## Path B — No samples (live interview)

Three rounds. Capture **verbatim** answers where marked; do not polish into AI prose before saving.

### Voice Round 1 — How you talk (~2 min)

Ask together (or via AskQuestion):

1. **Explain something technical** you know well (any topic; 4–8 sentences). Pretend a smart colleague asked on Slack. Type it here; I’ll keep your wording.
2. **Openers you like:** pick one you’d actually use, or type your own:
   - Scenario (“Tuesday I was… / Every group chat hits…”)
   - Direct problem (“Bulk export breaks when…”)
   - Result first (“After one weekend, 400GB was in Drive…”)
   - Question (“Why does X still…?”)
3. **Humor:** none / dry and subtle / occasional joke — which fits you?

### Voice Round 2 — Live write (~2 min)

4. **Mini paragraph:** In 3–5 sentences, describe a project or tool **you** built or use (can be the blog topic if known). No outline; just how you’d tell a friend.
5. **Words you avoid** (if any): e.g. “delve”, “leverage”, “game-changer”, em dashes, “In this post we will…”
6. **Words or habits you like:** e.g. short sentences, “I wanted”, concrete numbers, CLI commands named plainly.

### Voice Round 3 — Save (~1 min)

7. **Where to save** (default: project `.cursor/config-tone.txt` if in a blog/site repo; else personal skill folder).
8. Confirm: “I’ll save your answers verbatim as voice samples. You can edit the file later or paste better examples over them.”

## Write config-tone.txt

Use this template. Fill from interview answers. **Minimum:** Voice Round 1 answer #1 + Round 2 answer #4 (combined should be ~100+ words of their prose).

```text
# config-tone.txt — voice samples
# Generated: YYYY-MM-DD (voice interview). Replace anytime with older writing you're proud of.

# --- Live samples (verbatim) ---

## Explain something technical (Voice Round 1)
<paste answer 1>

## Describe a project (Voice Round 2)
<paste answer 4>

# --- Cadence notes (from interview) ---
# Opener style: <answer 2>
# Humor: <answer 3>
# Avoid: <answer 5 or "see best-practices.md">
# Prefer: <answer 6>
```

Create `.cursor/` in the project if saving locally and the folder is missing.

Re-read the file. Proceed to blog **Phase 1**.

## Opt-out

If the user refuses voice setup or is in a hurry:

- Record in blog brief capture: `Voice: no config-tone samples; using best-practices + human-style only.`
- Proceed to blog interview only if they say **“skip voice setup”** or **“go without samples”**.

Do not skip silently.

## Refresh later

When the user later pastes real samples (email, old blog, README):

- Replace the `Live samples` section; keep or delete cadence notes.
- No need to re-run this interview unless they ask to reset voice.
