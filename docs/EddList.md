# Synctera::EddList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **edd_reports** | [**Array&lt;CreateEddResponse&gt;**](CreateEddResponse.md) | Array of edd reports. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::EddList.new(
  next_page_token: a8937a0d,
  edd_reports: null
)
```

