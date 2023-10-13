# Synctera::Authenticate3dsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **challenge_jwt** | **String** | The JWT recieved from the 3DS challenge |  |
| **id** | **String** | The unique identifier of the 3DS authentication |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Authenticate3dsRequest.new(
  challenge_jwt: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

