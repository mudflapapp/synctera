# Synctera::SavingsSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apy** | **Float** | The annual percentage yield (APY) for this account for this statement period, rounded to two decimal points. For example, an APY of 5.5% will display as 5.50.  | [optional] |
| **interest_earned** | **Integer** | The total interest earned by the depository account for this statement period in ISO 4217 minor currency units. For example, $1.50 USD of interest will be displayed as 150.  | [optional] |
| **interest_earned_previous_month** | **Integer** | The total interest earned by the depository account in the previous statement period in ISO 4217 minor currency units. For example, $1.50 USD of interest will be displayed as 150.  | [optional] |
| **interest_earned_previous_year** | **Integer** | The total interest earned by the depository account in the previous year in ISO 4217 minor currency units. For example, $100 USD of interest will be displayed as 10000.  | [optional] |
| **interest_earned_ytd** | **Integer** | The total interest earned by the depository account for this year to date in ISO 4217 minor currency units. For example, $100 USD of interest will be displayed as 10000.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SavingsSummary.new(
  apy: 5.5,
  interest_earned: 150,
  interest_earned_previous_month: 150,
  interest_earned_previous_year: 10000,
  interest_earned_ytd: 10000
)
```

