# Synctera::AppleDigitalWalletProvisionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **certificates** | **Array&lt;String&gt;** | Leaf and sub-CA certificates provided by Apple |  |
| **device_type** | [**DeviceType**](DeviceType.md) |  |  |
| **nonce** | **String** | One-time-use nonce provided by Apple for security purposes. |  |
| **nonce_signature** | **String** | Apple-provided signature to the nonce. |  |
| **provisioning_app_version** | **String** | Version of the application making the provisioning request. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AppleDigitalWalletProvisionRequest.new(
  certificates: null,
  device_type: null,
  nonce: null,
  nonce_signature: null,
  provisioning_app_version: null
)
```

