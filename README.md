# ENV Variables

- ALERT_EMAIL_ADDRESS (ben's email)
- CURRENCY_SYMBOL (REQ)
- TARGET_PRICE (250 cents)
- HOLDINGS (60,049)

# Project Goals

- Alert the user via email when CURRENCY_SYMBOL rises above a certain price (TARGET_PRICE). It will check hourly
- Display current CURRENCY_SYMBOL price on a webpage
- Display current holdings value (HOLDINGS * current price)

# Execution Plan

1. Build webpage displaying current price using coinapi.io
2. Build a background job (worker) checking the price hourly and email if price rises above TARGET_PRICE
3. Refactor webpage + worker to share code in a service
4. Adjust webpage to load the price asynchronously (API call occurs after page load)
5. Add in total holdings value to the webpage ; Also add holdings info in the email
