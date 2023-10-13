# Synctera::DepositPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the account |  |
| **back_image_id** | **String** | ID of the uploaded image of the back of the check |  |
| **business_id** | **String** | Unique ID for the business. Exactly one of &#x60;business_id&#x60; or &#x60;person_id&#x60; must be set.  | [optional] |
| **check_amount** | **Integer** | Amount on check in ISO 4217 minor currency units |  |
| **deposit_currency** | **String** | ISO 4217 currency code for the deposit amount |  |
| **front_image_id** | **String** | ID of the uploaded image of the front of the check |  |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **person_id** | **String** | Unique ID for the person. Exactly one of &#x60;person_id&#x60; or &#x60;business_id&#x60; must be set.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::DepositPost.new(
  account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  back_image_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  business_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  check_amount: 12345,
  deposit_currency: USD,
  front_image_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  metadata: null,
  person_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96
)
```

