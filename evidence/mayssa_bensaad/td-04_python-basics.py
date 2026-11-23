from module import (
    filter_prices,
    get_first_close,
    get_last_close,
    load_instruments,
    load_prices,
)


def display_market_summary(asset, prices, show_currency=True):
    first_close = get_first_close(prices)
    last_close = get_last_close(prices)
    currency_suffix = f" {asset.get('currency', '')}" if show_currency else ""

    print(f"{asset['ticker']} - {asset['name']}")
    print(f"Observations : {len(prices)}")
    print(f"First close  : {first_close:.2f}{currency_suffix}")
    print(f"Last close   : {last_close:.2f}{currency_suffix}")


instruments = load_instruments()
prices = load_prices()

instrument = instruments["instrument"]
benchmark = instruments["benchmark"]

instrument_prices = filter_prices(prices, instrument["ticker"])
benchmark_prices = filter_prices(prices, benchmark["ticker"])

print("=== TD-04 Market Summary ===\n")
display_market_summary(instrument, instrument_prices, show_currency=True)
print()
display_market_summary(benchmark, benchmark_prices, show_currency=False)
