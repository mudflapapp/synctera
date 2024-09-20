# Synctera::AddressLines

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line_1** | **String** | address line 1 from wire file | [optional][readonly] |
| **address_line_2** | **String** | address line 2 from wire file | [optional][readonly] |
| **address_line_3** | **String** | address line 3 from wire file | [optional][readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::AddressLines.new(
  address_line_1: null,
  address_line_2: null,
  address_line_3: null
)
```

