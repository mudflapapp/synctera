# Synctera::SyncteraPayVendorList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **vendors** | [**Array&lt;SyncteraPayVendorResponse&gt;**](SyncteraPayVendorResponse.md) | Array of vendors |  |

## Example

```ruby
require 'synctera'

instance = Synctera::SyncteraPayVendorList.new(
  next_page_token: a8937a0d,
  vendors: null
)
```

