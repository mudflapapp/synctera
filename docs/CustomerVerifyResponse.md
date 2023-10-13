# Synctera::CustomerVerifyResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **kyc_status** | [**CustomerKycStatus**](CustomerKycStatus.md) |  |  |
| **verifications** | [**Array&lt;CustomerVerificationResult&gt;**](CustomerVerificationResult.md) | Array of verification results. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CustomerVerifyResponse.new(
  next_page_token: a8937a0d,
  kyc_status: null,
  verifications: null
)
```

