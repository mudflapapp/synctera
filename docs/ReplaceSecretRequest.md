# Synctera::ReplaceSecretRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_rolling_secret** | **Boolean** | Set true to let the current secret expire in the next 24 hours. Set false to let the current secret expire immediately. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ReplaceSecretRequest.new(
  is_rolling_secret: null
)
```

