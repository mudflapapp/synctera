# Synctera::Financial

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tax_id** | **String** |  | [optional] |
| **total_tax_amount** | **Integer** |  | [optional] |
| **total_tax_amount_indicator** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Financial.new(
  tax_id: TAX123,
  total_tax_amount: 200,
  total_tax_amount_indicator: Indicator
)
```

