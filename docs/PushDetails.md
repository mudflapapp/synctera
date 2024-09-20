# Synctera::PushDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | ISO-3166-1 Alpha-2 country code | [optional] |
| **currency** | **String** | ISO 4217  Alpha-3 currency code | [optional] |
| **funds_availability** | [**ExternalCardsFundsAvailability**](ExternalCardsFundsAvailability.md) |  | [optional] |
| **network** | **String** | Payment network | [optional] |
| **product_type** | [**ExternalCardProductType**](ExternalCardProductType.md) |  | [optional] |
| **regulated** | **Boolean** | Exemption status from debit card interchange fee standards | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PushDetails.new(
  country: US,
  currency: USD,
  funds_availability: null,
  network: null,
  product_type: null,
  regulated: null
)
```

