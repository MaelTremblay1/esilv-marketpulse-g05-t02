@boris94300 ➜ /workspaces/esilv-marketpulse-g05-t02 (docs/checkpoint-a-boris94300) $ pwd
/workspaces/esilv-marketpulse-g05-t02

@boris94300 ➜ /workspaces/esilv-marketpulse-g05-t02 (docs/checkpoint-a-boris94300) $ ls data/sample
bloomberg_reference_expected.json
bloomberg_reference_sample.json
instruments.json
prices.csv

@boris94300 ➜ /workspaces/esilv-marketpulse-g05-t02 (docs/checkpoint-a-boris94300) $ grep AAPL data/sample/prices.csv | head -5
2026-09-01,AAPL,249.20,251.50,248.00,250.00,38000000
2026-09-02,AAPL,250.80,252.80,249.60,251.30,39500000
2026-09-03,AAPL,249.60,251.30,248.40,249.80,41000000
2026-09-04,AAPL,251.30,253.60,250.10,252.10,42500000
2026-09-08,AAPL,251.90,253.90,250.70,252.40,44000000

@boris94300 ➜ /workspaces/esilv-marketpulse-g05-t02 (docs/checkpoint-a-boris94300) $ wc -l data/sample/prices.csv
43 data/sample/prices.csv

@boris94300 ➜ /workspaces/esilv-marketpulse-g05-t02 (docs/checkpoint-a-boris94300) $ cut -d, -f2 data/sample/prices.csv | sort | uniq -c
     21 AAPL
     21 SP500
      1 ticker

@boris94300 ➜ /workspaces/esilv-marketpulse-g05-t02 (docs/checkpoint-a-boris94300) $ git log --oneline --author=boris94300 -5
580de3c docs: add Checkpoint A evidence for boris94300
999f9a6 feat: display first and last observation dates
1762f0e Merge remote-tracking branch 'origin/main' into boris-danailov
dfa728c docs: complete TEAM.md for group G05 team T02
f208b28 refactor: reuse market summary display for instrument and benchmark
