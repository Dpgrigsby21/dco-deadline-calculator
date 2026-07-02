# DCO Deadline Calculator

Upload a Docket Control Order (DCO) PDF and instantly see every deadline as a real
calendar date, calculated from the trial date ("75 days before trial", "14 days
before trial", etc.).

## How to run

Double-click **start.bat**, or from a terminal:

```
python -m http.server 8317
```

then open http://localhost:8317 in your browser.

## What it does

- Works with **scanned PDFs** — OCR (Tesseract) runs entirely in your browser.
  No file is ever uploaded anywhere and nothing is stored.
- Finds the **trial date**, the case caption, and every "N days before trial"
  deadline, plus fixed dates like the Pre-Trial Conference.
- Applies the order's own rule: deadlines falling on a weekend or legal holiday
  are moved to the **first business day thereafter** (adjusted dates are flagged
  so you can verify against the county holiday schedule).
- The trial date is editable — if OCR misreads it or the trial gets reset, just
  change it and everything recalculates.
- Export: copy the table, download CSV, download an **.ics** file you can drop
  into Outlook to put every deadline on your calendar, or print.

All libraries (pdf.js, tesseract.js, OCR language data) are bundled in `lib/`,
so it also works without internet access.

> This tool is a calculation aid, not legal advice. Always verify critical
> deadlines against the signed order.
