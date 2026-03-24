# BuildingPark — Landing Page

Production-ready landing page for the BuildingPark mobile app.

## Quick Start

### Option 1: Open directly
```bash
open index.html
```

### Option 2: Local dev server (Python)
```bash
python3 -m http.server 8080
# Open http://localhost:8080
```

### Option 3: Local dev server (Node)
```bash
npx serve .
# Open http://localhost:3000
```

## Deploy

### Vercel
```bash
npx vercel --prod
```

### Netlify
Drag the `park-landing/` folder to [app.netlify.com/drop](https://app.netlify.com/drop).

### GitHub Pages
Push to a repo and enable GitHub Pages from Settings → Pages → Source: main branch.

## Structure

```
park-landing/
├── index.html          # Full landing page (self-contained)
├── styles.css          # All styles (RTL, responsive, animations)
├── images/             # App screenshots (from pitch assets)
│   ├── cover.png
│   ├── screen-home.png
│   ├── screen-login.png
│   ├── screen-create.png
│   ├── screen-requests.png
│   ├── screen-notifications.png
│   └── screen-profile.png
└── README.md
```

## Tech

- Pure HTML + CSS — no build step, no framework
- Google Fonts (Heebo) for Hebrew typography
- IntersectionObserver for scroll animations
- RTL-native layout
- Mobile-first responsive design
- SEO meta tags + Open Graph
