# CSSFX — Borders (4)

Apply the `fx-*` class. Full library: `../assets/cssfx.css`. Markup is a starting point; the CSS is authoritative.


## Gradient Border

`fx-border-gradient`

```html
<div class="fx-border-gradient"></div>
```

```css
.fx-border-gradient {
  padding: 28px 36px;
  font-size: 16px; font-weight: 600;
  color: #1f2937;
  border: 3px solid;
  border-image: linear-gradient(120deg, #8b5cf6, #ec4899, #f59e0b, #22d3ee) 1;
  border-radius: 8px;
  background: #fff;
  animation: fx-border-hue 6s linear infinite;
}
@keyframes fx-border-hue {
  to { filter: hue-rotate(360deg); }
}
```


## Corner Brackets

`fx-border-corners`

```html
<div class="fx-border-corners"></div>
```

```css
.fx-border-corners {
  position: relative;
  width: 200px; height: 120px;
  display: flex; align-items: center; justify-content: center;
  color: #22d3ee;
  font-family: ui-monospace, monospace;
  font-weight: 700;
  letter-spacing: 2px;
  background: rgba(34,211,238,0.04);
}
.fx-border-corners::before,
.fx-border-corners::after {
  content: "";
  position: absolute;
  width: 24px; height: 24px;
  border: 2px solid #22d3ee;
  transition: all 0.4s ease;
}
.fx-border-corners::before {
  top: 0; left: 0;
  border-right: none; border-bottom: none;
}
.fx-border-corners::after {
  bottom: 0; right: 0;
  border-left: none; border-top: none;
}
.fx-border-corners:hover::before,
.fx-border-corners:hover::after {
  width: 100%; height: 100%;
  box-shadow: 0 0 16px rgba(34,211,238,0.5);
}
```


## Glow Border

`fx-border-glow`

```html
<div class="fx-border-glow"></div>
```

```css
.fx-border-glow {
      position: relative;
      padding: 24px 32px;
      border-radius: 12px;
      background: #0b1020;
      color: #fff;
      font-weight: 600;
    }
    .fx-border-glow::before {
      content: "";
      position: absolute;
      inset: -2px;
      border-radius: 14px;
      background: linear-gradient(45deg, #8b5cf6, #ec4899, #f59e0b, #22d3ee, #8b5cf6);
      background-size: 300% 300%;
      z-index: -1;
      animation: fx-border-glow-flow 4s linear infinite;
      filter: blur(6px);
      opacity: 0.6;
    }
    .fx-border-glow::after {
      content: "";
      position: absolute;
      inset: 0;
      border-radius: 12px;
      background: #0b1020;
      z-index: -1;
    }
    @keyframes fx-border-glow-flow {
      to { background-position: 300% 50%; }
    }
```


## Marching Ants

`fx-border-dashed-flow`

```html
<div class="fx-border-dashed-flow"></div>
```

```css
.fx-border-dashed-flow {
      padding: 28px 40px;
      border-radius: 8px;
      color: #1f2937;
      font-weight: 600;
      background:
        repeating-linear-gradient(90deg, #8b5cf6 0, #8b5cf6 6px, transparent 6px, transparent 12px) 0 0 / 100% 2px,
        repeating-linear-gradient(90deg, #8b5cf6 0, #8b5cf6 6px, transparent 6px, transparent 12px) 0 100% / 100% 2px,
        repeating-linear-gradient(0deg, #8b5cf6 0, #8b5cf6 6px, transparent 6px, transparent 12px) 0 0 / 2px 100%,
        repeating-linear-gradient(0deg, #8b5cf6 0, #8b5cf6 6px, transparent 6px, transparent 12px) 100% 0 / 2px 100%,
        #fff;
      animation: fx-marching-ants 0.6s linear infinite;
    }
    @keyframes fx-marching-ants {
      to {
        background-position:
          12px 0,
          -12px 100%,
          0 12px,
          100% -12px,
          0 0;
      }
    }
```
