# CSSFX — Buttons (16)

Apply the `fx-*` class. Full library: `../assets/cssfx.css`. Markup is a starting point; the CSS is authoritative.


## Gradient Slide

`fx-btn-gradient-slide`

```html
<button class="fx-btn-gradient-slide">Hover me</button>
```

```css
.fx-btn-gradient-slide {
  position: relative;
  border: none;
  cursor: pointer;
  padding: 14px 36px;
  font-size: 15px;
  font-weight: 600;
  letter-spacing: 0.3px;
  color: #fff;
  border-radius: 12px;
  background: linear-gradient(120deg, #8b5cf6, #ec4899, #8b5cf6);
  background-size: 200% 100%;
  background-position: 0% 50%;
  box-shadow: 0 10px 25px -10px rgba(139, 92, 246, 0.6);
  transition: background-position 0.6s ease, transform 0.25s ease, box-shadow 0.25s ease;
}
.fx-btn-gradient-slide:hover {
  background-position: 100% 50%;
  transform: translateY(-2px);
  box-shadow: 0 18px 35px -12px rgba(236, 72, 153, 0.7);
}
.fx-btn-gradient-slide:active { transform: translateY(0); }
```


## Neon Glow Pulse

`fx-btn-neon-glow`

```html
<button class="fx-btn-neon-glow">Hover me</button>
```

```css
.fx-btn-neon-glow {
  position: relative;
  padding: 14px 34px;
  font-size: 15px;
  font-weight: 700;
  letter-spacing: 2px;
  text-transform: uppercase;
  color: #22d3ee;
  background: transparent;
  border: 2px solid #22d3ee;
  border-radius: 8px;
  cursor: pointer;
  text-shadow: 0 0 8px rgba(34, 211, 238, 0.8);
  box-shadow:
    0 0 5px rgba(34, 211, 238, 0.6),
    inset 0 0 5px rgba(34, 211, 238, 0.3);
  animation: fx-neon-pulse 1.8s ease-in-out infinite;
}
.fx-btn-neon-glow:hover {
  color: #0a0a0a;
  background: #22d3ee;
  text-shadow: none;
}
@keyframes fx-neon-pulse {
  0%, 100% { box-shadow: 0 0 5px rgba(34,211,238,0.6), 0 0 12px rgba(34,211,238,0.4), inset 0 0 5px rgba(34,211,238,0.3); }
  50%      { box-shadow: 0 0 12px rgba(34,211,238,0.9), 0 0 28px rgba(34,211,238,0.6), inset 0 0 10px rgba(34,211,238,0.5); }
}
```


## 3D Press

`fx-btn-3d-press`

```html
<button class="fx-btn-3d-press">Hover me</button>
```

```css
.fx-btn-3d-press {
  position: relative;
  border: none;
  cursor: pointer;
  padding: 14px 32px;
  font-size: 15px;
  font-weight: 700;
  color: #fff;
  background: #10b981;
  border-radius: 10px;
  box-shadow: 0 6px 0 #047857, 0 8px 14px rgba(0,0,0,0.25);
  transition: transform 0.08s ease, box-shadow 0.08s ease;
}
.fx-btn-3d-press:hover { background: #34d399; }
.fx-btn-3d-press:active {
  transform: translateY(6px);
  box-shadow: 0 0 0 #047857, 0 2px 6px rgba(0,0,0,0.25);
}
```


## Liquid Fill

`fx-btn-liquid-fill`

```html
<button class="fx-btn-liquid-fill">Hover me</button>
```

```css
.fx-btn-liquid-fill {
  position: relative;
  overflow: hidden;
  padding: 14px 34px;
  font-size: 15px;
  font-weight: 600;
  color: #f43f5e;
  background: transparent;
  border: 2px solid #f43f5e;
  border-radius: 999px;
  cursor: pointer;
  isolation: isolate;
  transition: color 0.35s ease;
}
.fx-btn-liquid-fill::before {
  content: "";
  position: absolute;
  inset: 0;
  z-index: -1;
  background: #f43f5e;
  border-radius: 999px;
  transform: translateY(101%);
  transition: transform 0.45s cubic-bezier(0.22, 1, 0.36, 1);
}
.fx-btn-liquid-fill:hover { color: #fff; }
.fx-btn-liquid-fill:hover::before { transform: translateY(0); }
```


## Border Trace

`fx-btn-border-trace`

```html
<button class="fx-btn-border-trace">Hover me</button>
```

```css
.fx-btn-border-trace {
  position: relative;
  padding: 14px 34px;
  font-size: 15px;
  font-weight: 600;
  color: #fbbf24;
  background: rgba(251, 191, 36, 0.06);
  border: none;
  border-radius: 10px;
  cursor: pointer;
  overflow: hidden;
}
.fx-btn-border-trace::before,
.fx-btn-border-trace::after {
  content: "";
  position: absolute;
  background: #fbbf24;
}
.fx-btn-border-trace::before {
  top: 0; left: 0;
  width: 100%; height: 2px;
  transform: translateX(-100%);
  transition: transform 0.35s ease;
}
.fx-btn-border-trace::after {
  bottom: 0; right: 0;
  width: 100%; height: 2px;
  transform: translateX(100%);
  transition: transform 0.35s ease 0.2s;
}
.fx-btn-border-trace:hover::before,
.fx-btn-border-trace:hover::after { transform: translateX(0); }
.fx-btn-border-trace:hover { box-shadow: 0 0 18px rgba(251, 191, 36, 0.35); }
```


## Shine Sweep

`fx-btn-shine-sweep`

```html
<button class="fx-btn-shine-sweep">Hover me</button>
```

```css
.fx-btn-shine-sweep {
  position: relative;
  overflow: hidden;
  padding: 14px 36px;
  font-size: 15px;
  font-weight: 600;
  color: #fff;
  background: linear-gradient(135deg, #6366f1, #a855f7);
  border: none;
  border-radius: 10px;
  cursor: pointer;
  box-shadow: 0 8px 20px -8px rgba(168, 85, 247, 0.6);
}
.fx-btn-shine-sweep::before {
  content: "";
  position: absolute;
  top: 0; left: -120%;
  width: 60%; height: 100%;
  background: linear-gradient(120deg, transparent, rgba(255,255,255,0.55), transparent);
  transform: skewX(-25deg);
}
.fx-btn-shine-sweep:hover::before {
  animation: fx-shine 0.9s ease;
}
@keyframes fx-shine {
  100% { left: 120%; }
}
```


## Skew Slide

`fx-btn-skew-slide`

```html
<button class="fx-btn-skew-slide">Hover me</button>
```

```css
.fx-btn-skew-slide {
  padding: 14px 34px;
  font-size: 15px;
  font-weight: 600;
  color: #fff;
  background: #111827;
  border: none;
  border-radius: 6px;
  cursor: pointer;
  transform: skew(-12deg);
  transition: background 0.25s ease, transform 0.25s ease;
}
.fx-btn-skew-slide:hover {
  background: #f97316;
  transform: skew(-12deg) translateX(4px);
}
```


## Ripple Click

`fx-btn-ripple`

```html
<button class="fx-btn-ripple">Hover me</button>
```

```css
.fx-btn-ripple {
      position: relative;
      overflow: hidden;
      padding: 14px 36px;
      font-size: 15px; font-weight: 600;
      color: #fff;
      background: #6366f1;
      border: none;
      border-radius: 10px;
      cursor: pointer;
    }
    .fx-btn-ripple::after {
      content: "";
      position: absolute;
      top: 50%; left: 50%;
      width: 6px; height: 6px;
      background: rgba(255,255,255,0.55);
      border-radius: 50%;
      transform: translate(-50%, -50%) scale(0);
      opacity: 0;
    }
    .fx-btn-ripple.fx-rippling::after {
      animation: fx-ripple-burst 0.7s ease-out;
    }
    @keyframes fx-ripple-burst {
      0%   { transform: translate(-50%, -50%) scale(0);   opacity: 0.7; }
      100% { transform: translate(-50%, -50%) scale(35);  opacity: 0;   }
    }
```


## Icon Slide-In

`fx-btn-icon-slide`

```html
<button class="fx-btn-icon-slide">Hover me</button>
```

```css
.fx-btn-icon-slide {
      display: inline-flex; align-items: center; gap: 0;
      padding: 14px 30px;
      font-size: 15px; font-weight: 600;
      color: #fff;
      background: linear-gradient(135deg, #14b8a6, #06b6d4);
      border: none;
      border-radius: 999px;
      cursor: pointer;
      overflow: hidden;
      transition: gap 0.3s ease, box-shadow 0.3s ease;
      box-shadow: 0 8px 20px -8px rgba(20,184,166,0.6);
    }
    .fx-btn-icon-slide svg {
      width: 0; height: 18px;
      transition: width 0.3s ease, transform 0.3s ease;
    }
    .fx-btn-icon-slide:hover {
      gap: 10px;
      box-shadow: 0 12px 26px -8px rgba(6,182,212,0.7);
    }
    .fx-btn-icon-slide:hover svg {
      width: 18px;
      transform: translateX(3px);
    }
```


## Morph Pill

`fx-btn-morph`

```html
<button class="fx-btn-morph">Hover me</button>
```

```css
.fx-btn-morph {
      padding: 13px 28px;
      font-size: 15px; font-weight: 600;
      color: #ec4899;
      background: transparent;
      border: 2px solid #ec4899;
      border-radius: 8px;
      cursor: pointer;
      transition: border-radius 0.4s cubic-bezier(0.34,1.56,0.64,1), color 0.3s ease, background 0.3s ease, padding 0.4s ease;
    }
    .fx-btn-morph:hover {
      color: #fff;
      background: #ec4899;
      border-radius: 999px;
      padding: 13px 38px;
    }
```


## Gooey Merge

`fx-btn-gooey`

```html
<button class="fx-btn-gooey">Hover me</button>
```

```css
.fx-btn-gooey {
      position: relative;
      padding: 14px 32px;
      font-size: 15px;
      font-weight: 600;
      color: #fff;
      background: #6366f1;
      border: none;
      border-radius: 999px;
      cursor: pointer;
      overflow: hidden;
      transition: background 0.3s ease;
    }
    .fx-btn-gooey-text { position: relative; z-index: 1; }
    .fx-btn-gooey-dot {
      position: absolute;
      width: 14px;
      height: 14px;
      border-radius: 50%;
      background: #ec4899;
      top: 50%;
      transform: translateY(-50%);
      transition: all 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
    }
    .fx-btn-gooey-dot:first-of-type { left: -20px; }
    .fx-btn-gooey-dot:last-of-type { right: -20px; }
    .fx-btn-gooey:hover {
      background: #4f46e5;
    }
    .fx-btn-gooey:hover .fx-btn-gooey-dot:first-of-type {
      left: calc(50% - 7px);
      transform: translateY(-50%) scale(1.5);
    }
    .fx-btn-gooey:hover .fx-btn-gooey-dot:last-of-type {
      right: calc(50% - 7px);
      transform: translateY(-50%) scale(1.5);
    }
```


## Pull String

`fx-btn-pull`

```html
<button class="fx-btn-pull">Hover me</button>
```

```css
.fx-btn-pull {
      position: relative;
      padding: 8px 2px;
      font-size: 16px;
      font-weight: 600;
      color: #1f2937;
      background: transparent;
      border: none;
      cursor: pointer;
    }
    .fx-btn-pull::after {
      content: "";
      position: absolute;
      left: 50%; right: 50%;
      bottom: 0;
      height: 2px;
      background: repeating-linear-gradient(
        90deg,
        #8b5cf6 0,
        #8b5cf6 4px,
        transparent 4px,
        transparent 7px
      );
      transition: left 0.35s ease, right 0.35s ease;
    }
    .fx-btn-pull:hover::after {
      left: 0; right: 0;
    }
    .fx-btn-pull:hover { color: #8b5cf6; }
```


## Perspective Tilt

`fx-btn-perspective`

```html
<button class="fx-btn-perspective">Hover me</button>
```

```css
.fx-btn-perspective {
      padding: 14px 36px;
      font-size: 15px;
      font-weight: 700;
      color: #fff;
      background: linear-gradient(135deg, #f97316, #ec4899);
      border: none;
      border-radius: 12px;
      cursor: pointer;
      transform: perspective(600px) rotateX(var(--rx, 0)) rotateY(var(--ry, 0));
      transition: transform 0.15s ease-out, box-shadow 0.15s ease;
      box-shadow: 0 8px 20px -8px rgba(249, 115, 22, 0.6);
      transform-style: preserve-3d;
    }
    .fx-btn-perspective:hover {
      box-shadow: 0 18px 35px -12px rgba(236, 72, 153, 0.7);
    }
```


## Gradient Border Hover

`fx-btn-gradient-border-hover`

```html
<button class="fx-btn-gradient-border-hover">Hover me</button>
```

```css
.fx-btn-gradient-border-hover {
      position: relative;
      padding: 13px 32px;
      font-size: 15px;
      font-weight: 600;
      color: #1f2937;
      background: #fff;
      border: 2px solid #1f2937;
      border-radius: 10px;
      cursor: pointer;
      isolation: isolate;
      transition: color 0.3s ease, border-color 0.3s ease;
    }
    .fx-btn-gradient-border-hover::before {
      content: "";
      position: absolute;
      inset: -2px;
      border-radius: 12px;
      background: linear-gradient(135deg, #8b5cf6, #ec4899, #f59e0b);
      background-size: 200% 200%;
      z-index: -1;
      opacity: 0;
      transition: opacity 0.3s ease;
      animation: fx-gbh-shift 3s linear infinite;
    }
    .fx-btn-gradient-border-hover::after {
      content: "";
      position: absolute;
      inset: 0;
      border-radius: 8px;
      background: #fff;
      z-index: -1;
    }
    .fx-btn-gradient-border-hover:hover {
      color: #8b5cf6;
      border-color: transparent;
    }
    .fx-btn-gradient-border-hover:hover::before {
      opacity: 1;
    }
    @keyframes fx-gbh-shift {
      to { background-position: 200% 50%; }
    }
```


## Jelly Bounce

`fx-btn-jelly`

```html
<button class="fx-btn-jelly">Hover me</button>
```

```css
.fx-btn-jelly {
      padding: 14px 36px;
      font-size: 15px;
      font-weight: 700;
      color: #fff;
      background: linear-gradient(135deg, #f472b6, #ec4899);
      border: none;
      border-radius: 14px;
      cursor: pointer;
      transform-origin: 50% 80%;
      box-shadow: 0 8px 20px -8px rgba(236, 72, 153, 0.6);
    }
    .fx-btn-jelly:hover { background: linear-gradient(135deg, #f9a8d4, #f472b6); }
    .fx-btn-jelly:active {
      animation: fx-jelly-wobble 0.5s ease-out;
    }
    @keyframes fx-jelly-wobble {
      0%, 100% { transform: scale(1, 1); }
      30%      { transform: scale(1.25, 0.75); }
      50%      { transform: scale(0.85, 1.15); }
      70%      { transform: scale(1.1, 0.9); }
      85%      { transform: scale(0.95, 1.05); }
    }
```


## Arrow Slide

`fx-btn-arrow`

```html
<button class="fx-btn-arrow">Hover me</button>
```

```css
.fx-btn-arrow {
      position: relative;
      overflow: hidden;
      padding: 14px 32px;
      font-size: 15px;
      font-weight: 600;
      color: #fff;
      background: #0f172a;
      border: 1px solid #22d3ee;
      border-radius: 10px;
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      gap: 8px;
      isolation: isolate;
    }
    .fx-btn-arrow-text,
    .fx-btn-arrow-icon {
      transition: transform 0.35s cubic-bezier(0.6, 0, 0.4, 1);
    }
    .fx-btn-arrow-icon {
      position: absolute;
      right: -30px;
    }
    .fx-btn-arrow:hover .fx-btn-arrow-text {
      transform: translateX(-20px);
    }
    .fx-btn-arrow:hover .fx-btn-arrow-icon {
      transform: translateX(-44px);
    }
```
