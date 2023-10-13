# Synctera::PaymentList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **payments** | [**Array&lt;Payment&gt;**](Payment.md) | Array of payments |  |

## Example

```ruby
require 'synctera'

instance = Synctera::PaymentList.new(
  next_page_token: a8937a0d,
  payments: null
)
```

