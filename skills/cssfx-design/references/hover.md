# CSSFX — Hover (11)

Apply the `fx-*` class. Full library: `../assets/cssfx.css`. Markup is a starting point; the CSS is authoritative.


## Sliding Underline

`fx-hover-underline`

```html
<div class="fx-hover-underline"></div>
```

```css
.fx-hover-underline {
  position: relative;
  font-size: 18px;
  font-weight: 600;
  color: #1f2937;
  text-decoration: none;
  cursor: pointer;
  padding-bottom: 4px;
}
.fx-hover-underline::after {
  content: "";
  position: absolute;
  left: 0; bottom: 0;
  width: 100%; height: 2px;
  background: linear-gradient(90deg, #8b5cf6, #ec4899);
  transform: scaleX(0);
  transform-origin: left;
  transition: transform 0.35s ease;
}
.fx-hover-underline:hover { color: #8b5cf6; }
.fx-hover-underline:hover::after { transform: scaleX(1); }
```


## Zoom Reveal

`fx-hover-zoom`

```html
<div class="fx-hover-zoom"></div>
```

```css
.fx-hover-zoom {
  position: relative;
  width: 280px; height: 180px;
  border-radius: 14px;
  overflow: hidden;
  margin: 0;
  cursor: pointer;
  box-shadow: 0 14px 30px -10px rgba(0,0,0,0.4);
}
.fx-hover-zoom img {
  width: 100%; height: 100%;
  object-fit: cover;
  transition: transform 0.7s cubic-bezier(0.2, 0.8, 0.2, 1);
}
.fx-hover-zoom:hover img { transform: scale(1.12); }
.fx-hover-zoom figcaption {
  position: absolute;
  left: 0; right: 0; bottom: 0;
  padding: 16px;
  color: #fff;
  background: linear-gradient(transparent, rgba(0,0,0,0.8));
  transform: translateY(100%);
  transition: transform 0.4s ease;
  display: flex; flex-direction: column;
}
.fx-hover-zoom figcaption strong { font-size: 16px; }
.fx-hover-zoom figcaption span { font-size: 12px; opacity: 0.85; }
.fx-hover-zoom:hover figcaption { transform: translateY(0); }
```


## Icon Bounce

`fx-hover-icon-bounce`

```html
<div class="fx-hover-icon-bounce"></div>
```

```css
.fx-hover-icon-bounce {
  display: inline-flex; align-items: center; gap: 10px;
  padding: 12px 22px;
  font-size: 15px; font-weight: 600;
  color: #1f2937;
  background: #f3f4f6;
  border: 1px solid #e5e7eb;
  border-radius: 12px;
  cursor: pointer;
  transition: background 0.2s ease, box-shadow 0.2s ease;
}
.fx-hover-icon-bounce:hover { background: #fff; box-shadow: 0 8px 20px -8px rgba(0,0,0,0.15); }
.fx-hover-icon-bounce-icon {
  display: inline-block;
  font-size: 18px;
  transition: transform 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
}
.fx-hover-icon-bounce:hover .fx-hover-icon-bounce-icon { transform: translateY(-4px) rotate(-8deg); }
```


## 3D Tilt Card

`fx-hover-card-tilt`

```html
<div class="fx-hover-card-tilt"><div></div></div>
```

```css
.fx-hover-card-tilt {
      width: 220px; height: 140px;
      perspective: 800px;
    }
    .fx-hover-card-tilt .fx-hover-card-tild-inner,
    .fx-hover-card-tilt > div {
      width: 100%; height: 100%;
      display: flex; flex-direction: column;
      align-items: center; justify-content: center;
      gap: 6px;
      border-radius: 14px;
      background: linear-gradient(135deg, #a855f7, #ec4899);
      color: #fff;
      box-shadow: 0 18px 30px -10px rgba(168,85,247,0.5);
      transition: transform 0.15s ease-out;
      transform-style: preserve-3d;
      cursor: pointer;
    }
    .fx-hover-card-tilt .fx-hover-card-tild-inner h4,
    .fx-hover-card-tilt > div h4 { margin: 0; font-size: 18px; font-weight: 700; }
    .fx-hover-card-tilt .fx-hover-card-tild-inner p,
    .fx-hover-card-tilt > div p { margin: 0; font-size: 12px; opacity: 0.85; }
    .fx-hover-card-tilt:hover > div {
      transform: rotateX(15deg) rotateY(-15deg);
    }
```


## Slide & Swap

`fx-hover-text-swap`

```html
<div class="fx-hover-text-swap"></div>
```

```css
.fx-hover-text-swap {
      position: relative;
      overflow: hidden;
      padding: 12px 28px;
      font-size: 15px; font-weight: 600;
      color: #1f2937;
      background: #fbbf24;
      border: none;
      border-radius: 10px;
      cursor: pointer;
      height: 44px;
      display: inline-flex; align-items: center; justify-content: center;
    }
    .fx-hover-text-swap-default,
    .fx-hover-text-swap-hover {
      display: block;
      transition: transform 0.35s cubic-bezier(0.6, 0, 0.4, 1);
    }
    .fx-hover-text-swap-hover {
      position: absolute;
      left: 0; right: 0;
      top: 100%;
    }
    .fx-hover-text-swap:hover .fx-hover-text-swap-default {
      transform: translateY(-100%);
    }
    .fx-hover-text-swap:hover .fx-hover-text-swap-hover {
      transform: translateY(-100%);
    }
```


## Cursor Magnet

`fx-hover-magnet`

```html
<div class="fx-hover-magnet"></div>
```

```css
.fx-hover-magnet {
      width: 80px; height: 80px;
      border-radius: 50%;
      background: linear-gradient(135deg, #8b5cf6, #ec4899);
      transform: translate(0, 0);
      transition: transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
      box-shadow: 0 10px 25px -8px rgba(139,92,246,0.6);
      cursor: pointer;
    }
    .fx-hover-magnet:hover {
      transform: translate(calc(var(--x, 0) * 0.3), calc(var(--y, 0) * 0.3));
    }
```


## Shine Sweep Card

`fx-hover-shine-card`

```html
<div class="fx-hover-shine-card"></div>
```

```css
.fx-hover-shine-card {
      position: relative;
      width: 200px;
      height: 120px;
      border-radius: 14px;
      overflow: hidden;
      cursor: pointer;
    }
    .fx-hover-shine-card-inner {
      position: absolute;
      inset: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      background: linear-gradient(135deg, #6366f1, #8b5cf6);
      color: #fff;
      font-weight: 700;
      font-size: 20px;
      box-shadow: 0 12px 30px -10px rgba(99,102,241,0.5);
    }
    .fx-hover-shine-card::before {
      content: "";
      position: absolute;
      top: 0;
      left: -150%;
      width: 80%;
      height: 100%;
      background: linear-gradient(
        120deg,
        transparent,
        rgba(255,255,255,0.4),
        transparent
      );
      transform: skewX(-25deg);
      transition: left 0.7s ease;
      z-index: 1;
      pointer-events: none;
    }
    .fx-hover-shine-card:hover::before {
      left: 150%;
    }
```


## Stuck Note

`fx-hover-stuck`

```html
<div class="fx-hover-stuck"></div>
```

```css
.fx-hover-stuck {
      position: relative;
      width: 160px;
      height: 120px;
      padding: 24px;
      background: #fde047;
      color: #1f2937;
      border-radius: 4px;
      cursor: pointer;
      transition: transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1), box-shadow 0.3s ease;
      box-shadow:
        0 1px 1px rgba(0,0,0,0.15),
        0 10px 20px -10px rgba(0,0,0,0.25);
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      font-size: 18px;
    }
    .fx-hover-stuck:hover {
      transform: translateY(-6px) rotate(-3deg);
      box-shadow:
        0 1px 1px rgba(0,0,0,0.15),
        0 25px 30px -10px rgba(0,0,0,0.3);
    }
    .fx-hover-stuck-pin {
      position: absolute;
      top: 8px;
      left: 50%;
      transform: translateX(-50%);
      width: 10px;
      height: 10px;
      border-radius: 50%;
      background: radial-gradient(circle at 30% 30%, #fca5a5, #dc2626);
      box-shadow: 0 2px 4px rgba(0,0,0,0.3);
    }
```


## Water Ripple

`fx-hover-water`

```html
<div class="fx-hover-water"></div>
```

```css
.fx-hover-water {
      position: relative;
      padding: 14px 36px;
      font-size: 15px;
      font-weight: 600;
      color: #fff;
      background: linear-gradient(135deg, #06b6d4, #0ea5e9);
      border: none;
      border-radius: 999px;
      cursor: pointer;
      overflow: hidden;
      isolation: isolate;
    }
    .fx-hover-water::before {
      content: "";
      position: absolute;
      top: 50%;
      left: 50%;
      width: 0;
      height: 0;
      background: rgba(255, 255, 255, 0.4);
      border-radius: 50%;
      transform: translate(-50%, -50%);
      transition: width 0.6s ease, height 0.6s ease;
      z-index: -1;
    }
    .fx-hover-water:hover::before {
      width: 250%;
      height: 600%;
    }
    .fx-hover-water:active::before {
      transition: 0s;
      width: 0;
      height: 0;
    }
```


## Stack Reveal

`fx-hover-stack`

```html
<div class="fx-hover-stack"></div>
```

```css
.fx-hover-stack {
      position: relative;
      width: 200px;
      height: 120px;
      cursor: pointer;
    }
    .fx-hover-stack-layer,
    .fx-hover-stack-front {
      position: absolute;
      inset: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      border-radius: 12px;
      font-weight: 700;
      color: #fff;
      transition: transform 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
    }
    .fx-hover-stack-back {
      background: #6366f1;
      transform: translate(8px, 8px);
      z-index: 1;
    }
    .fx-hover-stack-mid {
      background: #8b5cf6;
      transform: translate(4px, 4px);
      z-index: 2;
    }
    .fx-hover-stack-front {
      background: linear-gradient(135deg, #ec4899, #f59e0b);
      z-index: 3;
      box-shadow: 0 8px 20px -8px rgba(236, 72, 153, 0.5);
    }
    .fx-hover-stack:hover .fx-hover-stack-back {
      transform: translate(20px, 20px) rotate(-4deg);
    }
    .fx-hover-stack:hover .fx-hover-stack-mid {
      transform: translate(10px, 10px) rotate(-2deg);
    }
    .fx-hover-stack:hover .fx-hover-stack-front {
      transform: translate(0, 0) rotate(0);
    }
```


## 3D Tile Flip

`fx-hover-tile-3d`

```html
<div class="fx-hover-tile-3d"></div>
```

```css
.fx-hover-tile-3d {
      width: 130px;
      height: 130px;
      perspective: 600px;
      cursor: pointer;
    }
    .fx-hover-tile-3d-inner {
      position: relative;
      width: 100%;
      height: 100%;
      transform-style: preserve-3d;
      transition: transform 0.7s cubic-bezier(0.4, 0.2, 0.2, 1);
    }
    .fx-hover-tile-3d:hover .fx-hover-tile-3d-inner {
      transform: rotateY(180deg);
    }
    .fx-hover-tile-3d-front,
    .fx-hover-tile-3d-back {
      position: absolute;
      inset: 0;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      color: #fff;
      border-radius: 12px;
      backface-visibility: hidden;
      font-size: 18px;
    }
    .fx-hover-tile-3d-front {
      background: linear-gradient(135deg, #8b5cf6, #ec4899);
    }
    .fx-hover-tile-3d-back {
      background: linear-gradient(135deg, #10b981, #06b6d4);
      transform: rotateY(180deg);
    }
```
