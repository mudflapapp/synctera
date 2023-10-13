# Synctera::SpendControlResponseList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **spend_controls** | [**Array&lt;SpendControlResponse&gt;**](SpendControlResponse.md) | Array of Spend Controls |  |

## Example

```ruby
require 'synctera'

instance = Synctera::SpendControlResponseList.new(
  next_page_token: a8937a0d,
  spend_controls: null
)
```

