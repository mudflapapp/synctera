# Synctera::RewardTemplateList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **reward_templates** | [**Array&lt;RewardTemplateResponse&gt;**](RewardTemplateResponse.md) | Array of reward templates |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RewardTemplateList.new(
  next_page_token: a8937a0d,
  reward_templates: null
)
```

