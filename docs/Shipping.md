# Synctera::Shipping

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**Address1**](Address1.md) |  | [optional] |
| **care_of_line** | **String** | The name of the person to send in care of | [optional] |
| **is_expedited_fulfillment** | **Boolean** | Is the shipment expedited | [optional][default to false] |
| **method** | **String** | The shipping method.  * &#x60;INTERNATIONAL_GROUND&#x60; is only available for addresses in Canada and Mexico.  | [optional][default to &#39;LOCAL_MAIL&#39;] |
| **phone_number** | **String** | The phone number of the recipient | [optional] |
| **recipient_name** | [**RecipientName**](RecipientName.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Shipping.new(
  address: null,
  care_of_line: null,
  is_expedited_fulfillment: true,
  method: LOCAL_MAIL,
  phone_number: +14374570680,
  recipient_name: null
)
```

