# Synctera::RiskRatingList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **risk_ratings** | [**Array&lt;RiskRating&gt;**](RiskRating.md) | Array of customer risk ratings |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RiskRatingList.new(
  next_page_token: a8937a0d,
  risk_ratings: null
)
```

