# Synctera::WalletProviderCardOnFile

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_verification** | [**DigitalWalletTokenAddressVerification**](DigitalWalletTokenAddressVerification.md) |  | [optional] |
| **enabled** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'synctera'

instance = Synctera::WalletProviderCardOnFile.new(
  address_verification: null,
  enabled: false
)
```

