# Synctera::Address3

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line_1** | **String** | street address | [optional] |
| **address_line_2** | **String** | street address | [optional] |
| **city** | **String** | city | [optional] |
| **country_code** | **String** | country code | [optional] |
| **postal_code** | **String** | postal code | [optional] |
| **state** | **String** | state | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Address3.new(
  address_line_1: 321 Main St,
  address_line_2: Apt 34,
  city: Chicago,
  country_code: US,
  postal_code: 60622,
  state: IL
)
```

