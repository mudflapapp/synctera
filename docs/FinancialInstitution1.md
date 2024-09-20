# Synctera::FinancialInstitution1

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address** | [**Address3**](Address3.md) |  | [optional] |
| **id_code** | **String** | A code describing the type of identifier in the \&quot;identifier\&quot; field.  | [optional] |
| **identifier** | **String** | The identifier for the Financial Institution. See \&quot;id_code\&quot; for possible values.  | [optional] |
| **name** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::FinancialInstitution1.new(
  address: null,
  id_code: null,
  identifier: null,
  name: null
)
```

