# Synctera::FinancialRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the transaction in the smallest whole denomination of the applicable currency (eg. For USD use cents) |  |
| **card_acceptor** | [**CardAcceptorModel**](CardAcceptorModel.md) |  |  |
| **card_id** | **String** |  |  |
| **cash_back_amount** | **Integer** | Cash back amount in the smallest whole denomination of the applicable currency (eg. For USD use cents) | [optional] |
| **is_pre_auth** | **Boolean** |  | [optional][default to false] |
| **mid** | **String** |  |  |
| **pin** | **String** |  | [optional] |
| **transaction_options** | [**TransactionOptions**](TransactionOptions.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::FinancialRequestModel.new(
  amount: null,
  card_acceptor: null,
  card_id: null,
  cash_back_amount: null,
  is_pre_auth: null,
  mid: null,
  pin: null,
  transaction_options: null
)
```

