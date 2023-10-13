# Synctera::InternalAccountPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | [**InternalAccountType**](InternalAccountType.md) |  | [optional] |
| **description** | **String** | A user provided description for the current account | [optional] |
| **purpose** | [**InternalAccountPurpose**](InternalAccountPurpose.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::InternalAccountPatch.new(
  account_type: null,
  description: null,
  purpose: null
)
```

