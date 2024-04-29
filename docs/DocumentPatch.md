# Synctera::DocumentPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deletion_reason** | **String** | An explanation why the file was deleted. You must set a document&#39;s deletion_reason before deleting it. | [optional] |
| **description** | **String** | A description of the document | [optional] |
| **name** | **String** | A user-friendly name for the document | [optional] |
| **type** | [**DocumentType**](DocumentType.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::DocumentPatch.new(
  deletion_reason: null,
  description: null,
  name: null,
  type: null
)
```

