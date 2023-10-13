# Synctera::GoogleDigitalWalletProvisionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | The user’s Android device ID; the device’s unique identifier. |  |
| **device_type** | [**DeviceType**](DeviceType.md) |  |  |
| **provisioning_app_version** | **String** | Version of the application making the provisioning request. |  |
| **wallet_account_id** | **String** | The user’s Google wallet account ID. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::GoogleDigitalWalletProvisionRequest.new(
  device_id: null,
  device_type: null,
  provisioning_app_version: null,
  wallet_account_id: null
)
```

