# CV source

`tom-garrett-cv.html` is the source of truth for the CV the site offers at
`/tom-garrett-cv.pdf`. It is a standalone print document — no Rails, no Tailwind
— but it borrows the site's typography and palette (Archivo, Libre Franklin, IBM
Plex Mono; the same ink scale) so the download reads as part of the same thing as
the pages that link to it.

It lives here rather than in `public/` deliberately: `static:build` copies
everything in `public/` into `_site/`, and only the PDF should be published.

## Regenerating the PDF

Any Chromium-based browser can print it. On Windows, Edge is already there:

```bash
msedge --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="public/tom-garrett-cv.pdf" "file:///absolute/path/to/cv/tom-garrett-cv.html"
```

Two things to check in the output before committing it:

1. **It is still two pages.** The layout is tuned to fill the second page and stop.
   Adding a bullet or lengthening a case study spills a third page carrying one
   line, which looks worse than the edit was worth. The spacing knobs are `.role`,
   `.study` and `.refs` in the stylesheet.
2. **The fonts came down.** The renderer fetches them from Google Fonts, and on a
   cold or offline run it falls back to Segoe UI and Consolas. Both set fine, but
   the result is a different-looking document; a PDF around 125 kB has the real
   fonts embedded, one around 25 kB does not.

## Keeping it honest

Every figure in here also appears on the site — the experience bullets match
`app/views/pages/about.html.erb`, and the case-study figures match
`app/models/case_study.rb` and the study documents. If a number changes in one
place it has to change in both, or the CV and the case study a reader opens next
will disagree with each other.
