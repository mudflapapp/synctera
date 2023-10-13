# Synctera::CardActivationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activation_code** | **String** | An activation code provided with the card required to prove possession of the card |  |
| **customer_id** | **String** | The ID of the customer for which card is being activated |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CardActivationRequest.new(
  activation_code: null,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

