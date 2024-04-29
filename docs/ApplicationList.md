# Synctera::ApplicationList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **applications** | [**Array&lt;ApplicationResponse&gt;**](ApplicationResponse.md) | Array of applications. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ApplicationList.new(
  next_page_token: a8937a0d,
  applications: null
)
```

