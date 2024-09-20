# Synctera::AddressPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_line_1** | **String** | Street address line 1 |  |
| **address_line_2** | **String** | Street address line 2 | [optional] |
| **city** | **String** | City |  |
| **country_code** | **String** | ISO-3166-1 Alpha-2 country code |  |
| **is_active** | **Boolean** | Whether the address is active or not | [optional] |
| **nickname** | **String** | A nickname for the address. This is used to identify the address in the UI.  | [optional] |
| **postal_code** | **String** | Postal code. For US, formats of 12345 or 12345-1234 are accepted. For CA, formats of A1A 1A1 or A1A1A1 (regardless of case) are accepted, and will be converted to A1A 1A1 format.  | [optional] |
| **state** | **String** | State, region, province, or prefecture. This is the ISO-3166-2 subdivision code, excluding the country prefix. For example, TX for Texas USA or TAM for Tamaulipas Mexico. Its length varies by country, e.g. 2 characters for US, 3 for MX.  |  |
| **address_type** | **String** | Specifies the address type.  |  |
| **business_id** | **String** | The identifier for the business customer associated with address.  | [optional] |
| **customer_id** | **String** | The identifier for the personal customer associated with address.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AddressPost.new(
  address_line_1: 100 Main St.,
  address_line_2: Suite 99,
  city: New York,
  country_code: US,
  is_active: true,
  nickname: Home,
  postal_code: 28620,
  state: NY,
  address_type: SHIPPING,
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

