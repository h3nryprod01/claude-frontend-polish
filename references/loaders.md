# CSSFX — Loaders (18)

Apply the `fx-*` class. Full library: `../assets/cssfx.css`. Markup is a starting point; the CSS is authoritative.


## Dual Ring Spinner

`fx-loader-spinner`

```html
<div class="fx-loader-spinner"><span></span></div>
```

```css
.fx-loader-spinner {
  position: relative;
  width: 56px;
  height: 56px;
  border-radius: 50%;
  border: 3px solid transparent;
  border-top-color: #8b5cf6;
  border-right-color: #8b5cf6;
  animation: fx-spin 1s linear infinite;
}
.fx-loader-spinner span {
  position: absolute;
  inset: 6px;
  border-radius: 50%;
  border: 3px solid transparent;
  border-bottom-color: #ec4899;
  border-left-color: #ec4899;
  animation: fx-spin 0.7s linear reverse infinite;
}
@keyframes fx-spin { to { transform: rotate(360deg); } }
```


## Bouncing Dots

`fx-loader-dots`

```html
<div class="fx-loader-dots"><span></span><span></span><span></span></div>
```

```css
.fx-loader-dots { display: inline-flex; gap: 8px; }
.fx-loader-dots span {
  width: 14px; height: 14px;
  border-radius: 50%;
  background: #10b981;
  animation: fx-dots 1.2s ease-in-out infinite;
}
.fx-loader-dots span:nth-child(2) { animation-delay: 0.2s; background: #14b8a6; }
.fx-loader-dots span:nth-child(3) { animation-delay: 0.4s; background: #06b6d4; }
@keyframes fx-dots {
  0%, 60%, 100% { transform: translateY(0); opacity: 0.6; }
  30%           { transform: translateY(-12px); opacity: 1; }
}
```


## Pulse Ring

`fx-loader-pulse-ring`

```html
<div class="fx-loader-pulse-ring"></div>
```

```css
.fx-loader-pulse-ring {
  position: relative;
  width: 24px;
  height: 24px;
  border-radius: 50%;
  background: #f43f5e;
}
.fx-loader-pulse-ring::before,
.fx-loader-pulse-ring::after {
  content: "";
  position: absolute;
  inset: 0;
  border-radius: 50%;
  border: 2px solid #f43f5e;
  animation: fx-pulse-ring 1.6s ease-out infinite;
}
.fx-loader-pulse-ring::after { animation-delay: 0.8s; }
@keyframes fx-pulse-ring {
  0%   { transform: scale(1);   opacity: 0.8; }
  100% { transform: scale(3);   opacity: 0; }
}
```


## Equalizer Bars

`fx-loader-bars`

```html
<div class="fx-loader-bars"><span></span><span></span><span></span><span></span><span></span></div>
```

```css
.fx-loader-bars { display: inline-flex; gap: 5px; align-items: flex-end; height: 44px; }
.fx-loader-bars span {
  width: 7px;
  height: 100%;
  background: linear-gradient(180deg, #f59e0b, #ef4444);
  border-radius: 4px;
  animation: fx-bars 1s ease-in-out infinite;
}
.fx-loader-bars span:nth-child(2) { animation-delay: 0.15s; }
.fx-loader-bars span:nth-child(3) { animation-delay: 0.3s; }
.fx-loader-bars span:nth-child(4) { animation-delay: 0.45s; }
.fx-loader-bars span:nth-child(5) { animation-delay: 0.6s; }
@keyframes fx-bars {
  0%, 100% { transform: scaleY(0.3); }
  50%      { transform: scaleY(1); }
}
```


## Orbit

`fx-loader-orbit`

```html
<div class="fx-loader-orbit"><span></span><span></span></div>
```

```css
.fx-loader-orbit {
  position: relative;
  width: 64px;
  height: 64px;
}
.fx-loader-orbit::before {
  content: "";
  position: absolute;
  inset: 24px;
  border-radius: 50%;
  background: #fde047;
  box-shadow: 0 0 14px rgba(253, 224, 71, 0.8);
}
.fx-loader-orbit span {
  position: absolute;
  inset: 0;
  border-radius: 50%;
  border: 2px dashed rgba(168, 85, 247, 0.4);
  animation: fx-orbit 2.4s linear infinite;
}
.fx-loader-orbit span::after {
  content: "";
  position: absolute;
  top: -6px;
  left: 50%;
  width: 12px; height: 12px;
  margin-left: -6px;
  border-radius: 50%;
  background: #a855f7;
}
.fx-loader-orbit span:nth-child(2) {
  inset: 12px;
  animation-duration: 1.6s;
  animation-direction: reverse;
  border-color: rgba(34, 211, 238, 0.4);
}
.fx-loader-orbit span:nth-child(2)::after { background: #22d3ee; }
@keyframes fx-orbit { to { transform: rotate(360deg); } }
```


## Folding Cube

`fx-loader-cube`

```html
<div class="fx-loader-cube"><span></span><span></span><span></span><span></span></div>
```

```css
.fx-loader-cube {
  width: 44px; height: 44px;
  transform: rotateZ(45deg);
  position: relative;
}
.fx-loader-cube span {
  display: block;
  position: absolute;
  width: 20px; height: 20px;
  background: #22d3ee;
  animation: fx-cube-fold 2.4s infinite linear;
}
.fx-loader-cube span:nth-child(1) { top: 0; left: 0; }
.fx-loader-cube span:nth-child(2) { top: 0; right: 0; animation-delay: 0.6s; background: #8b5cf6; }
.fx-loader-cube span:nth-child(3) { bottom: 0; left: 0; animation-delay: 1.2s; background: #ec4899; }
.fx-loader-cube span:nth-child(4) { bottom: 0; right: 0; animation-delay: 1.8s; background: #f59e0b; }
@keyframes fx-cube-fold {
  0%, 10%    { transform: perspective(120px) rotateX(-180deg); opacity: 0; }
  25%, 75%   { transform: perspective(120px) rotateX(0deg);    opacity: 1; }
  90%, 100%  { transform: perspective(120px) rotateY(180deg);  opacity: 0; }
}
```


## Clock Wiper

`fx-loader-clock`

```html
<div class="fx-loader-clock"></div>
```

```css
.fx-loader-clock {
      position: relative;
      width: 52px; height: 52px;
      border-radius: 50%;
      background: conic-gradient(#8b5cf6 0deg, rgba(139,92,246,0.15) 0deg);
      mask: radial-gradient(circle at center, transparent 56%, #000 57%);
      -webkit-mask: radial-gradient(circle at center, transparent 56%, #000 57%);
      animation: fx-clock-wipe 1.4s linear infinite;
    }
    @keyframes fx-clock-wipe {
      0%   { background: conic-gradient(#8b5cf6 0deg,   rgba(139,92,246,0.15) 0deg);   }
      50%  { background: conic-gradient(#8b5cf6 180deg, rgba(139,92,246,0.15) 180deg); }
      100% { background: conic-gradient(#8b5cf6 360deg, rgba(139,92,246,0.15) 360deg); }
    }
```


## Typing Dots

`fx-loader-typewriter`

```html
<div class="fx-loader-typewriter"></div>
```

```css
.fx-loader-typewriter {
      display: inline-block;
      padding: 8px 14px;
      font-family: ui-monospace, monospace;
      font-size: 15px; font-weight: 600;
      color: #fff;
      background: #0b1020;
      border-radius: 8px;
      border-right: 2px solid #8b5cf6;
      white-space: nowrap;
      overflow: hidden;
      width: 0;
      animation:
        fx-typewriter 2.4s steps(9) infinite,
        fx-caret 0.7s step-end infinite;
    }
    @keyframes fx-typewriter {
      0%, 90%, 100% { width: 0; }
      40%, 60%      { width: 9ch; }
    }
    @keyframes fx-caret {
      50% { border-color: transparent; }
    }
```


## Infinity Loop

`fx-loader-infinity`

```html
<div class="fx-loader-infinity"><span></span><span></span><span></span></div>
```

```css
.fx-loader-infinity {
      position: relative;
      width: 80px; height: 40px;
    }
    .fx-loader-infinity span {
      position: absolute;
      top: 50%; left: 50%;
      width: 10px; height: 10px;
      margin: -5px 0 0 -5px;
      border-radius: 50%;
      background: #f43f5e;
      box-shadow: 0 0 12px rgba(244,63,94,0.7);
      offset-path: path("M 40,20 C 40,5 5,5 5,20 C 5,35 40,35 40,20 C 40,5 75,5 75,20 C 75,35 40,35 40,20 Z");
      animation: fx-infinity 2.2s linear infinite;
    }
    @keyframes fx-infinity {
      to { offset-distance: 100%; }
    }
```


## Circle Fade

`fx-loader-circle-fade`

```html
<div class="fx-loader-circle-fade"><span></span><span></span><span></span><span></span><span></span><span></span></div>
```

```css
.fx-loader-circle-fade {
      position: relative;
      width: 48px; height: 48px;
    }
    .fx-loader-circle-fade span {
      position: absolute;
      width: 100%; height: 100%;
      transform: rotate(calc(var(--i, 0) * 45deg));
    }
    .fx-loader-circle-fade span::after {
      content: "";
      position: absolute;
      top: 0; left: 50%;
      width: 6px; height: 6px;
      margin-left: -3px;
      border-radius: 50%;
      background: #8b5cf6;
      animation: fx-circle-fade 1s ease-in-out infinite;
    }
    .fx-loader-circle-fade span:nth-child(1) { --i: 0; }
    .fx-loader-circle-fade span:nth-child(2) { --i: 1; }
    .fx-loader-circle-fade span:nth-child(3) { --i: 2; }
    .fx-loader-circle-fade span:nth-child(4) { --i: 3; }
    .fx-loader-circle-fade span:nth-child(5) { --i: 4; }
    .fx-loader-circle-fade span:nth-child(6) { --i: 5; }
    .fx-loader-circle-fade span:nth-child(7) { --i: 6; }
    .fx-loader-circle-fade span:nth-child(8) { --i: 7; }
    .fx-loader-circle-fade span:nth-child(2)::after { animation-delay: 0.12s; }
    .fx-loader-circle-fade span:nth-child(3)::after { animation-delay: 0.24s; }
    .fx-loader-circle-fade span:nth-child(4)::after { animation-delay: 0.36s; }
    .fx-loader-circle-fade span:nth-child(5)::after { animation-delay: 0.48s; }
    .fx-loader-circle-fade span:nth-child(6)::after { animation-delay: 0.60s; }
    .fx-loader-circle-fade span:nth-child(7)::after { animation-delay: 0.72s; }
    .fx-loader-circle-fade span:nth-child(8)::after { animation-delay: 0.84s; }
    @keyframes fx-circle-fade {
      0%, 100% { opacity: 0.2; transform: scale(0.8); }
      50%      { opacity: 1;   transform: scale(1.2); }
    }
```


## Radar Sweep

`fx-loader-radar`

```html
<div class="fx-loader-radar"></div>
```

```css
.fx-loader-radar {
      position: relative;
      width: 90px;
      height: 90px;
      border-radius: 50%;
      background:
        radial-gradient(circle, rgba(16,185,129,0.15) 0%, transparent 70%),
        repeating-conic-gradient(rgba(16,185,129,0.1) 0deg 30deg, transparent 30deg 60deg);
      border: 2px solid rgba(16,185,129,0.3);
      overflow: hidden;
    }
    .fx-loader-radar::before {
      content: "";
      position: absolute;
      inset: 0;
      border-radius: 50%;
      background: conic-gradient(from 0deg, rgba(16,185,129,0.6), transparent 60deg);
      animation: fx-radar-sweep 2.5s linear infinite;
    }
    .fx-loader-radar-blip {
      position: absolute;
      width: 6px; height: 6px;
      left: var(--bx); top: var(--by);
      transform: translate(-50%, -50%);
      border-radius: 50%;
      background: #10b981;
      box-shadow: 0 0 8px #10b981;
      animation: fx-radar-blip var(--bd, 1s) ease-in-out infinite;
    }
    @keyframes fx-radar-sweep { to { transform: rotate(360deg); } }
    @keyframes fx-radar-blip {
      0%, 80% { opacity: 0.2; }
      40%     { opacity: 1; }
    }
```


## Circular Progress

`fx-loader-progress-circular`

```html
<div class="fx-loader-progress-circular"><span></span><span></span><span></span></div>
```

```css
.fx-loader-progress-circular {
      position: relative;
      width: 64px;
      height: 64px;
      border-radius: 50%;
      background: conic-gradient(#8b5cf6 0deg, #ec4899 270deg, rgba(139,92,246,0.15) 270deg);
      display: flex;
      align-items: center;
      justify-content: center;
      animation: fx-circ-spin 2s linear infinite;
    }
    .fx-loader-progress-circular::before {
      content: "";
      position: absolute;
      inset: 6px;
      border-radius: 50%;
      background: var(--background, #0b1020);
    }
    .fx-loader-progress-circular span {
      position: relative;
      z-index: 1;
      font-size: 11px;
      font-weight: 700;
      color: #fff;
      font-variant-numeric: tabular-nums;
    }
    @keyframes fx-circ-spin {
      to { transform: rotate(360deg); }
    }
```


## Bouncing Ball

`fx-loader-bouncing`

```html
<div class="fx-loader-bouncing"></div>
```

```css
.fx-loader-bouncing {
      position: relative;
      width: 60px;
      height: 60px;
    }
    .fx-loader-bouncing-ball {
      position: absolute;
      top: 0;
      left: 50%;
      width: 18px;
      height: 18px;
      margin-left: -9px;
      border-radius: 50%;
      background: linear-gradient(135deg, #8b5cf6, #ec4899);
      animation: fx-ball-bounce 0.9s cubic-bezier(0.5, 0.05, 1, 0.5) infinite alternate;
    }
    .fx-loader-bouncing-shadow {
      position: absolute;
      bottom: 0;
      left: 50%;
      width: 24px;
      height: 6px;
      margin-left: -12px;
      border-radius: 50%;
      background: rgba(139, 92, 246, 0.3);
      filter: blur(3px);
      animation: fx-ball-shadow 0.9s cubic-bezier(0.5, 0.05, 1, 0.5) infinite alternate;
    }
    @keyframes fx-ball-bounce {
      0%   { transform: translateY(0); }
      100% { transform: translateY(36px); }
    }
    @keyframes fx-ball-shadow {
      0%   { transform: scale(1.5); opacity: 0.3; }
      100% { transform: scale(0.6); opacity: 0.6; }
    }
```


## Hexagon Pulse

`fx-loader-hexagon`

```html
<div class="fx-loader-hexagon"><span></span><span></span><span></span><span></span><span></span><span></span></div>
```

```css
.fx-loader-hexagon {
      display: inline-flex;
      gap: 8px;
    }
    .fx-loader-hexagon span {
      width: 16px;
      height: 18px;
      background: linear-gradient(180deg, #10b981, #06b6d4);
      clip-path: polygon(50% 0%, 100% 25%, 100% 75%, 50% 100%, 0% 75%, 0% 25%);
      animation: fx-hex-pulse 1.4s ease-in-out infinite;
    }
    .fx-loader-hexagon span:nth-child(2) { animation-delay: 0.15s; background: linear-gradient(180deg, #06b6d4, #8b5cf6); }
    .fx-loader-hexagon span:nth-child(3) { animation-delay: 0.3s; background: linear-gradient(180deg, #8b5cf6, #ec4899); }
    .fx-loader-hexagon span:nth-child(4) { animation-delay: 0.45s; background: linear-gradient(180deg, #ec4899, #f59e0b); }
    .fx-loader-hexagon span:nth-child(5) { animation-delay: 0.6s; background: linear-gradient(180deg, #f59e0b, #10b981); }
    .fx-loader-hexagon span:nth-child(6) { animation-delay: 0.75s; }
    @keyframes fx-hex-pulse {
      0%, 100% { transform: scale(0.7); opacity: 0.4; }
      50%      { transform: scale(1.1); opacity: 1; }
    }
```


## Battery Charge

`fx-loader-battery`

```html
<div class="fx-loader-battery"></div>
```

```css
.fx-loader-battery {
      display: inline-flex;
      align-items: center;
      gap: 2px;
    }
    .fx-loader-battery-body {
      width: 44px;
      height: 22px;
      border: 2px solid #1f2937;
      border-radius: 4px;
      padding: 2px;
      position: relative;
      overflow: hidden;
      background: #fff;
    }
    .fx-loader-battery-fill {
      height: 100%;
      width: 0%;
      background: linear-gradient(90deg, #10b981, #34d399);
      border-radius: 2px;
      animation: fx-battery-charge 2s ease-in-out infinite;
    }
    .fx-loader-battery-tip {
      width: 3px;
      height: 10px;
      background: #1f2937;
      border-radius: 0 2px 2px 0;
    }
    @keyframes fx-battery-charge {
      0%   { width: 0%;   background: linear-gradient(90deg, #ef4444, #f87171); }
      50%  { width: 60%;  background: linear-gradient(90deg, #f59e0b, #fbbf24); }
      100% { width: 100%; background: linear-gradient(90deg, #10b981, #34d399); }
    }
```


## Progress Bar

`fx-loader-progress-bar`

```html
<div class="fx-loader-progress-bar"><span></span><span></span><span></span></div>
```

```css
.fx-loader-progress-bar {
      width: 220px;
      height: 6px;
      background: #e5e7eb;
      border-radius: 999px;
      overflow: hidden;
      position: relative;
    }
    .fx-loader-progress-bar span {
      position: absolute;
      top: 0;
      left: -40%;
      width: 40%;
      height: 100%;
      border-radius: 999px;
      background: linear-gradient(
        90deg,
        transparent,
        #8b5cf6,
        #ec4899,
        transparent
      );
      animation: fx-progress-slide 1.4s ease-in-out infinite;
    }
    @keyframes fx-progress-slide {
      0%   { left: -40%; }
      100% { left: 100%; }
    }
```


## Book Flip

`fx-loader-book`

```html
<div class="fx-loader-book"></div>
```

```css
.fx-loader-book {
      position: relative;
      width: 50px;
      height: 36px;
      perspective: 200px;
    }
    .fx-loader-book-page {
      position: absolute;
      inset: 0;
      background: linear-gradient(90deg, #8b5cf6, #ec4899);
      transform-origin: left center;
      transform-style: preserve-3d;
      animation: fx-book-flip 2s ease-in-out infinite;
      border-radius: 0 4px 4px 0;
    }
    .fx-loader-book-page:nth-child(2) { animation-delay: 0.25s; opacity: 0.85; }
    .fx-loader-book-page:nth-child(3) { animation-delay: 0.5s; opacity: 0.7; }
    .fx-loader-book-page:nth-child(4) { animation-delay: 0.75s; opacity: 0.55; }
    @keyframes fx-book-flip {
      0%, 100% { transform: rotateY(0deg); }
      50%      { transform: rotateY(-160deg); }
    }
```


## Multi-Ring Spin

`fx-loader-circle-spin`

```html
<div class="fx-loader-circle-spin"></div>
```

```css
.fx-loader-circle-spin {
      position: relative;
      width: 60px;
      height: 60px;
    }
    .fx-loader-circle-spin-ring {
      position: absolute;
      border-radius: 50%;
      border: 2px solid transparent;
      animation: fx-circle-spin 1.5s linear infinite;
    }
    .fx-loader-circle-spin-ring:nth-child(1) {
      inset: 0;
      border-top-color: #8b5cf6;
      border-right-color: #8b5cf6;
    }
    .fx-loader-circle-spin-ring:nth-child(2) {
      inset: 8px;
      border-top-color: #ec4899;
      border-left-color: #ec4899;
      animation-duration: 2s;
      animation-direction: reverse;
    }
    .fx-loader-circle-spin-ring:nth-child(3) {
      inset: 16px;
      border-top-color: #22d3ee;
      border-bottom-color: #22d3ee;
      animation-duration: 1s;
    }
    @keyframes fx-circle-spin {
      to { transform: rotate(360deg); }
    }
```
