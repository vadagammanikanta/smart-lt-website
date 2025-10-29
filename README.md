# Smart LT Line Protection — Static Prototype

This repository contains a small static UI prototype for **Smart LT Line Protection System** (Team INNOVATORS).
It includes simple HTML pages and embedded SVG images so it runs without external assets.

## What’s included
- `index.html` — Dashboard (main)
- `alerts.html` — Alerts & notifications
- `ai.html` — AI Prediction panel (demo)
- `isolate.html` — Isolation control (demo)
- `reports.html` — Reports page
- `assets/images/*.svg` — Inbuilt SVG images used by pages

## How to preview locally
1. Unzip the archive (if downloaded).
2. Open `index.html` in your browser.

## Deploy to GitHub Pages (manual)
1. Create a new GitHub repo (e.g., `smart-lt-website`).
2. Initialize, commit and push:
```bash
git init
git add .
git commit -m "Initial prototype"
git branch -M main
git remote add origin https://github.com/<YOUR_USERNAME>/smart-lt-website.git
git push -u origin main
```
3. In the GitHub repo settings -> Pages, select branch `main` and folder `/ (root)`. Save.
4. Visit `https://<YOUR_USERNAME>.github.io/smart-lt-website/` after a minute.

## Deploy using gh-pages branch (automated via script)
You can use this simple script to push to `gh-pages` branch so Pages serves from that branch:
```bash
# run once in repo root
git init
git add .
git commit -m "Initial prototype"
git branch -M main
git remote add origin https://github.com/<YOUR_USERNAME>/smart-lt-website.git
git push -u origin main
# create gh-pages copy and push
git checkout --orphan gh-pages
git rm -rf .
cp -r * /tmp/site-copy
git add .
git commit -m "GitHub Pages"
git push -u origin gh-pages --force
git checkout main
```
(Or use `gh` CLI `gh repo create` to simplify.)

## Need help?
If you want, I can:
- Customize the UI, colors, or add more demo data.
- Produce a single-file (self-contained) HTML or generate a ready-to-run GitHub Actions workflow to deploy automatically.
