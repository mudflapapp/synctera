# Synctera::AccountSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | Account number | [optional] |
| **account_status** | **String** | Account Status | [optional] |
| **account_type** | **String** | The type of the account. In lead mode, this always takes the value of the template. If not specified in shadow mode, CHECKING will be assumed.  | [optional] |
| **balance_ceiling** | [**AccountSummaryBalanceCeiling**](AccountSummaryBalanceCeiling.md) |  | [optional] |
| **balance_floor** | [**AccountSummaryBalanceFloor**](AccountSummaryBalanceFloor.md) |  | [optional] |
| **creation_time** | **Time** | Account creation time | [optional] |
| **currency** | **String** | Account currency or account settlement currency. ISO 4217 alphabetic currency code. Default USD | [optional] |
| **customer_type** | **String** | Customer type | [optional] |
| **financial_institution** | [**FinancialInstitution**](FinancialInstitution.md) |  | [optional] |
| **id** | **String** | The unique identifier of the account the statement belongs to | [optional] |
| **last_updated_time** | **Time** | Account last modification time | [optional] |
| **nickname** | **String** | User provided account nickname | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountSummary.new(
  account_number: null,
  account_status: null,
  account_type: null,
  balance_ceiling: null,
  balance_floor: null,
  creation_time: null,
  currency: USD,
  customer_type: null,
  financial_institution: null,
  id: null,
  last_updated_time: null,
  nickname: null
)
```

