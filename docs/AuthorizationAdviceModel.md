# Synctera::AuthorizationAdviceModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the transaction in the smallest whole denomination of the applicable currency (eg. For USD use cents) |  |
| **network_fees** | [**Array&lt;NetworkFeeModel&gt;**](NetworkFeeModel.md) |  | [optional] |
| **original_transaction_id** | **String** |  |  |
| **transaction_options** | [**TransactionOptions**](TransactionOptions.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AuthorizationAdviceModel.new(
  amount: null,
  network_fees: null,
  original_transaction_id: null,
  transaction_options: null
)
```

