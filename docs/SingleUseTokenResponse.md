# Synctera::SingleUseTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_account_mapping_id** | **String** |  | [optional] |
| **expires** | **Time** | yyyy-MM-ddTHH:mm:ssZ |  |
| **token** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::SingleUseTokenResponse.new(
  customer_account_mapping_id: null,
  expires: null,
  token: null
)
```

