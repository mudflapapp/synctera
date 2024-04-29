# Synctera::FdxTokenList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **fdx_tokens** | [**Array&lt;FdxTokenResponse&gt;**](FdxTokenResponse.md) | Array of FDX tokens |  |

## Example

```ruby
require 'synctera'

instance = Synctera::FdxTokenList.new(
  next_page_token: a8937a0d,
  fdx_tokens: null
)
```

