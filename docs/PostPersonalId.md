# Synctera::PostPersonalId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | UUID for the personal identifier for subsequent changes and deletion | [optional][readonly] |
| **id_type** | [**PersonalIdType**](PersonalIdType.md) |  |  |
| **identifier** | **String** | The personal identifier. Format varies by personal identifier type. |  |
| **system_provided** | **Boolean** | True if the identifier was provided by the system, e.g. via SSN Prefill. | [optional][readonly] |
| **country_code** | **String** | The ISO 3166 Alpha-2 country code for the country that issued the personal identifier. This is optional for personal identifier types that have an implicit country, e.g. SSN. This is required for other types, e.g. PASSPORT_NUMBER.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PostPersonalId.new(
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  id_type: null,
  identifier: 123-45-6789,
  system_provided: null,
  country_code: null
)
```

