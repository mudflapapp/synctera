# Synctera::ProvisioningControls

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **in_app_provisioning** | [**InAppProvisioning**](InAppProvisioning.md) |  | [optional] |
| **manual_entry** | [**ManualEntry**](ManualEntry.md) |  | [optional] |
| **wallet_provider_card_on_file** | [**WalletProviderCardOnFile**](WalletProviderCardOnFile.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ProvisioningControls.new(
  in_app_provisioning: null,
  manual_entry: null,
  wallet_provider_card_on_file: null
)
```

