# Synctera::PatchPersonalId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | The updated ISO 3166 Alpha-2 country code for the country that issued the personal identifier. The country code cannot be modified for personal identifier types that have an implicit country, e.g. SSN.  | [optional] |
| **id_type** | [**PersonalIdType**](PersonalIdType.md) |  |  |
| **identifier** | **String** | The updated personal identifier | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PatchPersonalId.new(
  country_code: US,
  id_type: null,
  identifier: 123-45-6789,
  tenant: abcdef_ghijkl
)
```

