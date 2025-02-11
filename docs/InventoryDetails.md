# Synctera::InventoryDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commodity_code** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **discount_amount** | **String** |  | [optional] |
| **item_detail_taxes** | [**Array&lt;ItemDetailTaxes&gt;**](ItemDetailTaxes.md) |  | [optional] |
| **item_discount_amount** | **Integer** |  | [optional] |
| **item_discount_amount_indicator** | **String** |  | [optional] |
| **item_discount_applied_indicator** | **String** |  | [optional] |
| **item_discount_rate** | **Integer** |  | [optional] |
| **item_extended_amount** | **Integer** |  | [optional] |
| **item_extended_amount_indicator** | **String** |  | [optional] |
| **item_total_amount** | **Integer** |  | [optional] |
| **item_total_amount_indicator** | **String** |  | [optional] |
| **item_vat_amount** | **Integer** |  | [optional] |
| **item_vat_rate** | **Integer** |  | [optional] |
| **product_code** | **String** |  | [optional] |
| **quantity** | **Float** |  | [optional] |
| **total_amount** | **String** |  | [optional] |
| **unit_of_measure** | **String** |  | [optional] |
| **unit_price** | **Integer** |  | [optional] |
| **vat_tax_amount** | **String** |  | [optional] |
| **vat_tax_rate** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::InventoryDetails.new(
  commodity_code: COM123,
  description: Item description,
  discount_amount: 5.00,
  item_detail_taxes: null,
  item_discount_amount: 500,
  item_discount_amount_indicator: D,
  item_discount_applied_indicator: true,
  item_discount_rate: 10,
  item_extended_amount: 1000,
  item_extended_amount_indicator: E,
  item_total_amount: 1500,
  item_total_amount_indicator: T,
  item_vat_amount: 200,
  item_vat_rate: 20,
  product_code: PROD123,
  quantity: 10,
  total_amount: 1500.00,
  unit_of_measure: Piece,
  unit_price: 100,
  vat_tax_amount: 200.00,
  vat_tax_rate: 0.20
)
```

