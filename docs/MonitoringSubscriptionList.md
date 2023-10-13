# Synctera::MonitoringSubscriptionList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **subscriptions** | [**Array&lt;MonitoringSubscription&gt;**](MonitoringSubscription.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::MonitoringSubscriptionList.new(
  next_page_token: a8937a0d,
  subscriptions: null
)
```

