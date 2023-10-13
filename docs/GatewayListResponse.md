# Synctera::GatewayListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **gateways** | [**Array&lt;GatewayResponse&gt;**](GatewayResponse.md) | Array of Authorization gateway configuration | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::GatewayListResponse.new(
  next_page_token: a8937a0d,
  gateways: null
)
```

