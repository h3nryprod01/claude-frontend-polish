# CSSFX — Cards (8)

Apply the `fx-*` class. Full library: `../assets/cssfx.css`. Markup is a starting point; the CSS is authoritative.


## Glassmorphism

`fx-card-glass`

```html
<div class="fx-card-glass"></div>
```

```css
.fx-stage-aurora {
  background:
    radial-gradient(circle at 20% 20%, rgba(139,92,246,0.7), transparent 45%),
    radial-gradient(circle at 80% 30%, rgba(236,72,153,0.7), transparent 45%),
    radial-gradient(circle at 50% 80%, rgba(34,211,238,0.6), transparent 50%),
    #0b1020;
}
.fx-card-glass {
  position: relative;
  width: 260px;
  padding: 24px;
  border-radius: 18px;
  color: #fff;
  background: rgba(255,255,255,0.08);
  backdrop-filter: blur(14px);
  -webkit-backdrop-filter: blur(14px);
  border: 1px solid rgba(255,255,255,0.18);
  box-shadow: 0 12px 40px rgba(0,0,0,0.35);
}
.fx-card-glass h3 { font-size: 20px; font-weight: 700; margin: 8px 0 6px; }
.fx-card-glass p { font-size: 13px; opacity: 0.85; margin: 0 0 16px; line-height: 1.5; }
.fx-card-glass-badge {
  display: inline-block;
  font-size: 10px; font-weight: 700; letter-spacing: 1px;
  padding: 4px 10px;
  color: #1a103a;
  background: linear-gradient(135deg, #fde047, #f59e0b);
  border-radius: 999px;
}
.fx-card-glass-btn {
  border: none;
  cursor: pointer;
  padding: 10px 18px;
  font-weight: 600;
  color: #1a103a;
  background: rgba(255,255,255,0.9);
  border-radius: 10px;
  transition: transform 0.2s ease, background 0.2s ease;
}
.fx-card-glass-btn:hover { transform: translateY(-2px); background: #fff; }
```


## Spotlight Cursor

`fx-card-spotlight`

```html
<div class="fx-card-spotlight"></div>
```

```css
.fx-card-spotlight {
  position: relative;
  width: 260px;
  padding: 26px;
  border-radius: 16px;
  color: #e5e7eb;
  background: #0f172a;
  border: 1px solid rgba(255,255,255,0.08);
  overflow: hidden;
  cursor: pointer;
  transition: border-color 0.3s ease, transform 0.3s ease;
  --mx: 50%; --my: 50%;
}
.fx-card-spotlight::before {
  content: "";
  position: absolute;
  inset: 0;
  background: radial-gradient(180px circle at var(--mx) var(--my), rgba(168,85,247,0.25), transparent 60%);
  opacity: 0;
  transition: opacity 0.3s ease;
  pointer-events: none;
}
.fx-card-spotlight:hover { border-color: rgba(168,85,247,0.5); transform: translateY(-3px); }
.fx-card-spotlight:hover::before { opacity: 1; }
.fx-card-spotlight h3 { font-size: 18px; font-weight: 700; margin: 0 0 8px; color: #fff; position: relative; }
.fx-card-spotlight p { font-size: 13px; opacity: 0.7; margin: 0; position: relative; }
.fx-card-spotlight-cta {
  position: absolute;
  right: 22px; bottom: 22px;
  font-size: 20px;
  color: #a855f7;
  transition: transform 0.3s ease;
}
.fx-card-spotlight:hover .fx-card-spotlight-cta { transform: translateX(4px); }
```


## Flip Card

`fx-card-flip`

```html
<div class="fx-card-flip"></div>
```

```css
.fx-card-flip {
  width: 220px; height: 140px;
  perspective: 1000px;
  cursor: pointer;
}
.fx-card-flip-face {
  position: absolute;
  inset: 0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 6px;
  border-radius: 14px;
  backface-visibility: hidden;
  transition: transform 0.7s cubic-bezier(0.4, 0.2, 0.2, 1);
}
.fx-card-flip-front {
  background: linear-gradient(135deg, #8b5cf6, #ec4899);
  color: #fff;
}
.fx-card-flip-back {
  background: linear-gradient(135deg, #10b981, #06b6d4);
  color: #fff;
  transform: rotateY(180deg);
}
.fx-card-flip:hover .fx-card-flip-front { transform: rotateY(-180deg); }
.fx-card-flip:hover .fx-card-flip-back  { transform: rotateY(0); }
.fx-card-flip-icon { font-size: 32px; }
.fx-card-flip-face p { margin: 0; font-weight: 600; font-size: 14px; }
```


## Conic Neon Border

`fx-card-neon-border`

```html
<div class="fx-card-neon-border"></div>
```

```css
.fx-card-neon-border {
  position: relative;
  width: 240px;
  padding: 2px;
  border-radius: 16px;
  background: conic-gradient(from 0deg, #8b5cf6, #ec4899, #f59e0b, #22d3ee, #8b5cf6);
}
.fx-card-neon-border::before {
  content: "";
  position: absolute;
  inset: -100%;
  background: conic-gradient(from 0deg, transparent, #8b5cf6, #ec4899, #f59e0b, #22d3ee, transparent);
  animation: fx-neon-spin 4s linear infinite;
  z-index: -1;
}
.fx-card-neon-inner {
  position: relative;
  padding: 24px;
  border-radius: 14px;
  background: #0b1020;
  color: #fff;
  text-align: left;
}
.fx-card-neon-inner h3 { margin: 0 0 6px; font-size: 18px; font-weight: 700; }
.fx-card-neon-inner p { margin: 0; font-size: 13px; opacity: 0.7; }
@keyframes fx-neon-spin { to { transform: rotate(360deg); } }
```


## Holographic Foil

`fx-card-holo`

```html
<div class="fx-card-holo"><strong></strong></div>
```

```css
.fx-card-holo {
      position: relative;
      width: 220px;
      padding: 24px;
      border-radius: 16px;
      overflow: hidden;
      cursor: pointer;
      background: #0b1020;
      color: #fff;
      isolation: isolate;
      --mx: 50%;
      --my: 50%;
    }
    .fx-card-holo::before {
      content: "";
      position: absolute;
      inset: 0;
      background: radial-gradient(
        circle at var(--mx) var(--my),
        #ec4899,
        #8b5cf6,
        #22d3ee,
        #10b981,
        #f59e0b
      );
      filter: blur(20px);
      opacity: 0.7;
      transition: opacity 0.3s ease;
    }
    .fx-card-holo::after {
      content: "";
      position: absolute;
      inset: 1px;
      border-radius: 15px;
      background: linear-gradient(135deg, rgba(255,255,255,0.1), rgba(0,0,0,0.4));
      z-index: 0;
    }
    .fx-card-holo > * { position: relative; z-index: 1; }
    .fx-card-holo-label {
      display: inline-block;
      font-size: 10px; font-weight: 700;
      letter-spacing: 1.5px;
      padding: 3px 8px;
      border-radius: 4px;
      background: rgba(255,255,255,0.15);
      backdrop-filter: blur(4px);
    }
    .fx-card-holo strong {
      display: block;
      margin-top: 12px;
      font-size: 22px;
    }
```


## 3D Card Stack

`fx-card-stack`

```html
<div class="fx-card-stack"></div>
```

```css
.fx-card-stack {
      position: relative;
      width: 200px;
      height: 130px;
      cursor: pointer;
    }
    .fx-card-stack-card {
      position: absolute;
      inset: 0;
      border-radius: 12px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      gap: 4px;
      transition: transform 0.4s cubic-bezier(0.34, 1.56, 0.64, 1);
      backface-visibility: hidden;
    }
    .fx-card-stack-back {
      background: linear-gradient(135deg, #a855f7, #6366f1);
      transform: translateY(8px) scale(0.94);
      z-index: 1;
    }
    .fx-card-stack-mid {
      background: linear-gradient(135deg, #ec4899, #a855f7);
      transform: translateY(4px) scale(0.97);
      z-index: 2;
    }
    .fx-card-stack-front {
      background: linear-gradient(135deg, #f59e0b, #ec4899);
      color: #fff;
      z-index: 3;
      box-shadow: 0 12px 25px -10px rgba(236, 72, 153, 0.5);
    }
    .fx-card-stack-front strong {
      font-size: 18px;
      font-weight: 700;
    }
    .fx-card-stack-front span {
      font-size: 11px;
      opacity: 0.85;
    }
    .fx-card-stack:hover .fx-card-stack-back {
      transform: translateX(-60px) translateY(8px) rotate(-8deg);
    }
    .fx-card-stack:hover .fx-card-stack-mid {
      transform: translateX(0) translateY(4px) rotate(0);
    }
    .fx-card-stack:hover .fx-card-stack-front {
      transform: translateX(60px) rotate(8deg);
    }
```


## Pricing Card Hover

`fx-card-pricing`

```html
<div class="fx-card-pricing"></div>
```

```css
.fx-card-pricing {
      width: 220px;
      padding: 24px;
      border-radius: 16px;
      background: #fff;
      border: 1px solid #e5e7eb;
      box-shadow: 0 4px 12px rgba(0,0,0,0.06);
      transition: transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1), box-shadow 0.3s ease;
      cursor: pointer;
      color: #1f2937;
    }
    .fx-card-pricing:hover {
      transform: translateY(-8px);
      box-shadow: 0 24px 40px -12px rgba(139, 92, 246, 0.25);
    }
    .fx-card-pricing-tag {
      display: inline-block;
      font-size: 10px;
      font-weight: 700;
      letter-spacing: 1px;
      padding: 3px 10px;
      border-radius: 999px;
      background: linear-gradient(135deg, #8b5cf6, #ec4899);
      color: #fff;
    }
    .fx-card-pricing-price {
      font-size: 40px;
      font-weight: 800;
      margin: 12px 0 16px;
      color: #111827;
    }
    .fx-card-pricing-price span {
      font-size: 14px;
      font-weight: 500;
      color: #6b7280;
    }
    .fx-card-pricing ul {
      list-style: none;
      padding: 0;
      margin: 0 0 20px;
      font-size: 13px;
      color: #4b5563;
    }
    .fx-card-pricing li {
      padding: 4px 0;
    }
    .fx-card-pricing li::before {
      content: "✓ ";
      color: #10b981;
      font-weight: 700;
    }
    .fx-card-pricing button {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 8px;
      font-size: 14px;
      font-weight: 600;
      color: #fff;
      background: #1f2937;
      cursor: pointer;
      transition: background 0.2s ease;
    }
    .fx-card-pricing:hover button {
      background: linear-gradient(135deg, #8b5cf6, #ec4899);
    }
```


## Magnetic Pull

`fx-card-magnetic`

```html
<div class="fx-card-magnetic"><strong></strong></div>
```

```css
.fx-card-magnetic {
      width: 200px;
      height: 130px;
      padding: 24px;
      border-radius: 16px;
      background: linear-gradient(135deg, #0b1020, #1e1b4b);
      color: #fff;
      cursor: pointer;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      gap: 6px;
      transform: perspective(800px) rotateX(var(--rx, 0)) rotateY(var(--ry, 0));
      transition: transform 0.2s ease-out;
      box-shadow: 0 18px 35px -12px rgba(139, 92, 246, 0.5);
      border: 1px solid rgba(139, 92, 246, 0.3);
      transform-style: preserve-3d;
    }
    .fx-card-magnetic-label {
      font-size: 10px;
      font-weight: 700;
      letter-spacing: 2px;
      color: #8b5cf6;
    }
    .fx-card-magnetic strong {
      font-size: 20px;
      background: linear-gradient(90deg, #8b5cf6, #ec4899);
      -webkit-background-clip: text;
      background-clip: text;
      -webkit-text-fill-color: transparent;
    }
```
