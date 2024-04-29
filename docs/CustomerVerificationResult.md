# Synctera::CustomerVerificationResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique ID for this verification result. | [optional][readonly] |
| **issues** | **Array&lt;String&gt;** | List of potential problems found. These are subject to change.  | [optional][readonly] |
| **raw_response** | [**RawResponse**](RawResponse.md) |  | [optional] |
| **result** | **String** | The determination of this verification. |  |
| **vendor_info** | [**VerificationVendorInfo**](VerificationVendorInfo.md) |  | [optional] |
| **verification_time** | **Time** | The date and time the verification was completed. |  |
| **verification_type** | [**KycVerificationType**](KycVerificationType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CustomerVerificationResult.new(
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  issues: null,
  raw_response: null,
  result: ACCEPTED,
  vendor_info: null,
  verification_time: null,
  verification_type: null
)
```

