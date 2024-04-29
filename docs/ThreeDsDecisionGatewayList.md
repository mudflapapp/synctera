# Synctera::ThreeDsDecisionGatewayList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **gateways** | [**Array&lt;ThreeDsDecisionGatewayResponse&gt;**](ThreeDsDecisionGatewayResponse.md) | Array of 3DS decision gateways |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ThreeDsDecisionGatewayList.new(
  next_page_token: a8937a0d,
  gateways: null
)
```

