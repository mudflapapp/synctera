# Synctera::DisclosureList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **disclosures** | [**Array&lt;Disclosure&gt;**](Disclosure.md) | Array of disclosures. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::DisclosureList.new(
  next_page_token: a8937a0d,
  disclosures: null
)
```

