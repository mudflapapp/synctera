# Synctera::L2l3Model

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enhanced_data_id** | **String** |  | [optional] |
| **financial** | [**Financial**](Financial.md) |  | [optional] |
| **fleet_emv** | [**FleetsEmv**](FleetsEmv.md) |  | [optional] |
| **fleets** | [**Fleets**](Fleets.md) |  | [optional] |
| **inventory_details** | [**Array&lt;InventoryDetails&gt;**](InventoryDetails.md) |  | [optional] |
| **original_transaction_id** | **String** | Value of the &#x60;transaction.token&#x60; returned in the simulated clearing response. |  |
| **purchase_order** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::L2l3Model.new(
  enhanced_data_id: ED123456,
  financial: null,
  fleet_emv: null,
  fleets: null,
  inventory_details: null,
  original_transaction_id: null,
  purchase_order: PO987654
)
```

