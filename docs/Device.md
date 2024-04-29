# Synctera::Device

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | The user’s Android device ID; the device’s unique identifier. | [optional] |
| **ip_address** | **String** | IP address of the device. | [optional] |
| **location** | **String** | Location of the device. | [optional] |
| **name** | **String** | Name of the device. | [optional] |
| **token** | **String** | Unique identifier of the device | [optional] |
| **type** | [**DeviceTypeResponse**](DeviceTypeResponse.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Device.new(
  device_id: null,
  ip_address: 1.12.123.255,
  location: +22.20/-159.50,
  name: null,
  token: null,
  type: null
)
```

