# andys-got-skills

Personal [Cursor Agent Skills](https://cursor.com/docs/context/skills) for repeatable workflows: blog posts, tooling, and whatever comes next.

Each skill lives under `skills/<skill-name>/` with a `SKILL.md` entry point and supporting files. Skills are plain Markdown; version them here, install where Cursor expects them.

## Install a skill

**Option A — symlink (recommended for one machine)**

```bash
git clone https://github.com/andrewpatt24/andys-got-skills.git
ln -sf "$(pwd)/andys-got-skills/skills/write-technical-blog-post" \
  ~/.cursor/skills/write-technical-blog-post
ln -sf "$(pwd)/andys-got-skills/skills/cs-fundamentals-professor" \
  ~/.cursor/skills/cs-fundamentals-professor
```

**Option B — copy**

```bash
cp -R andys-got-skills/skills/write-technical-blog-post ~/.cursor/skills/
```

**Option C — project voice file only**

Some skills use a per-project voice file. For the blog skill, add:

```text
<your-repo>/.cursor/config-tone.txt
```

Project file overrides personal `config-tone.txt` when it contains real sample prose. See the skill README below.

Restart Cursor or start a new agent chat after installing.

## Skills in this repo

| Skill | Description |
|-------|-------------|
| [write-technical-blog-post](skills/write-technical-blog-post/) | Voice interview + ~10 min blog interview → full technical post (Rizèl Scarlett structure, anti-AI-slop rules, your `config-tone.txt` samples) |
| [cs-fundamentals-professor](skills/cs-fundamentals-professor/) | First-principles CS explanations of your AI-generated code—mental models, trade-offs, code citations, and a pop quiz |

## Adding a new skill

1. Create `skills/<skill-name>/SKILL.md` with YAML frontmatter (`name`, `description`).
2. Keep `SKILL.md` under ~500 lines; put long reference material in sibling `.md` files.
3. Document install path and any per-project config in this README and in the skill folder.
4. Commit and push.

Cursor discovers skills from `~/.cursor/skills/` (not `~/.cursor/skills-cursor/`, which is reserved for built-ins).

## Layout

```text
andys-got-skills/
├── README.md
└── skills/
    ├── write-technical-blog-post/
    │   ├── SKILL.md
    │   ├── best-practices.md
    │   ├── human-style.md
    │   ├── voice-interview.md
    │   ├── reference.md
    │   └── config-tone.txt
    └── cs-fundamentals-professor/
        ├── SKILL.md
        └── example-response.md
```

## License

MIT unless a skill folder says otherwise.
