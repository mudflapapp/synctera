# Synctera::Relationship

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Business associated with the current account. One of business_id or customer_id must be specified. | [optional] |
| **customer_id** | **String** | Personal customer associated with the current account. One of customer_id or business_id must be specified. | [optional] |
| **id** | **String** | ID of account relationship | [optional][readonly] |
| **person_id** | **String** | Person associated with the current account. This attribute is deprecated and will be removed in a future API version. Use customer_id instead. | [optional] |
| **relationship_type** | [**AccountRelationshipType**](AccountRelationshipType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Relationship.new(
  business_id: null,
  customer_id: null,
  id: null,
  person_id: null,
  relationship_type: null
)
```

