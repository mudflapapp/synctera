# Synctera::BulkShipping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**Address**](Address.md) | The address to which the bulk order will be shipped. |  |
| **business_name** | **String** | The name of the business which the bulk order will be shipped | [optional] |
| **is_expedited_fulfillment** | **Boolean** | Is the shipment expedited | [optional][default to false] |
| **method** | [**BulkShippingMethod**](BulkShippingMethod.md) |  | [default to &#39;TWO_DAY&#39;] |
| **phone_number** | **String** | The phone number of the recipient | [optional] |
| **recipient_name** | [**RecipientName**](RecipientName.md) | The name of the recipient to whom the bulk order will be shipped |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BulkShipping.new(
  address: null,
  business_name: null,
  is_expedited_fulfillment: true,
  method: null,
  phone_number: +14374570680,
  recipient_name: null
)
```

