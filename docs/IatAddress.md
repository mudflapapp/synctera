# Synctera::IatAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **city_state_province** | **String** | City and State / Province. Should be separated with an asterisk (*) as a delimiter. |  |
| **country_postal_code** | **String** | Country and Postal Code. Should be separated with an asterisk (*) as a delimiter. |  |
| **street** | **String** | The street address |  |

## Example

```ruby
require 'synctera'

instance = Synctera::IatAddress.new(
  city_state_province: San Francisco*CA,
  country_postal_code: US*10036,
  street: null
)
```

