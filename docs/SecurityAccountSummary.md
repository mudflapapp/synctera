# Synctera::SecurityAccountSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The unique identifier of the backing account. | [optional] |
| **account_number** | **String** | Account number of the backing account. | [optional] |
| **account_type** | **String** | The type of the account. It refers to the backing account.  | [optional] |
| **apy** | **Integer** | The annual percentage yield (APY) for the security account for this statement period, in basis points. For example, an APY of 5.5% will display as 550.  | [optional] |
| **closing_balance** | **Integer** | The security account balance at the end of the statement period, in ISO 4217 minor currency units. For example, $1,000 USD will be displayed as 100000. | [optional] |
| **disclosure** | **String** |  | [optional] |
| **interest** | **Integer** | The total interest earned by the security account for this statement period in ISO 4217 minor currency units. For example, $1.50 USD of interest will be displayed as 150.  | [optional] |
| **interest_previous_month** | **Integer** | The total interest earned by the security account in the previous statement period in ISO 4217 minor currency units. For example, $1.50 USD of interest will be displayed as 150.  | [optional] |
| **interest_previous_year** | **Integer** | The total interest earned by the security account in the previous year in ISO 4217 minor currency units. For example, $100 USD of interest will be displayed as 10000.  | [optional] |
| **interest_ytd** | **Integer** | The total interest earned by the security account for this year to date in ISO 4217 minor currency units. For example, $100 USD of interest will be displayed as 10000.  | [optional] |
| **opening_balance** | **Integer** | The security account balance at the start of the statement period, in ISO 4217 minor currency units. For example, $1,000 USD will be displayed as 100000. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SecurityAccountSummary.new(
  account_id: null,
  account_number: null,
  account_type: null,
  apy: 550,
  closing_balance: 100000,
  disclosure: null,
  interest: 150,
  interest_previous_month: 150,
  interest_previous_year: 10000,
  interest_ytd: 10000,
  opening_balance: 100000
)
```

