# Synctera::CardAcceptorModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | **String** |  | [optional] |
| **city** | **String** |  | [optional] |
| **country** | **String** |  | [optional] |
| **ecommerce_security_level_indicator** | **String** |  | [optional] |
| **mcc** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **partial_approval_capable** | **Boolean** |  | [optional][default to false] |
| **state** | **String** | Two-Letter USPS State Abbreviation | [optional] |
| **zip** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CardAcceptorModel.new(
  address: null,
  city: null,
  country: null,
  ecommerce_security_level_indicator: null,
  mcc: null,
  name: null,
  partial_approval_capable: null,
  state: null,
  zip: null
)
```

