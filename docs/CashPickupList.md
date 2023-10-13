# Synctera::CashPickupList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **cash_pickups** | [**Array&lt;CashPickup&gt;**](CashPickup.md) | Array of cash pickups |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CashPickupList.new(
  next_page_token: a8937a0d,
  cash_pickups: null
)
```

