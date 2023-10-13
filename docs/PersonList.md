# Synctera::PersonList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **persons** | [**Array&lt;ResponsePerson&gt;**](ResponsePerson.md) | Array of persons. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::PersonList.new(
  next_page_token: a8937a0d,
  persons: null
)
```

