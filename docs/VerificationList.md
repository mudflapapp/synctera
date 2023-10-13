# Synctera::VerificationList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **verifications** | [**Array&lt;Verification&gt;**](Verification.md) | Array of verification results. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::VerificationList.new(
  next_page_token: a8937a0d,
  verifications: null
)
```

