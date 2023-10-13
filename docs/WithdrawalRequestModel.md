# Synctera::WithdrawalRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | **String** |  | [optional] |
| **amount** | **Integer** | The amount of the transaction in the smallest whole denomination of the applicable currency (eg. For USD use cents) |  |
| **card_acceptor** | [**CardAcceptorModel**](CardAcceptorModel.md) |  | [optional] |
| **card_id** | **String** |  |  |
| **mid** | **String** |  |  |
| **pin** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::WithdrawalRequestModel.new(
  account_type: null,
  amount: null,
  card_acceptor: null,
  card_id: null,
  mid: null,
  pin: null
)
```

