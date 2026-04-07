# Model Flow

This is the simple flow of the project.

1. Pull adjusted ETF prices from Tiingo.
2. Pull macro data from FRED.
3. Build month-end features.
4. Cluster the market into bull, transition, and bear market states.
5. Cluster the sectors into strong, middle, and weak groups.
6. Use the Kalman filter as the final trend check.
7. Rebalance once per month.
8. Compare the strategy against SPY in the test period.
