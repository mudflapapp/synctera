# Synctera::PersonalIdCountryCodePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | The ISO 3166 Alpha-2 country code for the country that issued the personal identifier. This is optional for personal identifier types that have an implicit country, e.g. SSN. This is required for other types, e.g. PASSPORT_NUMBER.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PersonalIdCountryCodePost.new(
  country_code: null
)
```

