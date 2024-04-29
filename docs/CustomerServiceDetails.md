# Synctera::CustomerServiceDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**Address1**](Address1.md) |  | [optional] |
| **email** | **String** | The customer service email address | [optional] |
| **phone_number** | **String** | The customer service phone number | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CustomerServiceDetails.new(
  address: null,
  email: null,
  phone_number: null
)
```

