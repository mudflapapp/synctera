# Synctera::RawResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider** | [**ProviderType**](ProviderType.md) |  | [optional] |
| **raw_data** | **String** | Raw data from an external provider, as a JSON string. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::RawResponse.new(
  provider: null,
  raw_data: {}
)
```

