# Synctera::RewardList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **rewards** | [**Array&lt;RewardResponse&gt;**](RewardResponse.md) | Array of rewards |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RewardList.new(
  next_page_token: a8937a0d,
  rewards: null
)
```

