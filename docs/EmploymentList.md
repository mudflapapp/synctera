# Synctera::EmploymentList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **employment** | [**Array&lt;Employment&gt;**](Employment.md) | Array of customer employment records. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::EmploymentList.new(
  next_page_token: a8937a0d,
  employment: null
)
```

