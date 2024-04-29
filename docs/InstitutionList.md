# Synctera::InstitutionList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **institutions** | [**Array&lt;Institution&gt;**](Institution.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::InstitutionList.new(
  next_page_token: a8937a0d,
  institutions: null
)
```

