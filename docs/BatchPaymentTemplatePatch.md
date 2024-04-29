# Synctera::BatchPaymentTemplatePatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | [**BatchPaymentTemplateConfig**](BatchPaymentTemplateConfig.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **enabled** | **Boolean** | Whether or not the template is enabled. If the template is not enabled, it will not be used when creating a batch transfer.  | [optional] |
| **name** | **String** |  | [optional] |
| **rules** | [**BatchPaymentTemplateRules**](BatchPaymentTemplateRules.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::BatchPaymentTemplatePatch.new(
  config: null,
  description: This template is used for international remittance,
  enabled: null,
  name: International Remittance,
  rules: null
)
```

