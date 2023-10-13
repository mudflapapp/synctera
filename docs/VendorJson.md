# Synctera::VendorJson

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type** | **String** | Describes the content-type encoding received from the vendor |  |
| **json** | **Object** | Data representation in JSON |  |
| **vendor** | **String** |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::VendorJson.new(
  content_type: null,
  json: null,
  vendor: SOCURE
)
```

