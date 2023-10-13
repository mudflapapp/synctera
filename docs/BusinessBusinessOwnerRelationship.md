# Synctera::BusinessBusinessOwnerRelationship

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_data** | [**AdditionalOwnerData**](AdditionalOwnerData.md) |  |  |
| **creation_time** | **Time** | The date and time the resource was created. | [optional][readonly] |
| **from_business_id** | **String** | Unique ID for the subject business.  |  |
| **id** | **String** | Relationship unique identifier. | [optional][readonly] |
| **last_updated_time** | **Time** | The date and time the resource was last updated. | [optional][readonly] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **relationship_type** | [**RelationshipTypes**](RelationshipTypes.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |
| **to_business_id** | **String** | Unique ID for the related business.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BusinessBusinessOwnerRelationship.new(
  additional_data: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  from_business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  metadata: null,
  relationship_type: null,
  tenant: abcdef_ghijkl,
  to_business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

