# Synctera::PatchDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A description of the document | [optional] |
| **name** | **String** | A user-friendly name for the document | [optional] |
| **type** | [**DocumentType**](DocumentType.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PatchDocument.new(
  description: null,
  name: null,
  type: null
)
```

