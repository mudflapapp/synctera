# Synctera::WatchlistAlertList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **alerts** | [**Array&lt;WatchlistAlert&gt;**](WatchlistAlert.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::WatchlistAlertList.new(
  next_page_token: a8937a0d,
  alerts: null
)
```

