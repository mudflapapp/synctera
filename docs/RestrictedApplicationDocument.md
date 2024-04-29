# Synctera::RestrictedApplicationDocument

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | File description |  |
| **document_id** | **String** | ID of the document within the Synctera platform |  |
| **fintech_item_id** | **String** | Client supplied item id | [optional] |
| **type** | [**RestrictedApplicationItemType**](RestrictedApplicationItemType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RestrictedApplicationDocument.new(
  description: null,
  document_id: null,
  fintech_item_id: null,
  type: null
)
```

