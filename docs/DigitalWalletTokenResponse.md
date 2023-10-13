# Synctera::DigitalWalletTokenResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **approved_time** | **Time** |  | [optional] |
| **card_id** | **String** | Card ID of the Digital wallet Token | [optional] |
| **device_id** | **String** | The user’s Android device ID; the device’s unique identifier. | [optional] |
| **device_type** | **String** | Type of the device where the Digital Wallet Token is used in | [optional] |
| **id** | **String** | Digital Wallet Token ID | [optional] |
| **last_modified_time** | **Time** |  | [optional] |
| **removed_from_wallet_time** | **Time** | The time that the token was removed from a wallet. Tokens make remain active after being removed from a wallet. | [optional] |
| **requested_time** | **Time** |  | [optional] |
| **state** | [**DigitalWalletTokenState**](DigitalWalletTokenState.md) |  | [optional] |
| **type** | **String** | Type of the Digital Wallet. Can be one of APPLE_PAY, ANDROID_PAY, SAMSUNG_PAY or something else when cards are added on file to a merchant. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::DigitalWalletTokenResponse.new(
  approved_time: 2010-05-06T12:23:34.321Z,
  card_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  device_id: null,
  device_type: null,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_modified_time: 2010-05-06T12:23:34.321Z,
  removed_from_wallet_time: 2010-05-06T12:23:34.321Z,
  requested_time: 2010-05-06T12:23:34.321Z,
  state: null,
  type: APPLE_PAY
)
```

