# CSSFX — Text (17)

Apply the `fx-*` class. Full library: `../assets/cssfx.css`. Markup is a starting point; the CSS is authoritative.


## Animated Gradient

`fx-text-gradient`

```html
<h3 class="fx-text-gradient text-2xl font-extrabold">gorgeous CSS</h3>
```

```css
.fx-stage-dark { background: #0b1020; }
.fx-text-gradient {
  margin: 0;
  font-size: 40px;
  font-weight: 800;
  letter-spacing: -0.5px;
  background: linear-gradient(90deg, #8b5cf6, #ec4899, #f59e0b, #22d3ee, #8b5cf6);
  background-size: 300% 100%;
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
  animation: fx-grad-flow 6s linear infinite;
}
@keyframes fx-grad-flow {
  to { background-position: 300% 50%; }
}
```


## Glitch

`fx-text-glitch`

```html
<span class="fx-text-glitch">Gorgeous</span>
```

```css
.fx-text-glitch {
  position: relative;
  margin: 0;
  font-size: 44px;
  font-weight: 800;
  color: #fff;
  font-family: ui-monospace, SFMono-Regular, Menlo, monospace;
  letter-spacing: 4px;
}
.fx-text-glitch::before,
.fx-text-glitch::after {
  content: attr(data-text);
  position: absolute;
  inset: 0;
  background: #0b1020;
  overflow: hidden;
}
.fx-text-glitch::before {
  color: #22d3ee;
  animation: fx-glitch-1 2s infinite linear alternate-reverse;
  clip-path: polygon(0 0, 100% 0, 100% 33%, 0 33%);
}
.fx-text-glitch::after {
  color: #ec4899;
  animation: fx-glitch-2 1.4s infinite linear alternate-reverse;
  clip-path: polygon(0 67%, 100% 67%, 100% 100%, 0 100%);
}
@keyframes fx-glitch-1 {
  0%   { transform: translate(0); }
  20%  { transform: translate(-3px, 1px); }
  40%  { transform: translate(3px, -1px); }
  60%  { transform: translate(-2px, -1px); }
  80%  { transform: translate(2px, 1px); }
  100% { transform: translate(0); }
}
@keyframes fx-glitch-2 {
  0%, 100% { transform: translate(0); }
  50%      { transform: translate(4px, -2px); }
}
```


## Neon Flicker

`fx-text-neon`

```html
<span class="fx-text-neon">Gorgeous</span>
```

```css
.fx-text-neon {
  margin: 0;
  font-size: 56px;
  font-weight: 800;
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 6px;
  text-shadow:
    0 0 6px #fff,
    0 0 14px #fff,
    0 0 28px #ec4899,
    0 0 60px #ec4899,
    0 0 90px #ec4899;
  animation: fx-flicker 3.2s infinite alternate;
}
@keyframes fx-flicker {
  0%, 19%, 21%, 23%, 25%, 54%, 56%, 100% {
    text-shadow:
      0 0 6px #fff, 0 0 14px #fff,
      0 0 28px #ec4899, 0 0 60px #ec4899, 0 0 90px #ec4899;
    opacity: 1;
  }
  20%, 24%, 55% {
    text-shadow: none;
    opacity: 0.5;
  }
}
```


## Shimmer

`fx-text-shimmer`

```html
<h2 class="fx-text-shimmer">Loading experience</h2>
```

```css
.fx-text-shimmer {
  margin: 0;
  font-size: 36px;
  font-weight: 800;
  letter-spacing: -0.5px;
  background: linear-gradient(90deg, #475569 0%, #475569 40%, #fff 50%, #475569 60%, #475569 100%);
  background-size: 200% 100%;
  -webkit-background-clip: text;
  background-clip: text;
  color: transparent;
  animation: fx-shimmer-text 2.2s linear infinite;
}
@keyframes fx-shimmer-text {
  to { background-position: -200% 50%; }
}
```


## Layered 3D

`fx-text-3d`

```html
<span class="fx-text-3d">Gorgeous</span>
```

```css
.fx-text-3d {
  margin: 0;
  font-size: 56px;
  font-weight: 900;
  letter-spacing: 2px;
  color: #fff;
  text-shadow:
    1px 1px 0 #cbd5e1,
    2px 2px 0 #cbd5e1,
    3px 3px 0 #cbd5e1,
    4px 4px 0 #94a3b8,
    5px 5px 0 #94a3b8,
    6px 6px 0 #64748b,
    7px 7px 0 #64748b,
    8px 8px 0 #475569,
    9px 9px 0 #334155,
    10px 10px 18px rgba(0,0,0,0.35);
}
```


## Typewriter

`fx-text-typewriter`

```html
<span class="fx-text-typewriter">Gorgeous</span>
```

```css
.fx-stage-dark { background: #0b1020; }
    .fx-text-typewriter {
      margin: 0;
      font-size: 38px;
      font-weight: 700;
      font-family: ui-monospace, monospace;
      color: #22d3ee;
      overflow: hidden;
      white-space: nowrap;
      border-right: 3px solid #22d3ee;
      width: 13ch;
      animation:
        fx-tw-type 3s steps(13) infinite alternate,
        fx-tw-caret 0.7s step-end infinite;
    }
    @keyframes fx-tw-type {
      0%   { width: 0; }
      60%, 100% { width: 13ch; }
    }
    @keyframes fx-tw-caret {
      50% { border-color: transparent; }
    }
```


## Wave Letters

`fx-text-wave`

```html
<span class="fx-text-wave"><span></span></span>
```

```css
.fx-text-wave {
      margin: 0;
      font-size: 44px;
      font-weight: 800;
      letter-spacing: 1px;
      color: #8b5cf6;
    }
    .fx-text-wave span {
      display: inline-block;
      animation: fx-wave 1.6s ease-in-out infinite;
      animation-delay: calc(var(--i) * 0.1s);
    }
    @keyframes fx-wave {
      0%, 60%, 100% { transform: translateY(0); }
      30%           { transform: translateY(-16px); }
    }
```


## Rainbow Cycle

`fx-text-rainbow`

```html
<span class="fx-text-rainbow"><span></span></span>
```

```css
.fx-text-rainbow {
      margin: 0;
      font-size: 56px;
      font-weight: 900;
      letter-spacing: 4px;
    }
    .fx-text-rainbow span {
      display: inline-block;
      color: hsl(calc(var(--i) * 60deg) 80% 60%);
      animation: fx-rainbow 4s linear infinite;
      animation-delay: calc(var(--i) * -0.4s);
    }
    @keyframes fx-rainbow {
      to { filter: hue-rotate(360deg); }
    }
```


## Fire Glow

`fx-text-fire`

```html
<span class="fx-text-fire">Gorgeous</span>
```

```css
.fx-stage-dark { background: #0b1020; }
    .fx-text-fire {
      margin: 0;
      font-size: 64px;
      font-weight: 900;
      letter-spacing: 4px;
      color: #fff;
      text-shadow:
        0 -2px 4px #fff,
        0 -5px 8px #fde047,
        0 -10px 14px #fb923c,
        0 -18px 22px #ef4444,
        0 -25px 30px #b91c1c;
      animation: fx-fire-flicker 0.18s infinite alternate;
    }
    @keyframes fx-fire-flicker {
      0%   { filter: hue-rotate(0deg)   brightness(1);   }
      100% { filter: hue-rotate(-10deg) brightness(1.1); }
    }
```


## Outline Reveal

`fx-text-stroke`

```html
<span class="fx-text-stroke">Gorgeous</span>
```

```css
.fx-stage-dark { background: #0b1020; }
    .fx-text-stroke {
      margin: 0;
      font-size: 56px;
      font-weight: 900;
      letter-spacing: 6px;
      color: transparent;
      -webkit-text-stroke: 2px #22d3ee;
      animation: fx-stroke-pulse 3s ease-in-out infinite;
    }
    @keyframes fx-stroke-pulse {
      0%, 100% { -webkit-text-stroke-color: #22d3ee; filter: drop-shadow(0 0 6px rgba(34,211,238,0.4)); }
      50%      { -webkit-text-stroke-color: #ec4899; filter: drop-shadow(0 0 12px rgba(236,72,153,0.6)); }
    }
```


## Split Reveal

`fx-text-split`

```html
<span class="fx-text-split"><span></span></span>
```

```css
.fx-stage-dark { background: #0b1020; }
    .fx-text-split {
      margin: 0;
      font-size: 48px;
      font-weight: 900;
      letter-spacing: 2px;
      color: #fbbf24;
    }
    .fx-text-split span {
      display: inline-block;
      animation: fx-split 2.5s ease-in-out infinite;
      animation-delay: calc(var(--i) * 0.1s);
    }
    @keyframes fx-split {
      0%, 100% { transform: translateY(0) rotate(0); color: #fbbf24; }
      50%      { transform: translateY(-10px) rotate(8deg); color: #ec4899; }
    }
```


## Mask Reveal

`fx-text-reveal-mask`

```html
<span class="fx-text-reveal-mask">Gorgeous</span>
```

```css
.fx-stage-dark { background: #0b1020; }
    .fx-text-reveal-mask {
      position: relative;
      margin: 0;
      font-size: 56px;
      font-weight: 900;
      letter-spacing: 4px;
      color: rgba(255,255,255,0.1);
    }
    .fx-text-reveal-mask::before {
      content: attr(data-text);
      position: absolute;
      inset: 0;
      color: #fff;
      background: linear-gradient(90deg, #8b5cf6, #ec4899, #f59e0b);
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
      clip-path: inset(0 100% 0 0);
      animation: fx-mask-reveal 2.5s ease-in-out infinite;
    }
    @keyframes fx-mask-reveal {
      0%, 100% { clip-path: inset(0 100% 0 0); }
      50%      { clip-path: inset(0 0 0 0); }
    }
```


## Fade Word Cycle

`fx-text-fade-cycle`

```html
<span class="fx-text-fade-cycle">Gorgeous</span>
```

```css
.fx-stage-dark { background: #0b1020; }
    .fx-text-fade-cycle {
      margin: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 6px;
      font-size: 36px;
      font-weight: 800;
      color: #94a3b8;
      text-align: center;
    }
    .fx-text-fade-cycle-words {
      position: relative;
      height: 1.2em;
      width: 100%;
      display: block;
    }
    .fx-text-fade-cycle-words span {
      position: absolute;
      top: 0;
      left: 50%;
      transform: translateX(-50%);
      width: 100%;
      background: linear-gradient(90deg, #8b5cf6, #ec4899, #f59e0b);
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
      opacity: 0;
      animation: fx-fade-cycle 6s linear infinite;
      animation-delay: calc(var(--i) * 2s);
    }
    @keyframes fx-fade-cycle {
      0%, 33%, 100% { opacity: 0; transform: translateX(-50%) translateY(15px); }
      8%, 25%       { opacity: 1; transform: translateX(-50%) translateY(0); }
    }
```


## Marker Highlight

`fx-text-marker`

```html
<span class="fx-text-marker"><span></span></span>
```

```css
.fx-text-marker {
      margin: 0;
      font-size: 44px;
      font-weight: 800;
      color: #1f2937;
    }
    .fx-text-marker span {
      position: relative;
      display: inline-block;
      z-index: 1;
    }
    .fx-text-marker span::before {
      content: "";
      position: absolute;
      left: -4px;
      right: -4px;
      bottom: 4px;
      height: 18px;
      background: linear-gradient(90deg, #fde047, #fbbf24);
      z-index: -1;
      border-radius: 3px;
      transform: scaleX(0);
      transform-origin: left;
      animation: fx-marker-draw 2.5s ease-in-out infinite;
    }
    @keyframes fx-marker-draw {
      0%, 100% { transform: scaleX(0); transform-origin: left; }
      40%      { transform: scaleX(1); transform-origin: left; }
      60%      { transform: scaleX(1); transform-origin: right; }
      100%     { transform: scaleX(0); transform-origin: right; }
    }
```


## Typed Rotator

`fx-text-typing-rotator`

```html
<span class="fx-text-typing-rotator">Gorgeous</span>
```

```css
.fx-stage-dark { background: #0b1020; }
    .fx-text-typing-rotator {
      display: inline-flex;
      align-items: center;
      gap: 2px;
      font-size: 32px;
      font-weight: 700;
      color: #fff;
      font-family: ui-monospace, monospace;
    }
    .fx-text-typing-rotator-text {
      background: linear-gradient(90deg, #8b5cf6, #ec4899, #f59e0b);
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
      animation: fx-typing-cycle 8s steps(1) infinite;
    }
    .fx-text-typing-rotator-cursor {
      color: #22d3ee;
      animation: fx-typing-caret 0.8s step-end infinite;
    }
    /* Cycles through 4 words */
    @keyframes fx-typing-cycle {
      0%   { width: 0ch; }
      /* "design" */
      4%   { width: 0ch; }
      20%  { width: 6ch; }
      25%  { width: 6ch; }
      /* erase */
      29%  { width: 0ch; }
      /* "code" */
      33%  { width: 0ch; }
      45%  { width: 4ch; }
      50%  { width: 4ch; }
      54%  { width: 0ch; }
      /* "ship" */
      58%  { width: 0ch; }
      70%  { width: 4ch; }
      75%  { width: 4ch; }
      79%  { width: 0ch; }
      /* "iterate" */
      83%  { width: 0ch; }
      95%  { width: 8ch; }
      100% { width: 0ch; }
    }
    /* Set the text via gradient-position trick — using overflow hidden */
    .fx-text-typing-rotator-text {
      display: inline-block;
      overflow: hidden;
      white-space: nowrap;
      vertical-align: bottom;
      width: 0;
      /* Visual content — fallback */
      position: relative;
    }
    .fx-text-typing-rotator-text::before {
      content: "design / code / ship / iterate";
      visibility: visible;
    }
    @keyframes fx-typing-caret {
      50% { opacity: 0; }
    }
```


## 3D Rotating Cube

`fx-text-3d-cube-scene`

```html
<span class="fx-text-3d-cube-scene">Gorgeous</span>
```

```css
.fx-stage-dark { background: #0b1020; }
    .fx-text-3d-cube-scene {
      width: 100px;
      height: 40px;
      perspective: 400px;
    }
    .fx-text-3d-cube {
      position: relative;
      width: 100%;
      height: 100%;
      transform-style: preserve-3d;
      animation: fx-cube-rotate 8s linear infinite;
    }
    .fx-text-3d-cube-face {
      position: absolute;
      width: 100px;
      height: 40px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 18px;
      font-weight: 800;
      color: #fff;
      background: linear-gradient(135deg, #8b5cf6, #ec4899);
      border: 1px solid rgba(255,255,255,0.2);
    }
    .fx-text-3d-cube-front  { transform: translateZ(50px); }
    .fx-text-3d-cube-back   { transform: rotateY(180deg) translateZ(50px); }
    .fx-text-3d-cube-right  { transform: rotateY(90deg) translateZ(50px); }
    .fx-text-3d-cube-left   { transform: rotateY(-90deg) translateZ(50px); }
    @keyframes fx-cube-rotate {
      0%   { transform: rotateY(0deg) rotateX(-10deg); }
      100% { transform: rotateY(360deg) rotateX(-10deg); }
    }
```


## Glow Pulse

`fx-text-glow-pulse`

```html
<span class="fx-text-glow-pulse">Gorgeous</span>
```

```css
.fx-stage-dark { background: #0b1020; }
    .fx-text-glow-pulse {
      margin: 0;
      font-size: 80px;
      font-weight: 900;
      letter-spacing: -2px;
      color: #fff;
      text-transform: lowercase;
      animation: fx-glow-pulse 2s ease-in-out infinite;
    }
    @keyframes fx-glow-pulse {
      0%, 100% {
        text-shadow:
          0 0 8px rgba(139, 92, 246, 0.6),
          0 0 16px rgba(139, 92, 246, 0.4),
          0 0 32px rgba(236, 72, 153, 0.3);
      }
      50% {
        text-shadow:
          0 0 16px rgba(139, 92, 246, 0.9),
          0 0 32px rgba(139, 92, 246, 0.7),
          0 0 64px rgba(236, 72, 153, 0.6),
          0 0 96px rgba(236, 72, 153, 0.4);
      }
    }
```
