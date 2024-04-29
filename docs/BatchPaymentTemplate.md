# Synctera::BatchPaymentTemplate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | [**BatchPaymentTemplateConfig**](BatchPaymentTemplateConfig.md) |  |  |
| **description** | **String** |  | [optional] |
| **enabled** | **Boolean** | Whether or not the template is enabled. If the template is not enabled, it will not be used when creating a batch transfer.  | [optional] |
| **id** | **String** |  | [optional][readonly] |
| **name** | **String** |  |  |
| **rules** | [**BatchPaymentTemplateRules**](BatchPaymentTemplateRules.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BatchPaymentTemplate.new(
  config: null,
  description: This template is used for international remittance,
  enabled: null,
  id: d290f1ee-6c54-4b01-90e6-d701748f0851,
  name: International Remittance,
  rules: null,
  tenant: abcdef_ghijkl
)
```

