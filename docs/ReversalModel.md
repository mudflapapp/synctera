# Synctera::ReversalModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the transaction in the smallest whole denomination of the applicable currency (eg. For USD use cents) |  |
| **find_original_window_days** | **Integer** |  | [optional] |
| **is_advice** | **Boolean** |  | [optional][default to false] |
| **network_fees** | [**Array&lt;NetworkFeeModel&gt;**](NetworkFeeModel.md) |  | [optional] |
| **original_transaction_id** | **String** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ReversalModel.new(
  amount: null,
  find_original_window_days: null,
  is_advice: null,
  network_fees: null,
  original_transaction_id: null
)
```

