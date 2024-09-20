# Synctera::IncomingWireList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **wires** | [**Array&lt;IncomingWire&gt;**](IncomingWire.md) | Array of incoming wires |  |

## Example

```ruby
require 'synctera'

instance = Synctera::IncomingWireList.new(
  next_page_token: a8937a0d,
  wires: null
)
```

