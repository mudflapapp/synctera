# Synctera::Shipping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**Address**](Address.md) | The address to which the card will be shipped - Defaults to account shipping address if none supplied | [optional] |
| **care_of_line** | **String** | The name of the person to send in care of | [optional] |
| **is_expedited_fulfillment** | **Boolean** | Is the shipment expedited | [optional][default to false] |
| **method** | [**ShippingMethod**](ShippingMethod.md) |  | [optional][default to &#39;LOCAL_MAIL&#39;] |
| **phone_number** | **String** | The phone number of the recipient | [optional] |
| **recipient_name** | [**RecipientName**](RecipientName.md) | The name of the recipient to whom the card will be shipped | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Shipping.new(
  address: null,
  care_of_line: null,
  is_expedited_fulfillment: true,
  method: null,
  phone_number: +14374570680,
  recipient_name: null
)
```

