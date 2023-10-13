# Synctera::WatchlistAlert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | When this alert was created | [optional] |
| **id** | **String** | Unique identifier for this alert | [optional] |
| **provider_info** | **Object** | The information provided to Synctera that triggered this alert, as an arbitrary JSON object. Interpretation of this object is up to the client.  | [optional] |
| **provider_subject_id** | **String** | The id of the provider subject for this alert | [optional] |
| **provider_subscription_id** | **String** | The id of the provider subscription for this alert | [optional] |
| **provider_watchlist_name** | **String** | The name of the provider for this alert | [optional] |
| **status** | **String** | The status of this alert |  |
| **urls** | **Array&lt;String&gt;** | Where to get more information about this alert (according to our third-party data provider).  | [optional] |
| **vendor_info** | [**VendorInfo**](VendorInfo.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::WatchlistAlert.new(
  created: null,
  id: null,
  provider_info: null,
  provider_subject_id: null,
  provider_subscription_id: null,
  provider_watchlist_name: null,
  status: null,
  urls: null,
  vendor_info: null
)
```

