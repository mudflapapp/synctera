# Synctera::Fleets

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **driver_id** | **String** |  | [optional] |
| **expanded_fuel_type** | **String** |  | [optional] |
| **fleet_number** | **String** |  | [optional] |
| **fuel_gross_amount** | **Integer** |  | [optional] |
| **fuel_net_amount** | **Integer** |  | [optional] |
| **fuel_product_qualifier** | **String** |  | [optional] |
| **fuel_purchase_type** | **String** |  | [optional] |
| **fuel_quantity** | **Float** |  | [optional] |
| **fuel_service_type** | **String** |  | [optional] |
| **fuel_tax_amount** | **Integer** |  | [optional] |
| **fuel_tax_exemption_status** | **String** |  | [optional] |
| **fuel_type** | **String** |  | [optional] |
| **fuel_unit_of_measure** | **String** |  | [optional] |
| **fuel_unit_price** | **Float** |  | [optional] |
| **job_number** | **String** |  | [optional] |
| **non_fuel_gross_amount** | **Integer** |  | [optional] |
| **non_fuel_item_details** | [**Array&lt;NonFuelItemDetails&gt;**](NonFuelItemDetails.md) |  | [optional] |
| **non_fuel_net_amount** | **Integer** |  | [optional] |
| **non_fuel_tax_amount** | **Integer** |  | [optional] |
| **non_fuel_tax_exemption_status** | **String** |  | [optional] |
| **odometer_reading** | **String** |  | [optional] |
| **sales_tax_amount** | **Integer** |  | [optional] |
| **service_type** | **String** |  | [optional] |
| **type_of_purchase** | **String** |  | [optional] |
| **vat_tax_rate** | **Float** |  | [optional] |
| **vehicle_id** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Fleets.new(
  driver_id: DR789,
  expanded_fuel_type: TypeB,
  fleet_number: FL123,
  fuel_gross_amount: 220,
  fuel_net_amount: 200,
  fuel_product_qualifier: QualifierA,
  fuel_purchase_type: TypeA,
  fuel_quantity: 50,
  fuel_service_type: ServiceA,
  fuel_tax_amount: 20,
  fuel_tax_exemption_status: Exempt,
  fuel_type: Diesel,
  fuel_unit_of_measure: Liters,
  fuel_unit_price: 1.5,
  job_number: JN456,
  non_fuel_gross_amount: 330,
  non_fuel_item_details: null,
  non_fuel_net_amount: 300,
  non_fuel_tax_amount: 30,
  non_fuel_tax_exemption_status: Non-Exempt,
  odometer_reading: 123456,
  sales_tax_amount: 100,
  service_type: Maintenance,
  type_of_purchase: Fuel,
  vat_tax_rate: 0.15,
  vehicle_id: VH012
)
```

