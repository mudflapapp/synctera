# Synctera::InternationalWireList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **international_wires** | [**Array&lt;InternationalWireResponse&gt;**](InternationalWireResponse.md) | Array of international wires |  |

## Example

```ruby
require 'synctera'

instance = Synctera::InternationalWireList.new(
  next_page_token: a8937a0d,
  international_wires: null
)
```

