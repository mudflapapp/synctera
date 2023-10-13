# Synctera::AccountList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **accounts** | [**Array&lt;AccountGenericResponse&gt;**](AccountGenericResponse.md) | Array of Accounts |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountList.new(
  next_page_token: a8937a0d,
  accounts: null
)
```

