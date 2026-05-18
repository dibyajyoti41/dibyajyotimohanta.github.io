# Dibyajyoti Mohanta — Personal Website

A static, classic-academic-style port of the Google Sites page
`https://sites.google.com/view/dibyajyotimohanta/` — ready to host on GitHub Pages.

## What's in this folder

```
dibyajyoti-site/
├── index.html              ← Home
├── introduction.html       ← Bio, experience, education
├── research.html           ← Research highlights (all sections)
├── publications.html       ← Talks & full publication list
├── gallery.html            ← Trek/hike photos
├── assets/
│   ├── style.css           ← Classic academic theme (serif, sidebar nav)
│   ├── script.js           ← Active-link highlighting + mobile menu
│   └── images/             ← (empty — see "About the images" below)
├── .nojekyll               ← Tells GitHub Pages to serve files as-is
└── README.md               ← This file
```

## Quick preview locally

Open `index.html` in any browser, or serve it:

```bash
cd dibyajyoti-site
python3 -m http.server 8000
# then visit http://localhost:8000
```

---

## Deploying to GitHub Pages (step-by-step)

You have two common options. **Option A** gives you a URL like
`https://<your-username>.github.io/` (one per account, recommended for a personal site).
**Option B** gives you `https://<your-username>.github.io/<repo-name>/`.

### Option A — User site at `https://<username>.github.io`

1. **Create a new repository** on GitHub named exactly `<your-username>.github.io`
   (for example: `dibyajyotimohanta.github.io`).
   Make it **Public**. Do not initialise it with a README.

2. **From inside the `dibyajyoti-site` folder** on your computer, run:

   ```bash
   cd dibyajyoti-site
   git init
   git add .
   git commit -m "Initial site"
   git branch -M main
   git remote add origin https://github.com/<your-username>/<your-username>.github.io.git
   git push -u origin main
   ```

3. Wait ~1 minute. Your site is live at `https://<your-username>.github.io/`.
   (GitHub Pages is enabled by default for user repos.)

### Option B — Project site under a repo

1. Create any public repo, e.g. `personal-website`.
2. Push these files (same commands as above, but use the new repo URL).
3. On GitHub, go to **Settings → Pages**.
4. Under **Build and deployment → Source**, select **Deploy from a branch**.
5. Branch: **main**, Folder: **/ (root)**. Save.
6. Your site appears at `https://<your-username>.github.io/personal-website/` within a minute.

### Custom domain (optional)

If you own a domain like `dibyajyotimohanta.com`:

1. Create a file named `CNAME` in the repo root containing just the domain
   (one line, no `http://`).
2. On your DNS provider, add a CNAME record pointing your domain to
   `<your-username>.github.io`.
3. In **Settings → Pages → Custom domain**, paste the domain and tick
   **Enforce HTTPS** once the certificate provisions.

---

## About the images

The page currently loads images directly from Google Sites'
`lh3.googleusercontent.com` CDN — the exact URLs from your existing site. They will
display correctly in browsers without any changes, but they depend on Google's URLs
staying live.

**To make the site fully self-contained:**

1. Download each image (right-click → Save image as…) into `assets/images/`,
   for example `assets/images/profile.jpg`, `assets/images/valley-of-flowers-1.jpg`, etc.
2. In the HTML files, replace each `https://lh3.googleusercontent.com/...` `src=`
   value with `assets/images/<your-filename>`.
3. Commit and push.

A search-and-replace in your editor (VS Code, etc.) makes this quick.

## Editing content

Each page is plain HTML with comments and consistent class names — feel free
to edit text inline. To add a new publication, copy an `<li>...</li>` block in
`publications.html` and change the fields.

To change the colour scheme, edit the CSS variables at the top of
`assets/style.css`:

```css
:root {
  --accent: #6b1d1d;     /* currently: deep academic crimson */
  --bg: #fdfcf9;         /* paper white */
  --sidebar-bg: #f4efe6; /* warm ivory */
}
```

## License

The code (HTML/CSS/JS) is yours to do whatever you like with. Photos and figures
belong to their respective authors / publications, as noted in captions.
