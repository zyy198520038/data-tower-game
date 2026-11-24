# Future Data Search Tower

An image-based exploration game and portfolio piece by Yiyun Zhu. Visitors check in at the
tower, follow Triage the pony through B3 → B2 → B1 to solve the case of the missing 2F,
learn Cisco Data Fabric ideas along the way, and end in Yiyun's studio.

## Run locally

It is a single static page. Serve the folder and open it in a browser:

```
python3 -m http.server 8000
# then open http://localhost:8000
```

Opening `index.html` directly from disk also works in most browsers.

## Structure

- `index.html` — the whole game (HTML, CSS, JS)
- `img/` — scene images, transparent agent animations (`.webm` for Chrome/Edge/Firefox,
  animated `.webp` fallback for Safari/iOS), background loops (`.mp4`)

## Notes

- The visitor feedback guestbook uses the claude.ai artifact runtime (`window.claude`).
  Outside claude.ai it falls back to a read-only sample state; hook it to your own backend
  to make it live elsewhere.
- Progress is saved in the browser's localStorage key `fdst-v3`.
