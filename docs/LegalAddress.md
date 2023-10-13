# Synctera::LegalAddress

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line_1** | **String** | Street address line 1 |  |
| **address_line_2** | **String** | Street address line 2 | [optional] |
| **city** | **String** | City | [optional] |
| **country_code** | **String** | ISO-3166-1 Alpha-2 country code |  |
| **postal_code** | **String** | Postal code. For US, formats of 12345 or 12345-1234 are accepted. For CA, formats of A1A 1A1 or A1A1A1 (regardless of case) are accepted, and will be converted to A1A 1A1 format.  | [optional] |
| **state** | **String** | State, region, province, or prefecture. This is the ISO-3166-2 subdivision code, excluding the country prefix. For example, TX for Texas USA or TAM for Tamaulipas Mexico. Its length varies by country, e.g. 2 characters for US, 3 for MX.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::LegalAddress.new(
  address_line_1: 100 Main St.,
  address_line_2: Suite 99,
  city: New York,
  country_code: US,
  postal_code: 28620,
  state: NY
)
```

