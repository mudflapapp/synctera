# Synctera::AddressesList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **addresses** | [**Array&lt;AddressResponse&gt;**](AddressResponse.md) | Array of Addresses |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AddressesList.new(
  next_page_token: a8937a0d,
  addresses: null
)
```

