# Synctera::OriginalCreditRequestModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the transaction in the smallest whole denomination of the applicable currency (eg. For USD use cents) |  |
| **card_acceptor** | [**CardAcceptorModel**](CardAcceptorModel.md) |  | [optional] |
| **card_id** | **String** |  |  |
| **mid** | **String** |  |  |
| **screening_score** | **String** |  | [optional] |
| **sender_data** | [**OriginalCreditSenderData**](OriginalCreditSenderData.md) |  | [optional] |
| **transaction_purpose** | **String** |  | [optional] |
| **type** | **String** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::OriginalCreditRequestModel.new(
  amount: null,
  card_acceptor: null,
  card_id: null,
  mid: null,
  screening_score: null,
  sender_data: null,
  transaction_purpose: null,
  type: null
)
```

