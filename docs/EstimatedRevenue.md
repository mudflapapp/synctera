# Synctera::EstimatedRevenue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount earned at the specified frequency. For example, $112.35 USD is represented as 11235 cents). | [optional] |
| **currency** | **String** | The currency in ISO 4217 format. | [optional] |
| **frequency** | [**Frequency**](Frequency.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::EstimatedRevenue.new(
  amount: 1000,
  currency: USD,
  frequency: null
)
```
