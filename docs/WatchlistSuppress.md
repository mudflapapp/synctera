# Synctera::WatchlistSuppress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **provider_subject_id** | **String** | The id of the subject (person) for whom future alerts should be suppressed.  |  |
| **provider_subscription_id** | **String** | The provider&#39;s id for the subscription that caused the alert(s) that are being suppressed.  |  |
| **status** | **String** | The status of this suppression |  |

## Example

```ruby
require 'synctera'

instance = Synctera::WatchlistSuppress.new(
  provider_subject_id: null,
  provider_subscription_id: null,
  status: null
)
```

