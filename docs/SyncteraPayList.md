# Synctera::SyncteraPayList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **transfers** | [**Array&lt;SyncteraPayResponse&gt;**](SyncteraPayResponse.md) | Array of transfers. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::SyncteraPayList.new(
  next_page_token: a8937a0d,
  transfers: null
)
```

