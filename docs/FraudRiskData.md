# Synctera::FraudRiskData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **decision** | **String** | The overall decision, based on the vendor response |  |
| **reasons** | **Array&lt;String&gt;** | Set of machine-readable descriptions of why the transaction was accepted or declined | [optional] |
| **vendor** | **String** | The external vendor used for risk evaluation |  |
| **vendor_reasons** | **Array&lt;String&gt;** | List of reasons supplied by the provider | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::FraudRiskData.new(
  decision: null,
  reasons: null,
  vendor: null,
  vendor_reasons: null
)
```

