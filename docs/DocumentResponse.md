# Synctera::DocumentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_versions** | **Array&lt;Integer&gt;** | All document versions | [optional] |
| **available_versions_info** | [**Array&lt;DocumentVersionInfo&gt;**](DocumentVersionInfo.md) | Metadata of all document versions | [optional] |
| **batch_id** | **String** | The ID of the batch that the document belongs to | [optional] |
| **creation_time** | **Time** | The date and time the resource was created | [optional][readonly] |
| **deletion_reason** | **String** | An explanation why the file was deleted. You must set a document&#39;s deletion_reason before deleting it. | [optional] |
| **description** | **String** | A description of the document | [optional] |
| **encryption** | [**DocumentEncryption**](DocumentEncryption.md) |  | [optional] |
| **file_name** | **String** | The file name of the document | [optional][readonly] |
| **id** | **String** | The unique identifier for this resource | [optional][readonly] |
| **last_updated_time** | **Time** | The date and time the resource was last updated | [optional][readonly] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **name** | **String** | A user-friendly name for the document | [optional] |
| **related_resource_id** | **String** | The ID of the resource related to the document | [optional] |
| **related_resource_type** | [**RelatedResourceType**](RelatedResourceType.md) |  | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |
| **type** | [**DocumentType**](DocumentType.md) |  | [optional] |
| **version** | **Integer** | Positive integer representing the version of the document | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::DocumentResponse.new(
  available_versions: null,
  available_versions_info: null,
  batch_id: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  deletion_reason: null,
  description: null,
  encryption: null,
  file_name: null,
  id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  metadata: null,
  name: null,
  related_resource_id: null,
  related_resource_type: null,
  tenant: abcdef_ghijkl,
  type: null,
  version: null
)
```

