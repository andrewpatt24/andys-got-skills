# In-session description optimization

Claude CLI `run_loop` was skipped (requires Claude Code premium auth). Optimization done in Cursor agent session using `evals/trigger-eval-set.json` and skill-creator guidelines.

## Before (issues)

| Problem | Example eval |
|---------|----------------|
| Keyword overfit | Listed JWT, Redis, RAG, etc. → risk triggering on "add unit tests for jwt", "fix redis timeout" |
| Weak negatives | "architecture choice" could pull in greenfield Next vs Remix comparison |
| Passive voice | "Teaches…" vs imperative "Use when…" |

## After (strategy)

- **Intent-first:** learning vs implementing
- **Imperative** opening: "Use whenever…"
- **Generalized CS domains** instead of a long tech shopping list
- **Explicit do-not-trigger** line for near-miss negatives

## Manual scorecard (20 queries)

| # | Should trigger | Predicted with new description |
|---|----------------|--------------------------------|
| 1–10 | yes | pass |
| 11–20 | no | pass |

## Character count

New description: ~680 characters (under 1024 limit).

## Re-run later (optional)

If you get Claude Code CLI auth later:

```bash
skills/cs-fundamentals-professor/evals/run-description-optimization.sh
```

Compare `best_description` to the in-session version above.
