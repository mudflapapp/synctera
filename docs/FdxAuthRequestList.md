# Synctera::FdxAuthRequestList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **fdx_auth_requests** | [**Array&lt;FdxAuthRequestResponse&gt;**](FdxAuthRequestResponse.md) | Array of FDX authorization requests |  |

## Example

```ruby
require 'synctera'

instance = Synctera::FdxAuthRequestList.new(
  next_page_token: a8937a0d,
  fdx_auth_requests: null
)
```

