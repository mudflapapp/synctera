# Synctera::CardImageDetailsList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **images** | [**Array&lt;CardImageDetails&gt;**](CardImageDetails.md) | Array of image details |  |

## Example

```ruby
require 'synctera'

instance = Synctera::CardImageDetailsList.new(
  next_page_token: a8937a0d,
  images: null
)
```

