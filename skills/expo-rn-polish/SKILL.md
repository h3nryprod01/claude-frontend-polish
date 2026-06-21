---
name: expo-rn-polish
description: >-
  Make Expo / React Native UI (iOS, Android, web) feel intentional instead of
  default. Covers the RN-specific "generic tells" (system font, default blue,
  flat white cards, hardcoded hex, no dark mode) and a token-driven theming
  pattern that fixes them. Use BEFORE building RN screens/components and AFTER
  generating them to audit. TRIGGER on: "style this RN/Expo screen", "make the
  app look good", "set up theming/dark mode in Expo", "design tokens for React
  Native", "render markdown/LaTeX content in RN". Pairs with anti-generic-ui.
metadata:
  origin: original (distilled from a production Expo app's "Orbit" design system)
  license: MIT
---

# Expo / React Native Polish

`anti-generic-ui` covers the principles; this is how they land in **React
Native**, where there's no CSS and the defaults are their own tell.

## The RN generic tells

- **Type:** system font everywhere (San Francisco / Roboto), one weight.
- **Color:** iOS default blue `#007AFF` or Material indigo; pure `#fff` cards on
  `#fff` bg; gray text via random hex.
- **Theming:** colors hardcoded inline across components; `useColorScheme()`
  scattered; dark mode bolted on (or missing).
- **Surfaces:** flat white `Card` with a 1px gray border and no depth; everything
  the same radius; cards nested in cards.
- **Motion:** none, or a default `LayoutAnimation` spring; no reduced-motion.

## The fix: one token layer, read through one hook

This single pattern removes most RN genericness and gives free dark mode.

```ts
// theme/tokens.ts — palettes as plain objects (node/test-safe, no RN import)
export const light = { bg:'…', surface:'…', ink:'…', accent:'…', /* … */ } as const;
export const dark  = { bg:'…', surface:'…', ink:'…', accent:'…', /* … */ } as const;
export const radius = { lg:26, md:18, sm:12, pill:999 } as const;
export const space  = { pad:17, gap:12, screen:18 } as const;
export const font   = { display:'Lora', ui:'BeVietnamPro' } as const; // not system!

// theme/useTheme.ts — the ONLY module importing useColorScheme
import { useColorScheme } from 'react-native';
const lightTheme = { c: light, scheme:'light' } as const; // stable refs →
const darkTheme  = { c: dark,  scheme:'dark'  } as const; // useMemo([t]) is cheap
export const useTheme = () => useColorScheme()==='dark' ? darkTheme : lightTheme;
```

Then in every component: `const t = useTheme(); const s = useMemo(()=>makeStyles(t),[t]);`
and read only `t.c.*`. **No hardcoded hex in components, ever.**

## Non-generic defaults to choose

1. **Surfaces aren't pure white/black.** Warm paper (`#FFFDF9` on `#F4F1EA`) or
   cool ink-blue darks read as designed, not default.
2. **Type with a point of view.** A serif/display face for headings + a clean
   readable face for body (e.g. Lora + Be Vietnam Pro). Load via `expo-font`;
   never ship system-font-only.
3. **Semantic tones, not ad-hoc colors.** A `Tone` map (`accent|success|danger|
   honey|sky|neutral` → `{bg,fg}`) so status colors are consistent and themable.
4. **Depth via shadow tokens, not borders.** Define `shadow.card`/`shadow.soft`
   (remember `elevation` is Android/native-only; the `shadow*` props cover
   iOS+web). Flatten card nesting.
5. **A custom tab bar / nav element** as the app's signature instead of the
   stock navigator chrome.

## Multi-platform gotchas (iOS / Android / web)

- **Dynamic Type:** read `PixelRatio.getFontScale()` and scale text (clamp ~1–1.6);
  never hardcode `fontSize` for long-form/lesson content.
- **Dark mode:** comes free if all colors flow through `useTheme()`. Test both.
- **Web target (Expo web):** avoid iOS-only APIs without a fallback; verify
  shadows render (use `shadow*` props, not only `elevation`).
- **One token source.** If a second token file appears, pick one canonical and
  migrate — parallel token sets are how drift starts.

## Rich content (Markdown + LaTeX) in a WebView

For lesson/article content, render Markdown + KaTeX + inline SVG in a single
WebView and theme it with **CSS variables fed from your RN theme** (`--text`,
`--accent`, `--border`, `--surface`, `--radius`). Headings in your display face,
body in your UI face, `line-height:1.7` (kind to diacritics), KaTeX overflow
scrollable, and inject the RN `fontScale` so in-WebView text honors Dynamic Type.
Never hardcode colors or fixed font sizes inside the WebView CSS.

## Worked example: "Orbit"

A production Expo study app encodes exactly this: warm-paper/ink-blue palettes,
`radius {lg:26…}` / `space {pad:17…}`, Lora + Be Vietnam Pro, a `useTheme()`
returning stable light/dark objects, semantic `Tone`/difficulty maps, shadow
tokens over borders, a custom orbit-themed tab bar as the signature, and a
WebView lesson renderer driven by CSS vars. Result: new screens stay on-brand
because the system — not the component author — decides the colors.

## Verification

- [ ] No hardcoded hex in components; all colors via `useTheme()`.
- [ ] Headings/body use loaded brand fonts, not system.
- [ ] Surfaces aren't pure `#fff`/`#000`; depth via shadow tokens, no nested cards.
- [ ] Dark mode works everywhere; long-form text honors `fontScale`.
- [ ] Renders on iOS, Android, and web (no native-only API without fallback).
- [ ] WebView content themed via CSS vars + injected font scale.
