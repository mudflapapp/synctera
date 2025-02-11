# Synctera::ItemDetailTaxes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **detail_tax_amount** | **Integer** |  | [optional] |
| **detail_tax_amount_inclusion_indicator** | **String** |  | [optional] |
| **detail_tax_amount_indicator** | **String** |  | [optional] |
| **detail_tax_rate** | **Integer** |  | [optional] |
| **detail_tax_type_applied** | **String** |  | [optional] |
| **detail_tax_type_identifier** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ItemDetailTaxes.new(
  detail_tax_amount: 1,
  detail_tax_amount_inclusion_indicator: Included,
  detail_tax_amount_indicator: D,
  detail_tax_rate: 1,
  detail_tax_type_applied: VAT,
  detail_tax_type_identifier: VAT123
)
```

