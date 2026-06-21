---
name: cssfx-design
description: >-
  100 handcrafted, zero-dependency CSS effects (buttons, loaders, cards, text,
  backgrounds, hover, borders, forms, misc) as copy-paste fx-* classes. Use when
  building or polishing a web UI and you want production-ready micro-interactions
  instead of bland AI-generated styling — animated buttons, spinners/loaders,
  glassmorphism cards, gradient/glitch text, animated backgrounds, hover effects,
  neon borders, form inputs. TRIGGER on requests like "make this button nicer",
  "add a loader/spinner", "animated gradient text", "glassmorphism card",
  "hover effect", "cool CSS for X". Pure CSS, no JS, no libraries.
metadata:
  origin: CSSFX (github.com/jolaleye/cssfx, MIT) + extended gallery
  license: MIT
---

# CSSFX Design Effects

100 production-ready CSS effects, pure CSS, **zero dependencies**. Each effect is
a single `fx-*` class you drop on an element.

## When to use

- The user wants a polished button, loader, card, text, background, hover, border,
  or form effect — anything where default styling looks flat or "AI-generated".
- You're building a landing page, dashboard, or component and want a tasteful
  micro-interaction without pulling in a JS animation library.

**Do not** use for: heavy JS-driven animation (use GSAP), SVG/canvas motion, or
when the project already has a design system that forbids ad-hoc CSS.

## How to use

1. **Pick an effect** from the catalog below (grouped by category).
2. **Open the category reference** in `references/<category>.md` — it has the
   exact `fx-*` class, a usage HTML snippet, and the full CSS for that effect.
3. **Add the CSS**: either copy the single effect's CSS block, or drop the whole
   library `assets/cssfx.css` into the project and just use the class names.

Markup snippets in the references are a *starting point*; the CSS (and its
descendant selectors) is authoritative for required child structure.

### Accessibility
The library respects `prefers-reduced-motion` where the source did. For custom
effects, gate animation behind `@media (prefers-reduced-motion: no-preference)`.

## Catalog (100 effects)

### Buttons (16) — `references/buttons.md`
Gradient Slide, Neon Glow Pulse, 3D Press, Liquid Fill, Border Trace, Shine Sweep, Skew Slide, Ripple Click, Icon Slide-In, Morph Pill, Gooey Merge, Pull String, Perspective Tilt, Gradient Border Hover, Jelly Bounce, Arrow Slide

### Loaders (18) — `references/loaders.md`
Dual Ring Spinner, Bouncing Dots, Pulse Ring, Equalizer Bars, Orbit, Folding Cube, Clock Wiper, Typing Dots, Infinity Loop, Circle Fade, Radar Sweep, Circular Progress, Bouncing Ball, Hexagon Pulse, Battery Charge, Progress Bar, Book Flip, Multi-Ring Spin

### Cards (8) — `references/cards.md`
Glassmorphism, Spotlight Cursor, Flip Card, Conic Neon Border, Holographic Foil, 3D Card Stack, Pricing Card Hover, Magnetic Pull

### Text (17) — `references/text.md`
Animated Gradient, Glitch, Neon Flicker, Shimmer, Layered 3D, Typewriter, Wave Letters, Rainbow Cycle, Fire Glow, Outline Reveal, Split Reveal, Mask Reveal, Fade Word Cycle, Marker Highlight, Typed Rotator, 3D Rotating Cube, Glow Pulse

### Backgrounds (6) — `references/backgrounds.md`
Animated Mesh, Pulse Grid, Aurora Waves, Floating Orbs, Confetti Rain, Twinkling Stars

### Hover (11) — `references/hover.md`
Sliding Underline, Zoom Reveal, Icon Bounce, 3D Tilt Card, Slide & Swap, Cursor Magnet, Shine Sweep Card, Stuck Note, Water Ripple, Stack Reveal, 3D Tile Flip

### Borders (4) — `references/borders.md`
Gradient Border, Corner Brackets, Glow Border, Marching Ants

### Forms (4) — `references/forms.md`
Glow Toggle, Heart Like, Floating Label Input, Glow Range Slider

### Misc (16) — `references/misc.md`
Striped Progress, Skeleton Shimmer, Pulse FAB, Pure CSS Tooltip, Notification Badge, Pure CSS Accordion, Breadcrumb Arrows, Day / Night Switch, Animated Counter, Removable Tag, Keyboard Key, Animated Divider, QR Scanner Line, Minimal Toggle, Avatar Stack, Segmented Control

## Files

- `assets/cssfx.css` — the full 100-effect library (one drop-in file, ~87 KB).
- `references/*.md` — per-category: effect name, `fx-*` class, usage HTML, full CSS.

## Attribution & provenance

Built from the open-source **CSSFX** collection
([github.com/jolaleye/cssfx](https://github.com/jolaleye/cssfx), MIT) and an
extended 100-effect gallery. MIT licensed — keep the notice when redistributing.

> Note: the canonical `jolaleye/cssfx` repo ships ~45 effects in 4 categories;
> the 100-effect / 9-category set here is the extended gallery. All CSS in this
> skill was extracted verbatim from the live gallery's stylesheet — nothing
> hand-fabricated.
