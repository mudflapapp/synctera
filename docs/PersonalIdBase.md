# Synctera::PersonalIdBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | UUID for the personal identifier for subsequent changes and deletion | [optional][readonly] |
| **id_type** | [**PersonalIdType**](PersonalIdType.md) |  | [optional] |
| **identifier** | **String** | The personal identifier. Format varies by personal identifier type. | [optional] |
| **system_provided** | **Boolean** | True if the identifier was provided by the system, e.g. via SSN Prefill. | [optional][readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::PersonalIdBase.new(
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  id_type: null,
  identifier: 123-45-6789,
  system_provided: null
)
```

