# claude-frontend-polish

**Curated Claude Code skills that fight the "AI-generated look" and make
front-end UI feel intentional.**

Coding agents converge on the same design because they trained on the same
templates: Inter everywhere, untouched Tailwind `indigo`/`slate`, card-in-card
layouts, bounce easing, and the hero → features → pricing → FAQ skeleton. This
repo is a growing collection of skills that give your agent concrete, opinionated
tools to do better — detection rules *and* ready-made polish.

## Skills

| Skill | What it does | Type |
|-------|--------------|------|
| **[anti-generic-ui](skills/anti-generic-ui/)** | Detects the "AI look" (banned defaults, the tells) and drives a critique → audit → polish → harden process. | Guidance (original) |
| **[cssfx-design](skills/cssfx-design/)** | 100 zero-dependency CSS micro-interactions (buttons, loaders, cards, text, backgrounds, hover, borders, forms) as copy-paste `fx-*` classes. | Assets (CSSFX, MIT) |

> Roadmap: design-token systems, distinctive type pairings, layered-shadow
> palettes, and more asset skills. PRs welcome — see *Contributing*.

## Install

```bash
git clone https://github.com/h3nryprod01/claude-frontend-polish.git
cd claude-frontend-polish
./install.sh        # installs every skill in skills/ into ~/.claude/skills/
```
Restart Claude Code. Skills auto-activate on requests like "make this look less
generic", "polish the UI", "add a loader", "design a landing page".

Each skill is self-contained — you can also copy a single `skills/<name>/` folder
into `~/.claude/skills/` (or a project's `.claude/skills/`).

## The problem these fight

The generic "tells", in one place:

- **Type:** Inter / Roboto / Arial for everything, one weight, no display face.
- **Color:** untouched `indigo-600` / `slate-900`, gray text on white, a
  blue→violet hero gradient.
- **Layout:** the same hero → 3-col features → logo cloud → pricing → FAQ → footer.
- **Depth:** cards in cards, `border + shadow-sm` on everything, uniform radius.
- **Motion:** bounce/elastic easing, 500ms transitions, identical scroll-fades.

`anti-generic-ui` makes the agent *notice* these and leave them; `cssfx-design`
gives it polished interactions to reach for instead.

## Contributing

Add a skill as `skills/<name>/SKILL.md` (plus optional `assets/` and
`references/`). Keep it: opinionated, concrete, and licensed for redistribution.
Asset skills must credit their upstream source in the repo's `CREDITS.md`. Open a
PR.

## Credits & further reading

This collection stands on the shoulders of the design community. See
[`CREDITS.md`](CREDITS.md) for full attribution. Notable resources that inspired
or complement these skills:

- **[Refactoring UI](https://www.refactoringui.com/)** — Adam Wathan & Steve Schoger.
- **[Open Props](https://open-props.style/)** — Adam Argyle (CSS design tokens).
- **[CSSFX](https://github.com/jolaleye/cssfx)** — jolaleye (MIT), source of `cssfx-design`.
- **[Motion](https://motion.dev/)**, **[css-loaders](https://css-loaders.com/)**,
  **[Animista](https://animista.net/)**, **[Hover.css](https://ianlunn.github.io/Hover/)**.
- The **"Impeccable"** anti-generic design skill (Paul Bakaus) — a kindred,
  larger guidance project.

## License

Packaging, docs, and the `anti-generic-ui` skill: **MIT** ([`LICENSE`](LICENSE)).
Bundled CSS assets are MIT per their upstream authors — see
[`CREDITS.md`](CREDITS.md). If you authored bundled content and want attribution
changed or it removed, open an issue.
