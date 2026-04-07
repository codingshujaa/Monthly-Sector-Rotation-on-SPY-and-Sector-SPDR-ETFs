# Final Context

## Model Context

I built this project as a monthly sector rotation strategy on SPY and the Select Sector SPDR ETFs. The main idea was to keep clustering as the main part of the model and use the Kalman filter only as the last confirmation step. I wanted the final version to stay simple enough to explain, but still strong enough to be a real trading model.

I ended up thinking about the model in two parts:

1. What kind of market am I in right now?
2. Out of the sectors, which one looks strongest in that market?

That was the basic logic behind the final setup.

## Research Context

The papers below helped shape the model.

### 1. Detecting Multivariate Market Regimes Via Clustering Algorithms
James Mc Greevy, Aitor Muguruza, Zach Issa, Cristopher Salvi, Jonathan Chan, and Zan Zuric  
SSRN, 2024  
Link: https://ssrn.com/abstract=4758243

This paper helped me take clustering more seriously. Before that, clustering can sound like one of those things people add just to say they used machine learning. What I got from this paper was that clustering can actually be a practical way to detect different market environments from the data itself.

That mattered a lot for this project because I wanted clustering to be the real engine of the strategy, not just something decorative. It pushed me toward using clustering to sort the market into broad states first instead of jumping straight into a simple ranking rule.

### 2. Market Regimes, Sectorial Investments, and Time-Varying Risk Premiums
Peixin Liu, Kuan Xu, and Yonggan Zhao  
Link: https://faculty.economics.dal.ca/kxu/RegimeSwitchingSectorETF.pdf

This one was really helpful because it was much closer to what I was actually doing. It is about sector ETFs and how they behave differently in different market regimes. That gave me more confidence that I was not forcing a regime idea onto a problem where it did not belong.

What I really took from it was that sectors do not lead in the same way all the time. A sector that looks strong in one environment may not behave the same way in another one. That fit my project really well because I was trying to make a model that reacts to changing conditions instead of treating every month the same.

### 3. Momentum Crashes
Kent Daniel and Tobias J. Moskowitz  
NBER Working Paper 20439  
Link: https://www.nber.org/papers/w20439

This paper helped as more of a warning sign. It shows that momentum can work for a while and then fall apart pretty badly in certain periods, especially around rebounds. I thought that was important because sector rotation models can very easily become lazy versions of momentum if you are not careful.

For my project, this mattered because it made me more cautious about forcing shorts and also more cautious about just buying whatever had gone up the most. It pushed me toward keeping the Kalman filter as a final trend check so I was not just trusting every noisy move.

## Why These Papers Worked Together

What I liked is that the papers actually fit together pretty naturally.

- One helped justify clustering for regime detection.
- One helped justify why sector leadership should depend on regime.
- One reminded me that trend and momentum signals can get ugly if I use them too blindly.

That combination matched the structure I ended up using. Clustering tells me what kind of environment I am in, sector clustering helps narrow down the list, and the Kalman filter is there to stop me from acting on a messy signal too quickly.

## Backtesting Context

A big part of the project was not just building the model, but actually testing whether it held up in a clean way.

I used the long training period to test different versions of the strategy, like how many sectors to hold, whether to keep a small SPY anchor, and whether shorting the weak sectors actually helped. That part was important because a lot of ideas can sound good until you actually run them through a backtest.

The out-of-sample window mattered even more to me because that is where the model had to stand on its own. I did not want to keep a version just because it looked good in training. I wanted the final version to be something that still made sense once it was pushed into the later test period.

That is also why I ended up keeping the final model fairly simple. The more I tested different versions, the more it felt like a cleaner structure was easier to trust than something overly complicated.

## How AI Helped

I used AI a lot like a working helper in the background. Not really as something making the project for me, but more like something I could bounce work off when I was stuck or when I wanted to move faster.

For the research papers, AI honestly helped a lot because some of those papers are long and kind of dense on first read. I used it to break them down into normal language first, figure out the main idea, and then decide if the paper was actually useful for my project or just sounded smart. That saved me time because instead of getting lost in every section, I could focus on what part of the paper actually mattered for the model.

It also helped me when I was trying to make the model more coherent. There were a few times where the idea in my head sounded fine, but once I tried to explain it properly, it became obvious that parts of it did not fully connect. AI helped me pressure-test that logic a bit. For example, it helped me think more clearly about whether clustering was really the main signal method or whether I was accidentally turning the strategy into something else.

On the coding side, I used AI to help debug parts of the R and Quarto workflow. A lot of it was not glamorous stuff. It was things like fixing broken chunks, checking why some numbers changed, cleaning up messy code, and making sure the writeup matched the actual results. That part was honestly useful because little technical issues can eat a lot of time.

AI also helped during the backtesting stage. When I was trying different versions of the model, it helped me compare setups more clearly, spot when the benchmark story was weak, and notice when the final writeup was saying something that the tables did not really support. That was helpful because it forced me to be more honest about what was actually working and what was not.

It also helped on the writing side. Sometimes I knew what I wanted to say, but it came out too wordy, too stiff, or too vague. AI helped me simplify parts of the explanation, tighten sections that were dragging, and make the final report easier to present out loud. Same thing with the repo. It helped me organize the files so the final project looked cleaner and easier to follow.

So overall, AI helped me most with paper summaries, debugging, backtest cleanup, and making the project more organized. But I still had to decide what was actually relevant, what model version to keep, which results were believable, and how I wanted the final story of the project to come together.
