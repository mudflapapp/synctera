# Synctera::SingleUseTokenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the account to which the token will be linked |  |
| **customer_id** | **String** | The ID of the customer to whom the token will be issued |  |

## Example

```ruby
require 'synctera'

instance = Synctera::SingleUseTokenRequest.new(
  account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

