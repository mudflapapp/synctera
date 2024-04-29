# Synctera::ClearingModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the transaction in the smallest whole denomination of the applicable currency (eg. For USD use cents) |  |
| **card_acceptor** | [**CardAcceptorModel**](CardAcceptorModel.md) |  | [optional] |
| **force_post** | **Boolean** |  | [optional][default to false] |
| **is_refund** | **Boolean** |  | [optional][default to false] |
| **mid** | **String** |  | [optional] |
| **network_fees** | [**Array&lt;NetworkFeeModel&gt;**](NetworkFeeModel.md) |  | [optional] |
| **original_transaction_id** | **String** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ClearingModel.new(
  amount: null,
  card_acceptor: null,
  force_post: null,
  is_refund: null,
  mid: null,
  network_fees: null,
  original_transaction_id: null
)
```

