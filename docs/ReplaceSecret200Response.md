# Synctera::ReplaceSecret200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deleted_at** | **Time** | Timestamp that the old secret is delete | [optional] |
| **secret** | **String** | Generated secret. Do not share. This secret will be used to verify that webhook requests were sent from Synctera. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ReplaceSecret200Response.new(
  deleted_at: null,
  secret: null
)
```

