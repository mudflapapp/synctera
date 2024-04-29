# Synctera::UnderwritingData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_time** | **Time** | Timestamp of the request in RFC3359 format | [optional] |
| **vendor** | **String** | Vendor name | [optional] |
| **vendor_info** | **Object** | Information about the vendor provided info | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::UnderwritingData.new(
  request_time: null,
  vendor: PLAID,
  vendor_info: null
)
```

