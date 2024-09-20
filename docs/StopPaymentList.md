# Synctera::StopPaymentList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **stop_payments** | [**Array&lt;StopPaymentResponseWAccount&gt;**](StopPaymentResponseWAccount.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::StopPaymentList.new(
  next_page_token: a8937a0d,
  stop_payments: null
)
```

