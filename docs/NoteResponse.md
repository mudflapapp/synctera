# Synctera::NoteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author** | **String** | The note&#39;s author. |  |
| **content** | **String** | The note&#39;s text content. |  |
| **creation_time** | **Time** | The date and time the note was created. | [readonly] |
| **id** | **String** | note ID | [readonly] |
| **last_updated_time** | **Time** | The date and time the note was last updated. | [readonly] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **related_resource_field** | **String** | 🚧 Beta This is a Beta property. Feedback from the community is welcome. We may make breaking changes to this property. Path to the field in the related resource that the note pertains to. This uses a dot notation like the following: Examples: * a field in the resource: first_name * a sub-field: legal_address.city * nested arrays: application_details.sections[1].pages[2].items[0].answer  | [optional] |
| **related_resource_id** | **String** | The id of the resource that is associated with the note. This is typically a UUID. For TENANT it is a string tenant ID.  |  |
| **related_resource_type** | [**RelatedResourceType1**](RelatedResourceType1.md) |  |  |
| **status** | [**Status1**](Status1.md) |  | [optional] |
| **tenant** | **String** | The tenant containing the resource. Tenancy is represented as bank_id_partner_id. This attribute is included on all responses. For requests, it is optional for clients with access to a single tenant.  |  |
| **type** | [**Type**](Type.md) |  | [optional][default to &#39;NOTE&#39;] |

## Example

```ruby
require 'synctera'

instance = Synctera::NoteResponse.new(
  author: Jane Smith jane@example.com,
  content: Customer was frozen to investigate fraud.,
  creation_time: 2010-05-06T12:23:34.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  metadata: null,
  related_resource_field: /legal_address/city,
  related_resource_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  related_resource_type: null,
  status: null,
  tenant: abcdef_ghijkl,
  type: null
)
```

