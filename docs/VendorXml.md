# Synctera::VendorXml

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type** | **String** | Describes the content-type encoding received from the vendor |  |
| **vendor** | **String** |  |  |
| **xml** | **String** | Data representaion in XML |  |

## Example

```ruby
require 'synctera'

instance = Synctera::VendorXml.new(
  content_type: null,
  vendor: IDOLOGY,
  xml: null
)
```

