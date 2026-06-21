# cssfx-claude-skill

**100 handcrafted, zero-dependency CSS effects — packaged as a Claude Code skill.**

Stop shipping flat, AI-generated styling. This skill gives your coding agent a
catalog of production-ready `fx-*` micro-interactions: animated buttons,
spinners/loaders, glassmorphism cards, gradient/glitch text, animated
backgrounds, hover effects, neon borders, and form inputs — **pure CSS, no JS,
no libraries.**

| Category | Effects | | Category | Effects |
|----------|:------:|---|----------|:------:|
| Buttons | 16 | | Hover | 11 |
| Loaders | 18 | | Backgrounds | 6 |
| Text | 17 | | Borders | 4 |
| Cards | 8 | | Forms | 4 |
| Misc | 16 | | **Total** | **100** |

## Install

### Claude Code (as a skill)
```bash
git clone https://github.com/<you>/cssfx-claude-skill.git
cd cssfx-claude-skill
./install.sh        # copies into ~/.claude/skills/cssfx-design/
```
Restart Claude Code. The skill auto-activates on requests like "make this button
nicer", "add a loader", "animated gradient text", "glassmorphism card".

### Any project (just the CSS)
Drop [`assets/cssfx.css`](assets/cssfx.css) into your project and apply the
`fx-*` class names from the catalog. That's it — one ~87 KB file, no build step.

## How it's organized

- **`SKILL.md`** — the Claude Code skill: when-to-use + full 100-effect catalog.
- **`assets/cssfx.css`** — the entire library in one drop-in file. Each effect is
  delimited by `/* === Effect Name === */`.
- **`references/<category>.md`** — per effect: name, `fx-*` class, a usage HTML
  snippet, and the full CSS.

> The HTML snippets are a **starting point**. The CSS (and its descendant
> selectors) is authoritative for any required child structure.

## Accessibility

Effects respect `prefers-reduced-motion` where the source did. Gate any custom
motion behind `@media (prefers-reduced-motion: no-preference)`.

## Attribution & license

The CSS effects are **not original to this repo**. They come from:

- **[CSSFX](https://github.com/jolaleye/cssfx)** by jolaleye — MIT licensed
  (the canonical ~45-effect collection).
- An **extended 100-effect gallery** (the source this skill was built from),
  which states an MIT license and credits CSSFX.

This repository only packages those effects into the Claude Code skill format
(SKILL.md structure, category references, installer). See
[`CREDITS.md`](CREDITS.md). All CSS was extracted **verbatim** from the public
gallery stylesheet — nothing hand-fabricated.

If you are the author of any effect here and want attribution changed or content
removed, open an issue.

Packaging code & docs: MIT (see [`LICENSE`](LICENSE)). CSS effects: MIT per their
upstream sources.
