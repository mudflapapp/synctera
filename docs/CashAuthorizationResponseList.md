# Synctera::CashAuthorizationResponseList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **authorizations** | [**Array&lt;CashAuthorizationResponse&gt;**](CashAuthorizationResponse.md) | Array of authorizations. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CashAuthorizationResponseList.new(
  next_page_token: a8937a0d,
  authorizations: null
)
```

