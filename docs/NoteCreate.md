# Synctera::NoteCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** | The note&#39;s text content. |  |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **related_resource_field** | **String** | 🚧 Beta This is a Beta property. Feedback from the community is welcome. We may make breaking changes to this property. Path to the field in the related resource that the note pertains to. This uses a dot notation like the following: Examples: * a field in the resource: first_name * a sub-field: legal_address.city * nested arrays: application_details.sections[1].pages[2].items[0].answer  | [optional] |
| **related_resource_id** | **String** | The id of the resource that is associated with the note. This is typically a UUID. For TENANT it is a string tenant ID.  |  |
| **related_resource_type** | [**RelatedResourceType2**](RelatedResourceType2.md) |  |  |
| **status** | [**NoteStatus**](NoteStatus.md) |  | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |
| **type** | [**Type**](Type.md) |  | [optional][default to &#39;NOTE&#39;] |

## Example

```ruby
require 'synctera'

instance = Synctera::NoteCreate.new(
  content: Customer was frozen to investigate fraud.,
  metadata: null,
  related_resource_field: /legal_address/city,
  related_resource_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  related_resource_type: null,
  status: null,
  tenant: abcdef_ghijkl,
  type: null
)
```

