# Synctera::AccountClosureValidationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **details** | **Object** |  |  |
| **message** | **String** | Validation message |  |
| **name** | **String** | Name |  |
| **validated** | **Boolean** | Validation result |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountClosureValidationResponse.new(
  details: null,
  message: Cards decoupled from account,
  name: cards,
  validated: true
)
```

