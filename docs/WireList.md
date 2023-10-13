# Synctera::WireList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **wires** | [**Array&lt;Wire&gt;**](Wire.md) | Array of wires |  |

## Example

```ruby
require 'synctera'

instance = Synctera::WireList.new(
  next_page_token: a8937a0d,
  wires: null
)
```

