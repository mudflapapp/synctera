# Synctera::VerificationVendorInfoDetail

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Vendor specific code. | [optional] |
| **description** | **String** | Description of vendor specific code. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::VerificationVendorInfoDetail.new(
  code: R186,
  description: Global Watchlist sources selected are correlated with the input identifiers
)
```

