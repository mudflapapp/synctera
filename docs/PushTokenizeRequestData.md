# Synctera::PushTokenizeRequestData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** |  | [optional] |
| **last_digits** | **String** |  | [optional] |
| **network** | **String** |  | [optional] |
| **opaque_payment_card** | **String** |  | [optional] |
| **token_service_provider** | **String** |  | [optional] |
| **user_address** | [**Address1**](Address1.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PushTokenizeRequestData.new(
  display_name: null,
  last_digits: null,
  network: mastercard,
  opaque_payment_card: null,
  token_service_provider: null,
  user_address: null
)
```

