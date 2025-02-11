# Synctera::FleetsEmv

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **employee_number** | **String** |  | [optional] |
| **expanded_fuel_type** | **String** |  | [optional] |
| **fuel_gross_amount** | **Integer** |  | [optional] |
| **fuel_net_amount** | **Integer** |  | [optional] |
| **fuel_quantity** | **Float** |  | [optional] |
| **fuel_unit_of_measure** | **String** |  | [optional] |
| **fuel_unit_price** | **Float** |  | [optional] |
| **non_fuel_gross_amount** | **Integer** |  | [optional] |
| **non_fuel_item_details** | [**Array&lt;NonFuelItemDetails&gt;**](NonFuelItemDetails.md) |  | [optional] |
| **non_fuel_net_amount** | **Integer** |  | [optional] |
| **odometer_reading** | **String** |  | [optional] |
| **service_type** | **String** |  | [optional] |
| **trailer_number** | **String** |  | [optional] |
| **type_of_purchase** | **String** |  | [optional] |
| **vat_tax_rate** | **Float** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::FleetsEmv.new(
  employee_number: EMP001,
  expanded_fuel_type: TypeC,
  fuel_gross_amount: 165,
  fuel_net_amount: 150,
  fuel_quantity: 40,
  fuel_unit_of_measure: Gallons,
  fuel_unit_price: 1.1,
  non_fuel_gross_amount: 275,
  non_fuel_item_details: null,
  non_fuel_net_amount: 250,
  odometer_reading: 654321,
  service_type: Repair,
  trailer_number: TR002,
  type_of_purchase: Non-Fuel,
  vat_tax_rate: 0.15
)
```

