# Synctera::DisputeDocumentResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **creation_time** | **Time** | The timestamp representing when the object was created | [readonly] |
| **dispute_id** | **String** | The unique identifier of the dispute | [readonly] |
| **file_name** | **String** |  |  |
| **id** | **String** | The unique identifier of a dispute document. | [readonly] |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::DisputeDocumentResponse.new(
  creation_time: 2010-05-06T12:23:34.321Z,
  dispute_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  file_name: example.pdf,
  id: null,
  tenant: abcdef_ghijkl
)
```

