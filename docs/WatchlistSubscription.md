# Synctera::WatchlistSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **auto_renew** | **Boolean** | Whether this subscription should automatically renew when the subscription period is over (default: vendor-dependent).  | [optional] |
| **created** | **Time** | When this subscription was created | [optional] |
| **customer_consent** | **Boolean** | Whether this customer has consented to being enrolled for watchlist monitoring  |  |
| **id** | **String** | Unique identifier for this subscription | [optional] |
| **period_end** | **Date** | The date when monitoring of this individual should end. | [optional] |
| **period_start** | **Date** | The date when monitoring of this individual should begin (default: today). | [optional] |
| **provider_subscription_id** | **String** | External provider subscription id | [optional] |
| **status** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::WatchlistSubscription.new(
  auto_renew: null,
  created: null,
  customer_consent: null,
  id: null,
  period_end: null,
  period_start: null,
  provider_subscription_id: null,
  status: null
)
```

