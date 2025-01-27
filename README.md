# Cake Wallet for Android and iOS

## Open Source Multi-Currency Wallet

## Links

* Website: https://cakewallet.com
* App Store: https://cakewallet.com/ios
* Google Play: https://cakewallet.com/gp
* APK: https://github.com/cake-tech/cake_wallet/releases

## Features

### App-Wide Features

* Completely noncustodial. *Your keys, your coins.*
* Built-in exchange for dozens of pairs
* Buy cryptocurrency with credit/debit/bank
* Sell cryptocurrency by bank transfer
* Scan QR codes for easy cryptocurrency transfers
* Create several wallets
* Select your own custom nodes/servers
* Address book
* Backup to external location or iCloud
* Send to OpenAlias, Unstoppable Domains, Yats, and FIO Crypto Handles
* Set custom fee levels
* Store local transaction notes
* Extremely simple user experience
* Convenient exchange and sending templates for recurring payments

### Monero Specific Features

* The Monero view key is retained on the device for maximum privacy
* Full support for Monero subaddresses and accounts
* Specify restore height for faster syncing
* Specify multiple recipients for batch sending

### Bitcoin Specific Features

* Bitcoin coin control (specify specific outputs to spend)
* Automatically generate new addresses
* Specify multiple recipients for batch sending
* Buy BTC with over a dozen fiat currencies
* Sell BTC for USD

### Litecoin Specific Features

* Litecoin coin control (specify specific outputs to spend)
* Automatically generate new addresses
* Specify multiple recipients for batch sending
* Buy LTC with over a dozen fiat currencies

### Haven Specific Features

* Send, receive, and store XHV and all xAssets like xUSD, xEUR, xAG, etc.

# Monero.com by Cake Wallet for Android and iOS

## Open Source Monero-Only Wallet

*Exchanging to/from other assets is also supported.*

## Links

* Website: https://monero.com
* App Store: https://apps.apple.com/app/id1601990386
* Google Play: https://play.google.com/store/apps/details?id=com.monero.app
* APK: https://github.com/cake-tech/cake_wallet/releases

# Support

We have 24/7 free support. Please contact support@cakewallet.com

# Build Instructions

More instructions to follow

For instructions on how to build for Android: please view file `howto-build-android.md`

# Contributing

## Improving translations

Edit the applicable `strings_XX.arb` file in `res/values/` and open a pull request with the changes.

## Current list of language files:

- English
- Spanish
- French
- German
- Italian
- Portugese
- Dutch
- Polish
- Croatian
- Russian
- Ukranian
- Hindi
- Japanese
- Chinese
- Korean

## Add a new language

1. Create a new `strings_XX.arb` file in `res/values/`, replacing XX with the language's [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1).

2. Edit the strings in this file, replacing XXX below with the translation for each string.

`"welcome" : "Welcome to",` -> `"welcome" : "XXX",`

3. For strings where there is a variable, denoted by a $ symbol and braces, such as ${status}, the string in braces should not be translated. For example, when editing line 106:

"time" : "${minutes}m ${seconds}s"

The only parts to be translated, if needed, are the values m and s after the variables.

4. Add the language to `lib/entities/language_service.dart` under both `supportedLocales` and `localeCountryCode`. Use the name of the language in the local language and in English in parentheses after for `supportedLocales`. Use the [ISO 3166-1 alpha-3 code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) for `localeCountryCode`. You must choose one country, so choose the country with the most native speakers of this language or is otherwise best associated with this language.

5. Add a relevant flag to `assets/images/flags/XXXX.png`, replacing XXXX with the 3 digit localeCountryCode. The image must be 42x36 pizxels with a 3 pixels of transparent margin on all 4 sides.

## Add a new fiat currency

1. Check with [Cake Wallet support](https://guides.cakewallet.com) to see if the desired new fiat currency is available through our fiat API. Not all fiat currencies are.

2. If the currency is associated strongly with a specific issuing country, map the [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) currency code with the applicable [ISO 3166-1 alpha-3 code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) in `lib/entities/fiat_currency.dart`. If the currency is used in a whole region or organization, then map with a reasonable interpretation of this (eg: eur countryCode for EUR symbol).

3. Add the raw mapping underneath in `lib/entities/fiat_currency.dart` following the same format as the others.

4. Add a flag of the issuing country or organization to `assets/images/flags/XXXX.png`, replacing XXXX with the ISO 3166-1 alpha-3 code used above (eg: `usa.png`, `eur.png`). Do not add this if the flag with the same name already exists. The image must be 42x36 pizxels with a 3 pixels of transparent margin on all 4 sides.