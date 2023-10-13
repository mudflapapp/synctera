# Synctera::OutgoingAchList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **transactions** | [**Array&lt;OutgoingAch&gt;**](OutgoingAch.md) | Array of sent ACH transactions. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::OutgoingAchList.new(
  next_page_token: a8937a0d,
  transactions: null
)
```

