# Synctera::CardOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_address** | [**BillingAddress**](BillingAddress.md) |  | [optional] |
| **card_present** | **Boolean** |  | [optional][default to false] |
| **cvv** | **String** |  | [optional] |
| **expiration** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CardOptions.new(
  billing_address: null,
  card_present: null,
  cvv: null,
  expiration: null
)
```

