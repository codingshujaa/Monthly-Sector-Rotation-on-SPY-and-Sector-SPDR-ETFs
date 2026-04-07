# FIN 442 Sector Rotation Project

This repo contains the full project files for my monthly sector rotation model on SPY and the Select Sector SPDR ETFs.

## What Is In This Repo

- `deliverables/` has the final Quarto report and the final HTML file.
- `data/cache/` has the cached Tiingo and FRED data used by the report.
- `scripts/` has a simple render helper.
- `workflow/` has a short map of how the report is organized.

## Final Files

- `deliverables/sector rotation project.qmd`
- `deliverables/sector rotation project.html`

## Data Files

- `data/cache/tiingo_prices_2000-06-01_2026-03-31.rds`
- `data/cache/fred_macro_2000-06-01_2026-03-31.rds`

## How To Render

Run:

```bash
quarto render "deliverables/sector rotation project.qmd" --to html
```

The report is already rendered in this repo, so the final HTML is included too.
