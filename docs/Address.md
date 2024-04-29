# Synctera::Address

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line_1** | **String** | Street address line 1 |  |
| **address_line_2** | **String** | Street address line 2 | [optional] |
| **city** | **String** | City |  |
| **country_code** | **String** | ISO-3166-1 Alpha-2 country code |  |
| **postal_code** | **String** | Postal code |  |
| **state** | **String** | State, region, province, or prefecture. This is the ISO-3166-2 subdivision code, excluding the country prefix. For example, TX for Texas USA or TAM for Tamaulipas Mexico. Its length varies by country, e.g. 2 characters for US, 3 for MX.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Address.new(
  address_line_1: 100 Main St.,
  address_line_2: Suite 99,
  city: New York,
  country_code: US,
  postal_code: 49633,
  state: NY
)
```

