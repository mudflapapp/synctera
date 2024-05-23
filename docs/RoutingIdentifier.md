# Synctera::RoutingIdentifier

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The address of the institution with the routing number specified in the routing_idetifier object | [optional] |
| **payment_rails** | **Array&lt;String&gt;** | The supported payment types by the routing number specified in routing_identifier | [optional] |
| **routing_number** | **String** | A sequence of digits used to identify specific financial institution |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RoutingIdentifier.new(
  location: 123 main street,
  payment_rails: null,
  routing_number: 121116739
)
```

