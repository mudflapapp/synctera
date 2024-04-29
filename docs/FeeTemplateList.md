# Synctera::FeeTemplateList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **fee_templates** | [**Array&lt;FeeTemplateResponse&gt;**](FeeTemplateResponse.md) | Array of fee templates |  |

## Example

```ruby
require 'synctera'

instance = Synctera::FeeTemplateList.new(
  next_page_token: a8937a0d,
  fee_templates: null
)
```

