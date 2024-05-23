# Synctera::SpecificInvolvement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **arms_defense_or_security** | **Boolean** | Defines if the business is in the arms/defense, private security firms, or private military contractors. | [optional] |
| **cannabis_industry** | **Boolean** | Defines if the business is in the cannabis industry. | [optional] |
| **embassies_or_consulates** | **Boolean** | Defines if the business is an embassy or a consulate. | [optional] |
| **illegal_activities_prostitution_or_pirated_goods** | **Boolean** | Defines if the business is involved in illegal activities, prostitution, or pirated goods. | [optional] |
| **law_firm_or_fiduciary** | **Boolean** | Defines if the business is a law firm or a fiduciary. | [optional] |
| **licensed_money_service_business** | **Boolean** | Defines if the business is a licensed money service business. | [optional] |
| **lotteries_crypto_currency_or_illegal_internet_gambling** | **Boolean** | Defines if the business is a provider of online lottery, mail order lotteries and sweepstakes Non-Fiat Currency (including open loop virtual currency), and Unlawful Internet Gambling. | [optional] |
| **ngo_or_nonprofit** | **Boolean** | Defines if the business is a NGO or a nonprofit. | [optional] |
| **precious_metals_stones_or_jewellery** | **Boolean** | Defines if the business is in the precious metals, stones, jewellery industry, or rough diamond trade. | [optional] |
| **shell_banks_or_unlicensed_money_service_business** | **Boolean** | Defines if the business is a shell bank or a money service business where licensing is required. | [optional] |
| **third_party_processor** | **Boolean** | Defines if the business is a third party processor. | [optional] |
| **wellness_gift_cards_wholesaler** | **Boolean** | Defines if the business is a salon, massage clinic, spa, gift card retailer, or wholesaler. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SpecificInvolvement.new(
  arms_defense_or_security: true,
  cannabis_industry: true,
  embassies_or_consulates: true,
  illegal_activities_prostitution_or_pirated_goods: true,
  law_firm_or_fiduciary: true,
  licensed_money_service_business: true,
  lotteries_crypto_currency_or_illegal_internet_gambling: true,
  ngo_or_nonprofit: true,
  precious_metals_stones_or_jewellery: true,
  shell_banks_or_unlicensed_money_service_business: true,
  third_party_processor: true,
  wellness_gift_cards_wholesaler: true
)
```

