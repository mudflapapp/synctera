# Synctera::VerificationVendorJson

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content_type** | **String** | Describes the content-type encoding received from the vendor. |  |
| **details** | [**Array&lt;VerificationVendorInfoDetail&gt;**](VerificationVendorInfoDetail.md) | Array of vendor specific information. | [optional][readonly] |
| **json** | **Object** | Data representation in JSON. |  |
| **vendor** | **String** | Name of the vendor used. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::VerificationVendorJson.new(
  content_type: null,
  details: null,
  json: null,
  vendor: SOCURE
)
```

