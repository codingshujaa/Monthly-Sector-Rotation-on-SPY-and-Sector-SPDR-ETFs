# Monthly-Sector-Rotation-on-SPY-and-Sector-SPDR-ETFs
I built this as a monthly active manager model on SPY and the Select Sector SPDR ETFs. The idea is simple. Clustering is the main signal engine. The Kalman filter is the confirmation layer. Daily data is only used to build cleaner month-end signals and the portfolio rebalances once per month on the first trading day of the next month.
