# Synctera::AdhocVerificationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID for this verification result. |  |
| **matching_watchlists** | **Array&lt;String&gt;** | list of watchlists that the subject of the request matched  |  |
| **result** | [**VerificationResult**](VerificationResult.md) |  |  |
| **vendor_info** | [**VendorInfo**](VendorInfo.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AdhocVerificationResponse.new(
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  matching_watchlists: null,
  result: null,
  vendor_info: null
)
```

