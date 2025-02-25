# Synctera::DocumentPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_id** | **String** | The ID of the batch that the document belongs to | [optional] |
| **deletion_reason** | **String** | An explanation why the file was deleted. You must set a document&#39;s deletion_reason before deleting it. | [optional] |
| **description** | **String** | A description of the document | [optional] |
| **name** | **String** | A user-friendly name for the document | [optional] |
| **type** | [**DocumentType**](DocumentType.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::DocumentPatch.new(
  batch_id: null,
  deletion_reason: null,
  description: null,
  name: null,
  type: null
)
```

