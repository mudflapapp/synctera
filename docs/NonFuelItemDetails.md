# Synctera::NonFuelItemDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **product_code** | **String** |  | [optional] |
| **quantity** | **Integer** |  | [optional] |
| **unit_of_measure** | **String** |  | [optional] |
| **unit_price** | **Integer** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::NonFuelItemDetails.new(
  description: Item description,
  product_code: PC001,
  quantity: 10,
  unit_of_measure: Units,
  unit_price: 15
)
```

