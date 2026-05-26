#!/usr/bin/env bash
# Run skill-creator description optimization for cs-fundamentals-professor.
# Prerequisite: claude auth login (Claude Code subscription).
# Alternative: in-session optimization (see description-optimization-in-session.md).

set -euo pipefail

SKILL_CREATOR="${SKILL_CREATOR:-$HOME/.cursor/skills/anthropic-skill-creator}"
REPO_ROOT="$(cd "$(dirname "$0")/../../.." && pwd)"
SKILL_PATH="$REPO_ROOT/skills/cs-fundamentals-professor"
EVAL_SET="$SKILL_PATH/evals/trigger-eval-set.json"
RESULTS_DIR="$SKILL_PATH/evals/description-optimization"
MODEL="${MODEL:-sonnet}"

if ! command -v claude >/dev/null 2>&1; then
  echo "error: claude CLI not found on PATH" >&2
  exit 1
fi

if ! claude auth status 2>/dev/null | grep -q '"loggedIn": true'; then
  echo "error: not logged in. Run: claude auth login" >&2
  exit 1
fi

if [[ ! -f "$SKILL_CREATOR/scripts/run_loop.py" ]]; then
  echo "error: skill-creator not found at $SKILL_CREATOR" >&2
  echo "Set SKILL_CREATOR to the anthropic-skill-creator skill directory." >&2
  exit 1
fi

mkdir -p "$REPO_ROOT/.claude"
cd "$SKILL_CREATOR"

echo "Starting description optimization (model=$MODEL)..."
echo "Results → $RESULTS_DIR"
echo "This may take 30–60+ minutes."

python3 -m scripts.run_loop \
  --eval-set "$EVAL_SET" \
  --skill-path "$SKILL_PATH" \
  --model "$MODEL" \
  --max-iterations 5 \
  --runs-per-query 3 \
  --verbose \
  --results-dir "$RESULTS_DIR"
