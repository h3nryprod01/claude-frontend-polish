# CSSFX — Forms (4)

Apply the `fx-*` class. Full library: `../assets/cssfx.css`. Markup is a starting point; the CSS is authoritative.


## Glow Toggle

`fx-form-toggle`

```html
<input class="fx-form-toggle" placeholder="Type..." />
```

```css
.fx-form-toggle {
  position: relative;
  display: inline-block;
  width: 56px; height: 30px;
  cursor: pointer;
}
.fx-form-toggle input { opacity: 0; width: 0; height: 0; }
.fx-form-toggle-slider {
  position: absolute;
  inset: 0;
  background: #cbd5e1;
  border-radius: 999px;
  transition: background 0.3s ease, box-shadow 0.3s ease;
}
.fx-form-toggle-slider::before {
  content: "";
  position: absolute;
  height: 22px; width: 22px;
  left: 4px; top: 4px;
  background: #fff;
  border-radius: 50%;
  box-shadow: 0 2px 6px rgba(0,0,0,0.2);
  transition: transform 0.3s cubic-bezier(0.34, 1.56, 0.64, 1);
}
.fx-form-toggle input:checked + .fx-form-toggle-slider {
  background: #10b981;
  box-shadow: 0 0 14px rgba(16,185,129,0.6);
}
.fx-form-toggle input:checked + .fx-form-toggle-slider::before {
  transform: translateX(26px);
}
```


## Heart Like

`fx-form-heart`

```html
<input class="fx-form-heart" placeholder="Type..." />
```

```css
.fx-form-heart { display: inline-block; cursor: pointer; }
.fx-form-heart input { display: none; }
.fx-form-heart svg {
  width: 48px; height: 48px;
  fill: none;
  stroke: #94a3b8;
  stroke-width: 2;
  transition: all 0.3s ease;
}
.fx-form-heart input:checked + svg {
  fill: #ef4444;
  stroke: #ef4444;
  animation: fx-heart-beat 0.6s ease;
  filter: drop-shadow(0 0 10px rgba(239,68,68,0.6));
}
@keyframes fx-heart-beat {
  0%, 100% { transform: scale(1); }
  25%      { transform: scale(1.3); }
  50%      { transform: scale(0.95); }
  75%      { transform: scale(1.15); }
}
```


## Floating Label Input

`fx-form-input`

```html
<input class="fx-form-input" placeholder="Type..." />
```

```css
.fx-form-input {
  position: relative;
  width: 240px;
}
.fx-form-input input {
  width: 100%;
  padding: 10px 4px;
  font-size: 15px;
  color: #1f2937;
  background: transparent;
  border: none;
  border-bottom: 1px solid #cbd5e1;
  outline: none;
}
.fx-form-input label {
  position: absolute;
  left: 4px; top: 10px;
  font-size: 15px;
  color: #94a3b8;
  pointer-events: none;
  transition: all 0.25s ease;
}
.fx-form-input span {
  position: absolute;
  left: 0; bottom: 0;
  width: 100%; height: 2px;
  background: linear-gradient(90deg, #8b5cf6, #ec4899);
  transform: scaleX(0);
  transform-origin: left;
  transition: transform 0.35s ease;
  box-shadow: 0 0 12px rgba(168,85,247,0.7);
}
.fx-form-input input:focus ~ span { transform: scaleX(1); }
.fx-form-input input:focus ~ label,
.fx-form-input input:not(:placeholder-shown) ~ label {
  top: -14px;
  font-size: 12px;
  color: #8b5cf6;
}
```


## Glow Range Slider

`fx-form-range`

```html
<input class="fx-form-range" placeholder="Type..." />
```

```css
.fx-form-range {
      -webkit-appearance: none;
      appearance: none;
      width: 240px;
      height: 6px;
      border-radius: 999px;
      background: linear-gradient(90deg, #8b5cf6, #ec4899, #f59e0b);
      outline: none;
      cursor: pointer;
    }
    .fx-form-range::-webkit-slider-thumb {
      -webkit-appearance: none;
      appearance: none;
      width: 22px;
      height: 22px;
      border-radius: 50%;
      background: #fff;
      border: 2px solid #ec4899;
      box-shadow: 0 0 0 4px rgba(236, 72, 153, 0.15), 0 0 16px rgba(236, 72, 153, 0.6);
      transition: transform 0.15s ease, box-shadow 0.15s ease;
    }
    .fx-form-range::-webkit-slider-thumb:hover {
      transform: scale(1.15);
      box-shadow: 0 0 0 6px rgba(236, 72, 153, 0.2), 0 0 24px rgba(236, 72, 153, 0.8);
    }
    .fx-form-range::-moz-range-thumb {
      width: 22px;
      height: 22px;
      border-radius: 50%;
      background: #fff;
      border: 2px solid #ec4899;
      box-shadow: 0 0 16px rgba(236, 72, 153, 0.6);
      cursor: pointer;
    }
```
