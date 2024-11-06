# Synctera::AchTransactionSimulationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | Number of the receiving account |  |
| **amount** | **Integer** | Amount to transfer in cents (e.g. 100 &#x3D; $1). Generates a prenote if set to 0. |  |
| **dc_sign** | **String** | The type of transaction (debit or credit) in relation to the receiving account. A credit is a transfer in and a debit is a transfer pulling money out of the receiving account. |  |
| **effective_date** | **Date** | Effective date of the transaction. Transactions with the current date or date in the past are posted immediately. Future-dated transactions are scheduled to be posted on the chosen date. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AchTransactionSimulationRequest.new(
  account_number: 123638791329,
  amount: 607,
  dc_sign: debit,
  effective_date: Thu Mar 17 20:00:00 EDT 2022
)
```

