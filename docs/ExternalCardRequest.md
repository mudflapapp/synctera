# Synctera::ExternalCardRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | The unique identifier of a business | [optional] |
| **customer_id** | **String** | The unique identifier of a customer |  |
| **name** | **String** | The cardholder name |  |
| **token** | **String** | The token that was returned via tokenization iframe |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalCardRequest.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  name: Jean Valjean,
  token: null
)
```

