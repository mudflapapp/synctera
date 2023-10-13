# Synctera::AuthRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the transaction in the smallest whole denomination of the applicable currency (eg. For USD use cents) |  |
| **card_acceptor** | [**CardAcceptorModel**](CardAcceptorModel.md) |  | [optional] |
| **card_id** | **String** |  |  |
| **card_options** | [**CardOptions**](CardOptions.md) |  | [optional] |
| **cash_back_amount** | **Integer** |  | [optional] |
| **is_pre_auth** | **Boolean** |  | [optional][default to false] |
| **mid** | **String** |  |  |
| **network_fees** | [**Array&lt;NetworkFeeModel&gt;**](NetworkFeeModel.md) |  | [optional] |
| **pin** | **String** |  | [optional] |
| **transaction_options** | [**TransactionOptions**](TransactionOptions.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AuthRequestModel.new(
  amount: null,
  card_acceptor: null,
  card_id: null,
  card_options: null,
  cash_back_amount: null,
  is_pre_auth: null,
  mid: null,
  network_fees: null,
  pin: null,
  transaction_options: null
)
```

