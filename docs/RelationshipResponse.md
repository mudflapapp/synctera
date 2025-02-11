# Synctera::RelationshipResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Business associated with the current account. One of business_id or customer_id must be specified. | [optional] |
| **created_at** | **Time** | Date and time when this association was created. | [optional] |
| **customer_id** | **String** | Personal customer associated with the current account. One of customer_id or business_id must be specified. | [optional] |
| **deleted_at** | **Time** | Date and time when this association was deleted. | [optional] |
| **id** | **String** | ID of account relationship | [optional][readonly] |
| **person_id** | **String** | Person associated with the current account. This attribute is deprecated and will be removed in a future API version. Use customer_id instead. | [optional] |
| **relationship_type** | [**AccountRelationshipType**](AccountRelationshipType.md) |  |  |
| **updated_at** | **Time** | Date and time when this association was last updated. | [optional] |
| **account_id** | **String** | Account ID | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::RelationshipResponse.new(
  business_id: null,
  created_at: null,
  customer_id: null,
  deleted_at: null,
  id: null,
  person_id: null,
  relationship_type: null,
  updated_at: null,
  account_id: null
)
```

