# CSSFX — Backgrounds (6)

Apply the `fx-*` class. Full library: `../assets/cssfx.css`. Markup is a starting point; the CSS is authoritative.


## Animated Mesh

`fx-bg-mesh`

```html
<div class="fx-bg-mesh"></div>
```

```css
.fx-bg-mesh {
  width: 100%; height: 100%;
  background:
    radial-gradient(at 20% 20%, #8b5cf6 0px, transparent 50%),
    radial-gradient(at 80% 10%, #ec4899 0px, transparent 50%),
    radial-gradient(at 60% 80%, #22d3ee 0px, transparent 50%),
    radial-gradient(at 10% 90%, #f59e0b 0px, transparent 50%),
    #0b1020;
  background-size: 200% 200%;
  animation: fx-mesh-shift 12s ease-in-out infinite;
}
@keyframes fx-mesh-shift {
  0%, 100% { background-position: 0% 0%, 100% 0%, 50% 100%, 0% 100%; }
  50%      { background-position: 30% 50%, 70% 30%, 30% 70%, 70% 70%; }
}
```


## Pulse Grid

`fx-bg-grid`

```html
<div class="fx-bg-grid"></div>
```

```css
.fx-bg-grid {
  width: 100%; height: 100%;
  background:
    linear-gradient(rgba(34,211,238,0.18) 1px, transparent 1px) 0 0 / 40px 40px,
    linear-gradient(90deg, rgba(34,211,238,0.18) 1px, transparent 1px) 0 0 / 40px 40px,
    radial-gradient(ellipse at center, #0b1020 0%, #000 100%);
  animation: fx-grid-pan 8s linear infinite;
}
@keyframes fx-grid-pan {
  to { background-position: 40px 40px, 40px 40px, 0 0; }
}
```


## Aurora Waves

`fx-bg-aurora`

```html
<div class="fx-bg-aurora"></div>
```

```css
.fx-bg-aurora {
  width: 100%; height: 100%;
  background: #050816;
  position: relative;
  overflow: hidden;
}
.fx-bg-aurora::before,
.fx-bg-aurora::after {
  content: "";
  position: absolute;
  inset: -50%;
  background: conic-gradient(from 0deg, transparent, #10b981, transparent 30%, #22d3ee, transparent 60%, #a855f7, transparent);
  filter: blur(60px);
  opacity: 0.5;
  animation: fx-aurora-spin 14s linear infinite;
}
.fx-bg-aurora::after {
  animation-duration: 22s;
  animation-direction: reverse;
  opacity: 0.35;
}
@keyframes fx-aurora-spin { to { transform: rotate(360deg); } }
```


## Floating Orbs

`fx-bg-orbs`

```html
<div class="fx-bg-orbs"><span></span><span></span><span></span><span></span></div>
```

```css
.fx-bg-orbs {
  width: 100%; height: 100%;
  background: #0b1020;
  position: relative;
  overflow: hidden;
}
.fx-bg-orbs span {
  position: absolute;
  bottom: -80px;
  width: 120px; height: 120px;
  border-radius: 50%;
  filter: blur(8px);
  opacity: 0.7;
  animation: fx-orb-rise 10s ease-in infinite;
}
.fx-bg-orbs span:nth-child(1) { left: 10%; background: #8b5cf6; animation-delay: 0s; }
.fx-bg-orbs span:nth-child(2) { left: 35%; background: #ec4899; animation-delay: 2.5s; width: 80px; height: 80px; }
.fx-bg-orbs span:nth-child(3) { left: 60%; background: #22d3ee; animation-delay: 5s; }
.fx-bg-orbs span:nth-child(4) { left: 85%; background: #f59e0b; animation-delay: 7s; width: 60px; height: 60px; }
@keyframes fx-orb-rise {
  0%   { transform: translateY(0) scale(1); opacity: 0; }
  10%  { opacity: 0.7; }
  90%  { opacity: 0.5; }
  100% { transform: translateY(-400px) scale(0.5); opacity: 0; }
}
```


## Confetti Rain

`fx-bg-confetti`

```html
<div class="fx-bg-confetti"><span></span><span></span><span></span><span></span><span></span><span></span></div>
```

```css
.fx-bg-confetti {
      width: 100%; height: 100%;
      background: #0b1020;
      position: relative;
      overflow: hidden;
    }
    .fx-bg-confetti span {
      position: absolute;
      top: -20px;
      width: 8px; height: 14px;
      border-radius: 2px;
      animation: fx-confetti-fall linear infinite;
    }
    .fx-bg-confetti span:nth-child(1) { left: 5%;  background: #ef4444; animation-duration: 3s;   animation-delay: 0s;   }
    .fx-bg-confetti span:nth-child(2) { left: 18%; background: #f59e0b; animation-duration: 4s;   animation-delay: 0.5s; transform: rotate(45deg); }
    .fx-bg-confetti span:nth-child(3) { left: 31%; background: #10b981; animation-duration: 3.5s; animation-delay: 1s;   }
    .fx-bg-confetti span:nth-child(4) { left: 44%; background: #06b6d4; animation-duration: 4.5s; animation-delay: 1.5s; transform: rotate(30deg); }
    .fx-bg-confetti span:nth-child(5) { left: 57%; background: #8b5cf6; animation-duration: 3.2s; animation-delay: 0.3s; }
    .fx-bg-confetti span:nth-child(6) { left: 70%; background: #ec4899; animation-duration: 3.8s; animation-delay: 0.8s; transform: rotate(60deg); }
    .fx-bg-confetti span:nth-child(7) { left: 83%; background: #fde047; animation-duration: 4.2s; animation-delay: 1.2s; }
    .fx-bg-confetti span:nth-child(8) { left: 93%; background: #14b8a6; animation-duration: 3.6s; animation-delay: 2s;   transform: rotate(20deg); }
    @keyframes fx-confetti-fall {
      0%   { transform: translateY(0)    rotate(0deg);   opacity: 1; }
      100% { transform: translateY(400px) rotate(720deg); opacity: 0.6; }
    }
```


## Twinkling Stars

`fx-bg-stars`

```html
<div class="fx-bg-stars"><span></span><span></span><span></span><span></span><span></span><span></span></div>
```

```css
.fx-bg-stars {
      width: 100%; height: 100%;
      background: radial-gradient(ellipse at bottom, #1e1b4b 0%, #050816 100%);
      position: relative;
      overflow: hidden;
    }
    .fx-bg-stars span {
      position: absolute;
      width: 2px; height: 2px;
      background: #fff;
      border-radius: 50%;
      box-shadow: 0 0 6px #fff;
      animation: fx-twinkle 3s ease-in-out infinite;
    }
    .fx-bg-stars span:nth-child(1)  { top: 10%; left: 8%;  animation-delay: 0s;   }
    .fx-bg-stars span:nth-child(2)  { top: 25%; left: 22%; animation-delay: 0.4s; width: 3px; height: 3px; }
    .fx-bg-stars span:nth-child(3)  { top: 15%; left: 38%; animation-delay: 0.8s; }
    .fx-bg-stars span:nth-child(4)  { top: 40%; left: 55%; animation-delay: 1.2s; }
    .fx-bg-stars span:nth-child(5)  { top: 60%; left: 12%; animation-delay: 1.6s; width: 3px; height: 3px; }
    .fx-bg-stars span:nth-child(6)  { top: 75%; left: 28%; animation-delay: 2s;   }
    .fx-bg-stars span:nth-child(7)  { top: 30%; left: 70%; animation-delay: 0.2s; }
    .fx-bg-stars span:nth-child(8)  { top: 50%; left: 85%; animation-delay: 0.6s; width: 3px; height: 3px; }
    .fx-bg-stars span:nth-child(9)  { top: 85%; left: 60%; animation-delay: 1s;   }
    .fx-bg-stars span:nth-child(10) { top: 20%; left: 92%; animation-delay: 1.4s; }
    @keyframes fx-twinkle {
      0%, 100% { opacity: 0.3; transform: scale(1); }
      50%      { opacity: 1;   transform: scale(1.5); }
    }
```
