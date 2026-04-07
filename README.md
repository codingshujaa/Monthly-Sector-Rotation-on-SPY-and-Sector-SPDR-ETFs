# Monthly Sector Rotation on SPY and Sector SPDR ETFs

This project studies a monthly sector rotation strategy built on SPY and the Select Sector SPDR ETFs. I use clustering as the main signal method and a Kalman filter as the final trend check. The goal is to compare the strategy against SPY in the out-of-sample test period.

## 1. Data and Preprocessing

### Data Sources

The project uses API data only.

- Tiingo: adjusted daily prices for SPY and the sector ETFs
- FRED: macro inputs such as the yield curve, fed funds, recession state, and inflation

### Universe

- SPY
- XLB
- XLC
- XLE
- XLF
- XLI
- XLK
- XLP
- XLRE
- XLV
- XLU
- XLY

### Preprocessing Steps

- Pull daily adjusted prices
- Pull macro data
- Convert the data into month-end features
- Save a cached data snapshot so the numbers stay consistent across renders

## 2. Model Design

### Main Idea

The strategy follows a simple process.

1. Find the market regime using SPY and macro data
2. Group sectors into strong, middle, and weak clusters
3. Remove the weak cluster
4. Rank the remaining sectors
5. Use the Kalman filter to confirm the trend
6. Rebalance once per month

### Features Used

- 1 month, 3 month, 6 month, and 12 minus 1 momentum
- Relative strength versus SPY
- 1 month volatility
- 3 month drawdown
- Beta and correlation to SPY
- Kalman slope and Kalman gap

### Market Regimes

I use three market states:

- Bull
- Transition
- Bear market

## 3. Results

### Test Window

- January 1, 2025 to March 31, 2026

### Final Out-of-Sample Comparison

- Strategy total return: 19.5%
- SPY total return: 12.6%
- Strategy Sharpe: 0.71
- SPY Sharpe: 0.54

### Main Takeaway

In this test window, the strategy beat SPY on both return and Sharpe. The model stayed simple: clustering drove the sector choice, and the Kalman filter was only used to confirm the trend.

## 4. Repo Structure

- `deliverables/`: final QMD and final HTML
- `data/cache/`: cached Tiingo and FRED data
- `scripts/`: simple render helper
- `workflow/`: short notes on how the project is organized

## 5. Final Files

- `deliverables/sector rotation project.qmd`
- `deliverables/sector rotation project.html`

## 6. How to Render

Run:

```bash
quarto render "deliverables/sector rotation project.qmd" --to html
```

The final HTML file is already included in this repo.
