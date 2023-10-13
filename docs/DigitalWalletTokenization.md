# Synctera::DigitalWalletTokenization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_art_id** | **String** | Specifies the digital wallet card art identifier for the card product. | [optional] |
| **provisioning_controls** | [**ProvisioningControls**](ProvisioningControls.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::DigitalWalletTokenization.new(
  card_art_id: null,
  provisioning_controls: null
)
```

