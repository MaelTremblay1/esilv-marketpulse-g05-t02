#!/usr/bin/env bash
# TD-03 - Linux basics (Mayssa Bensaad)
# Each command is followed by its output, shown as comments.
# Run from the repository root.

pwd
# /workspaces/esilv-marketpulse-g05-t02

ls
# CONTRIBUTING.md
# README.md
# TEAM.md
# TEAM_TEMPLATE.md
# config
# data
# docs
# evidence
# notebooks
# requirements.txt
# src

ls -la data/sample
# total 36
# drwxrwxrwx+ 2 codespace root 4096 Nov 23 15:46 .
# drwxrwxrwx+ 3 codespace root 4096 Nov 23 15:46 ..
# -rw-rw-rw-  1 codespace root 7240 Nov 23 15:46 bloomberg_reference_expected.json
# -rw-rw-rw-  1 codespace root 9921 Nov 23 15:46 bloomberg_reference_sample.json
# -rw-rw-rw-  1 codespace root  230 Nov 23 15:46 instruments.json
# -rw-rw-rw-  1 codespace root 2223 Nov 23 15:46 prices.csv

cd data/sample

pwd
# /workspaces/esilv-marketpulse-g05-t02/data/sample

cat instruments.json
# {
#   "instrument": {
#     "ticker": "AAPL",
#     "name": "Apple Inc.",
#     "currency": "USD",
#     "market": "NASDAQ"
#   },
#   "benchmark": {
#     "ticker": "SP500",
#     "name": "S&P 500",
#     "currency": "USD",
#     "market": "US"
#   }
# }

head -5 prices.csv
# date,ticker,open,high,low,close,volume
# 2026-09-01,AAPL,249.20,251.50,248.00,250.00,38000000
# 2026-09-01,SP500,6592.00,6615.00,6580.00,6600.00,0
# 2026-09-02,AAPL,250.80,252.80,249.60,251.30,39500000
# 2026-09-02,SP500,6607.00,6627.00,6595.00,6612.00,0

grep AAPL prices.csv | head -3
# 2026-09-01,AAPL,249.20,251.50,248.00,250.00,38000000
# 2026-09-02,AAPL,250.80,252.80,249.60,251.30,39500000
# 2026-09-03,AAPL,249.60,251.30,248.40,249.80,41000000

grep -c AAPL prices.csv
# 21

grep -c SP500 prices.csv
# 21

wc -l prices.csv
# 43 prices.csv

cd ../..

pwd
# /workspaces/esilv-marketpulse-g05-t02
