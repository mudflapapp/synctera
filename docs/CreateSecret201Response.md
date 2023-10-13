# Synctera::CreateSecret201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **secret** | **String** | Generated secret. Do not share. This secret will be used to verify that webhook requests were sent from Synctera. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CreateSecret201Response.new(
  secret: null
)
```

