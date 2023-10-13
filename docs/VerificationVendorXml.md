# Synctera::VerificationVendorXml

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type** | **String** | Describes the content-type encoding received from the vendor. |  |
| **details** | [**Array&lt;VerificationVendorInfoDetail&gt;**](VerificationVendorInfoDetail.md) | Array of vendor specific information. | [optional][readonly] |
| **vendor** | **String** | Name of the vendor used. |  |
| **xml** | **String** | Data representaion in XML. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::VerificationVendorXml.new(
  content_type: null,
  details: null,
  vendor: IDOLOGY,
  xml: null
)
```

