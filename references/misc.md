# CSSFX — Misc (16)

Apply the `fx-*` class. Full library: `../assets/cssfx.css`. Markup is a starting point; the CSS is authoritative.


## Striped Progress

`fx-misc-progress`

```html
<div class="fx-misc-progress"><span></span></div>
```

```css
.fx-misc-progress {
  width: 260px;
  height: 18px;
  background: #e5e7eb;
  border-radius: 999px;
  overflow: hidden;
}
.fx-misc-progress span {
  display: block;
  height: 100%;
  border-radius: 999px;
  background-image:
    linear-gradient(45deg, rgba(255,255,255,0.25) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.25) 50%, rgba(255,255,255,0.25) 75%, transparent 75%, transparent),
    linear-gradient(90deg, #8b5cf6, #ec4899);
  background-size: 20px 20px, 100% 100%;
  animation: fx-progress-stripes 0.8s linear infinite;
}
@keyframes fx-progress-stripes {
  to { background-position: 20px 0, 0 0; }
}
```


## Skeleton Shimmer

`fx-misc-skeleton`

```html
<div class="fx-misc-skeleton"></div>
```

```css
.fx-misc-skeleton {
  display: flex; gap: 12px; align-items: center;
  width: 260px;
}
.fx-misc-skeleton-avatar {
  width: 48px; height: 48px;
  border-radius: 50%;
  flex-shrink: 0;
}
.fx-misc-skeleton-lines { flex: 1; display: flex; flex-direction: column; gap: 8px; }
.fx-misc-skeleton-lines span { height: 10px; border-radius: 4px; }
.fx-misc-skeleton-lines span:nth-child(1) { width: 90%; }
.fx-misc-skeleton-lines span:nth-child(2) { width: 70%; }
.fx-misc-skeleton-lines span:nth-child(3) { width: 40%; }
.fx-misc-skeleton-avatar,
.fx-misc-skeleton-lines span {
  background: linear-gradient(90deg, #e5e7eb 25%, #f3f4f6 50%, #e5e7eb 75%);
  background-size: 200% 100%;
  animation: fx-skeleton 1.4s ease-in-out infinite;
}
@keyframes fx-skeleton {
  to { background-position: -200% 0; }
}
```


## Pulse FAB

`fx-misc-fab`

```html
<div class="fx-misc-fab"></div>
```

```css
.fx-misc-fab {
  position: relative;
  width: 56px; height: 56px;
  border: none;
  border-radius: 50%;
  background: linear-gradient(135deg, #ec4899, #8b5cf6);
  color: #fff;
  font-size: 28px;
  font-weight: 300;
  cursor: pointer;
  box-shadow: 0 10px 24px -6px rgba(139,92,246,0.6);
  transition: transform 0.2s ease;
}
.fx-misc-fab::before {
  content: "";
  position: absolute;
  inset: 0;
  border-radius: 50%;
  background: rgba(139,92,246,0.4);
  z-index: -1;
  animation: fx-fab-pulse 2s ease-out infinite;
}
.fx-misc-fab:hover { transform: rotate(90deg) scale(1.05); }
@keyframes fx-fab-pulse {
  0%   { transform: scale(1);   opacity: 0.7; }
  100% { transform: scale(1.8); opacity: 0; }
}
```


## Pure CSS Tooltip

`fx-misc-tooltip-wrap`

```html
<div class="fx-misc-tooltip-wrap"></div>
```

```css
.fx-misc-tooltip-wrap {
  position: relative;
  display: inline-block;
}
.fx-misc-tooltip-btn {
  padding: 10px 22px;
  font-size: 14px; font-weight: 600;
  color: #fff;
  background: #1f2937;
  border: none;
  border-radius: 8px;
  cursor: pointer;
}
.fx-misc-tooltip {
  position: absolute;
  bottom: calc(100% + 10px);
  left: 50%;
  transform: translateX(-50%) translateY(6px);
  padding: 8px 12px;
  font-size: 12px;
  color: #fff;
  background: #8b5cf6;
  border-radius: 6px;
  white-space: nowrap;
  opacity: 0;
  pointer-events: none;
  transition: opacity 0.25s ease, transform 0.25s ease;
}
.fx-misc-tooltip::after {
  content: "";
  position: absolute;
  top: 100%; left: 50%;
  transform: translateX(-50%);
  border: 6px solid transparent;
  border-top-color: #8b5cf6;
}
.fx-misc-tooltip-wrap:hover .fx-misc-tooltip {
  opacity: 1;
  transform: translateX(-50%) translateY(0);
}
```


## Notification Badge

`fx-misc-badge`

```html
<div class="fx-misc-badge"></div>
```

```css
.fx-misc-badge {
      position: relative;
      width: 44px; height: 44px;
      display: inline-flex; align-items: center; justify-content: center;
      color: #1f2937;
      background: #f3f4f6;
      border: 1px solid #e5e7eb;
      border-radius: 12px;
      cursor: pointer;
    }
    .fx-misc-badge svg { width: 20px; height: 20px; }
    .fx-misc-badge-dot {
      position: absolute;
      top: -4px; right: -4px;
      min-width: 18px; height: 18px;
      padding: 0 4px;
      display: inline-flex; align-items: center; justify-content: center;
      font-size: 10px; font-weight: 700; color: #fff;
      background: #ef4444;
      border-radius: 999px;
      border: 2px solid #fff;
    }
    .fx-misc-badge-dot::before {
      content: "";
      position: absolute;
      inset: -2px;
      border-radius: 999px;
      background: #ef4444;
      z-index: -1;
      animation: fx-badge-pulse 1.6s ease-out infinite;
    }
    @keyframes fx-badge-pulse {
      0%   { transform: scale(1);   opacity: 0.7; }
      100% { transform: scale(2);   opacity: 0;   }
    }
```


## Pure CSS Accordion

`fx-misc-accordion`

```html
<div class="fx-misc-accordion"></div>
```

```css
.fx-misc-accordion {
      width: 260px;
      background: #0b1020;
      color: #e5e7eb;
      border-radius: 10px;
      overflow: hidden;
    }
    .fx-misc-accordion summary {
      padding: 12px 16px;
      font-size: 14px; font-weight: 600;
      cursor: pointer;
      list-style: none;
      display: flex; justify-content: space-between; align-items: center;
    }
    .fx-misc-accordion summary::-webkit-details-marker { display: none; }
    .fx-misc-accordion summary::after {
      content: "+";
      font-size: 18px;
      color: #8b5cf6;
      transition: transform 0.3s ease;
    }
    .fx-misc-accordion[open] summary::after { transform: rotate(45deg); }
    .fx-misc-accordion-body {
      padding: 0 16px;
      font-size: 13px;
      max-height: 0;
      overflow: hidden;
      transition: max-height 0.35s ease, padding 0.35s ease;
    }
    .fx-misc-accordion[open] .fx-misc-accordion-body {
      max-height: 100px;
      padding: 0 16px 14px;
    }
```


## Breadcrumb Arrows

`fx-misc-breadcrumb`

```html
<div class="fx-misc-breadcrumb"><span></span></div>
```

```css
.fx-misc-breadcrumb {
      display: inline-flex; align-items: center; gap: 4px;
      font-size: 14px;
    }
    .fx-misc-breadcrumb a,
    .fx-misc-breadcrumb span {
      padding: 6px 12px;
      border-radius: 6px;
      color: #6366f1;
      cursor: pointer;
      position: relative;
      transition: background 0.2s ease;
    }
    .fx-misc-breadcrumb a:hover { background: rgba(99,102,241,0.1); }
    .fx-misc-breadcrumb a + a,
    .fx-misc-breadcrumb a + span,
    .fx-misc-breadcrumb span + a {
      margin-left: 8px;
    }
    .fx-misc-breadcrumb a::before {
      content: "›";
      position: absolute;
      left: -10px;
      color: #94a3b8;
      transition: transform 0.2s ease;
    }
    .fx-misc-breadcrumb a:first-child::before { content: ""; }
    .fx-misc-breadcrumb a:hover::before { transform: translateX(-2px); color: #6366f1; }
    .fx-misc-breadcrumb span {
      color: #94a3b8;
      font-weight: 600;
    }
```


## Day / Night Switch

`fx-misc-switch`

```html
<div class="fx-misc-switch"></div>
```

```css
.fx-misc-switch {
      display: inline-flex;
      cursor: pointer;
    }
    .fx-misc-switch input { display: none; }
    .fx-misc-switch-track {
      width: 80px; height: 36px;
      border-radius: 999px;
      background: linear-gradient(180deg, #38bdf8 0%, #0ea5e9 100%);
      position: relative;
      transition: background 0.5s ease;
      box-shadow: inset 0 2px 6px rgba(0,0,0,0.15);
    }
    .fx-misc-switch-thumb {
      position: absolute;
      top: 4px; left: 4px;
      width: 28px; height: 28px;
      border-radius: 50%;
      background: radial-gradient(circle at 30% 30%, #fef3c7, #fbbf24);
      box-shadow: 0 0 12px rgba(251,191,36,0.8);
      transition: transform 0.5s cubic-bezier(0.34, 1.56, 0.64, 1), background 0.5s ease, box-shadow 0.5s ease;
    }
    .fx-misc-switch input:checked + .fx-misc-switch-track {
      background: linear-gradient(180deg, #1e1b4b 0%, #0f172a 100%);
    }
    .fx-misc-switch input:checked + .fx-misc-switch-track .fx-misc-switch-thumb {
      transform: translateX(44px);
      background: radial-gradient(circle at 70% 30%, #e5e7eb, #94a3b8);
      box-shadow: inset -5px -3px 0 0 #475569, 0 0 12px rgba(203,213,225,0.4);
    }
```


## Animated Counter

`fx-misc-counter`

```html
<div class="fx-misc-counter"></div>
```

```css
@property --fx-counter {
      syntax: "<integer>";
      initial-value: 0;
      inherits: false;
    }
    .fx-misc-counter {
      font-size: 48px;
      font-weight: 900;
      font-variant-numeric: tabular-nums;
      background: linear-gradient(135deg, #8b5cf6, #ec4899);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
      counter-reset: c var(--fx-counter);
      --fx-counter: 0;
      animation: fx-counter-roll 4s ease-out forwards infinite;
    }
    .fx-misc-counter::after {
      content: counter(c);
    }
    @keyframes fx-counter-roll {
      0%   { --fx-counter: 0; }
      100% { --fx-counter: 1234; }
    }
```


## Removable Tag

`fx-misc-tag`

```html
<div class="fx-misc-tag"></div>
```

```css
.fx-misc-tag {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 6px 8px 6px 12px;
      font-size: 13px;
      font-weight: 500;
      color: #1f2937;
      background: linear-gradient(135deg, #ddd6fe, #fbcfe8);
      border-radius: 999px;
      transition: transform 0.2s ease;
    }
    .fx-misc-tag:hover {
      transform: translateY(-1px);
    }
    .fx-misc-tag button {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      width: 18px;
      height: 18px;
      border-radius: 50%;
      border: none;
      background: rgba(0,0,0,0.1);
      color: #1f2937;
      font-size: 14px;
      line-height: 1;
      cursor: pointer;
      transition: background 0.2s ease, transform 0.2s ease;
    }
    .fx-misc-tag button:hover {
      background: #ef4444;
      color: #fff;
      transform: rotate(90deg);
    }
```


## Keyboard Key

`fx-misc-key`

```html
<div class="fx-misc-key"></div>
```

```css
.fx-misc-key {
      position: relative;
      width: 56px;
      height: 56px;
      border: none;
      cursor: pointer;
      background: linear-gradient(180deg, #f1f5f9, #cbd5e1);
      border-radius: 10px;
      box-shadow:
        0 3px 0 #94a3b8,
        0 4px 6px rgba(0,0,0,0.15),
        inset 0 1px 0 rgba(255,255,255,0.8);
      font-size: 24px;
      font-weight: 600;
      color: #475569;
      transition: transform 0.06s ease, box-shadow 0.06s ease;
    }
    .fx-misc-key:hover {
      background: linear-gradient(180deg, #fff, #e2e8f0);
    }
    .fx-misc-key:active {
      transform: translateY(3px);
      box-shadow:
        0 0 0 #94a3b8,
        0 1px 2px rgba(0,0,0,0.15),
        inset 0 1px 0 rgba(255,255,255,0.4);
    }
```


## Animated Divider

`fx-misc-divider`

```html
<div class="fx-misc-divider"><span></span></div>
```

```css
.fx-misc-divider {
      position: relative;
      width: 240px;
      height: 24px;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .fx-misc-divider::before,
    .fx-misc-divider::after {
      content: "";
      flex: 1;
      height: 1px;
      background: linear-gradient(90deg, transparent, #8b5cf6, transparent);
      background-size: 200% 100%;
      animation: fx-divider-shimmer 2.5s linear infinite;
    }
    .fx-misc-divider::after { animation-direction: reverse; }
    .fx-misc-divider span {
      padding: 0 12px;
      color: #8b5cf6;
      font-size: 14px;
      filter: drop-shadow(0 0 6px rgba(139,92,246,0.5));
    }
    @keyframes fx-divider-shimmer {
      0%   { background-position: 200% 50%; opacity: 0.3; }
      50%  { opacity: 1; }
      100% { background-position: -200% 50%; opacity: 0.3; }
    }
```


## QR Scanner Line

`fx-misc-qr-scanner`

```html
<div class="fx-misc-qr-scanner"></div>
```

```css
.fx-stage-dark { background: #0b1020; }
    .fx-misc-qr-scanner {
      position: relative;
      width: 160px;
      height: 160px;
      overflow: hidden;
      border-radius: 8px;
    }
    .fx-misc-qr-scanner-line {
      position: absolute;
      left: 0;
      right: 0;
      height: 2px;
      background: linear-gradient(90deg, transparent, #10b981, #22d3ee, #10b981, transparent);
      box-shadow: 0 0 12px rgba(16, 185, 129, 0.8), 0 0 24px rgba(34, 211, 238, 0.5);
      animation: fx-qr-scan 2s ease-in-out infinite;
    }
    @keyframes fx-qr-scan {
      0%, 100% { top: 0; }
      50%      { top: calc(100% - 2px); }
    }
    .fx-misc-qr-scanner-corners span {
      position: absolute;
      width: 18px;
      height: 18px;
      border: 2px solid #10b981;
    }
    .fx-misc-qr-scanner-corners span:nth-child(1) {
      top: 0; left: 0;
      border-right: none; border-bottom: none;
    }
    .fx-misc-qr-scanner-corners span:nth-child(2) {
      top: 0; right: 0;
      border-left: none; border-bottom: none;
    }
    .fx-misc-qr-scanner-corners span:nth-child(3) {
      bottom: 0; left: 0;
      border-right: none; border-top: none;
    }
    .fx-misc-qr-scanner-corners span:nth-child(4) {
      bottom: 0; right: 0;
      border-left: none; border-top: none;
    }
```


## Minimal Toggle

`fx-misc-toggle-switch`

```html
<div class="fx-misc-toggle-switch"></div>
```

```css
.fx-misc-toggle-switch {
      display: inline-block;
      cursor: pointer;
    }
    .fx-misc-toggle-switch input { display: none; }
    .fx-misc-toggle-track {
      display: inline-block;
      width: 44px;
      height: 24px;
      border-radius: 999px;
      background: #d1d5db;
      position: relative;
      transition: background 0.25s ease;
    }
    .fx-misc-toggle-thumb {
      position: absolute;
      top: 2px;
      left: 2px;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      background: #fff;
      box-shadow: 0 1px 3px rgba(0,0,0,0.2);
      transition: transform 0.25s cubic-bezier(0.4, 0, 0.2, 1);
    }
    .fx-misc-toggle-switch input:checked + .fx-misc-toggle-track {
      background: #10b981;
    }
    .fx-misc-toggle-switch input:checked + .fx-misc-toggle-track .fx-misc-toggle-thumb {
      transform: translateX(20px);
    }
```


## Avatar Stack

`fx-misc-avatar-stack`

```html
<div class="fx-misc-avatar-stack"><span></span><span></span><span></span><span></span><span></span></div>
```

```css
.fx-misc-avatar-stack {
      display: inline-flex;
      align-items: center;
      padding-left: 8px;
    }
    .fx-misc-avatar-stack span {
      width: 36px;
      height: 36px;
      border-radius: 50%;
      display: inline-flex;
      align-items: center;
      justify-content: center;
      font-size: 13px;
      font-weight: 700;
      color: #fff;
      border: 2px solid #fff;
      margin-left: -10px;
      transition: transform 0.25s cubic-bezier(0.34, 1.56, 0.64, 1);
      box-shadow: 0 2px 6px rgba(0,0,0,0.15);
    }
    .fx-misc-avatar-stack span:nth-child(1) { background: #8b5cf6; }
    .fx-misc-avatar-stack span:nth-child(2) { background: #ec4899; }
    .fx-misc-avatar-stack span:nth-child(3) { background: #f59e0b; }
    .fx-misc-avatar-stack span:nth-child(4) { background: #10b981; }
    .fx-misc-avatar-stack-more {
      background: #1f2937 !important;
      font-size: 11px;
    }
    .fx-misc-avatar-stack:hover span {
      transform: translateX(calc(var(--i) * 4px));
    }
    .fx-misc-avatar-stack:hover span:nth-child(5) {
      transform: translateX(20px);
    }
```


## Segmented Control

`fx-misc-segmented`

```html
<div class="fx-misc-segmented"><label></label></div>
```

```css
.fx-misc-segmented {
      position: relative;
      display: inline-flex;
      padding: 3px;
      background: #e5e7eb;
      border-radius: 8px;
    }
    .fx-misc-segmented input { display: none; }
    .fx-misc-segmented label {
      position: relative;
      z-index: 2;
      padding: 6px 14px;
      font-size: 13px;
      font-weight: 600;
      color: #6b7280;
      cursor: pointer;
      border-radius: 6px;
      transition: color 0.25s ease;
    }
    .fx-misc-segmented input:checked + label {
      color: #1f2937;
    }
    .fx-misc-segmented-slider {
      position: absolute;
      top: 3px;
      left: 3px;
      width: calc(33.33% - 2px);
      height: calc(100% - 6px);
      background: #fff;
      border-radius: 6px;
      box-shadow: 0 1px 3px rgba(0,0,0,0.15);
      transition: transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
    }
    .fx-misc-segmented input:nth-of-type(2):checked ~ .fx-misc-segmented-slider {
      transform: translateX(100%);
    }
    .fx-misc-segmented input:nth-of-type(3):checked ~ .fx-misc-segmented-slider {
      transform: translateX(200%);
    }
```
