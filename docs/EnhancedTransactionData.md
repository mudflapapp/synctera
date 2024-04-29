# Synctera::EnhancedTransactionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **category** | **String** |  | [optional] |
| **enhanced_description** | **String** |  | [optional] |
| **enhanced_raw** | [**Array&lt;EnhancedRawDetails&gt;**](EnhancedRawDetails.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::EnhancedTransactionData.new(
  category: null,
  enhanced_description: null,
  enhanced_raw: null
)
```

