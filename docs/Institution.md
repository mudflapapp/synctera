# Synctera::Institution

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_codes** | **Array&lt;String&gt;** | The countries of operation of the financial institution |  |
| **logo** | **String** | Base64 encoded representation of the institution&#39;s logo, returned as a base64 encoded 152x152 PNG | [optional] |
| **name** | **String** | The name of the financial institution |  |
| **routing_identifiers** | [**Array&lt;RoutingIdentifier&gt;**](RoutingIdentifier.md) | Array of routing identifier objects |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Institution.new(
  country_codes: null,
  logo: null,
  name: Bank of America,
  routing_identifiers: null
)
```

