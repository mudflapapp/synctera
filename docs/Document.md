# Synctera::Document

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **available_versions** | **Array&lt;Integer&gt;** | All document versions | [optional] |
| **creation_time** | **Time** | The date and time the resource was created | [optional][readonly] |
| **description** | **String** | A description of the document | [optional] |
| **encryption** | [**Encryption**](Encryption.md) |  | [optional][default to &#39;NOT_REQUIRED&#39;] |
| **file_name** | **String** | The name of the document | [optional][readonly] |
| **id** | **String** | The unique identifier for this resource | [optional][readonly] |
| **last_updated_time** | **Time** | The date and time the resource was last updated | [optional][readonly] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **name** | **String** | A user-friendly name for the document | [optional] |
| **related_resource_id** | **String** | The ID of the resource related to the document | [optional] |
| **related_resource_type** | [**RelatedResourceType**](RelatedResourceType.md) |  | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |
| **type** | [**DocumentType**](DocumentType.md) |  | [optional] |
| **version** | **Integer** | The document version | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Document.new(
  available_versions: null,
  creation_time: 2010-05-06T12:23:34.321Z,
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

