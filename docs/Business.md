# Synctera::Business

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_time** | **Time** |  | [optional] |
| **ein** | **String** |  | [optional] |
| **email** | **String** |  | [optional] |
| **entity_name** | **String** |  | [optional] |
| **formation_date** | **Date** |  | [optional] |
| **formation_state** | **String** |  | [optional] |
| **id** | **String** |  | [optional] |
| **last_updated_time** | **Time** |  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **structure** | **String** |  | [optional] |
| **trade_names** | **Array&lt;String&gt;** |  | [optional] |
| **verification_last_run** | **Time** |  | [optional] |
| **verification_status** | **String** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Business.new(
  creation_time: null,
  ein: null,
  email: null,
  entity_name: null,
  formation_date: null,
  formation_state: null,
  id: null,
  last_updated_time: null,
  phone_number: null,
  status: null,
  structure: null,
  trade_names: null,
  verification_last_run: null,
  verification_status: null
)
```

