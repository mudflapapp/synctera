# Synctera::FeeTemplatePatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The default amount of the fee in ISO 4217 minor currency units, e.g. cents. The internal account will be debited this amount. Can be overridden when creating a fee.  | [optional] |
| **currency** | **String** | currency for the fee, as a three character ISO 4217 alphabetic currency code. | [optional] |
| **description** | **String** | The description of the fee template. | [optional] |
| **internal_account_id** | **String** | The ID of default internal_account to use as the destination of the fee transfer. Cannot be a system internal account. | [optional] |
| **is_enabled** | **Boolean** | Whether the fee template is enabled. If false, fees cannot be created from this template.  | [optional][default to true] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **subtype** | [**FeeSubtypePost**](FeeSubtypePost.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::FeeTemplatePatch.new(
  amount: 1000,
  currency: USD,
  description: Premium Customer ATM Fee,
  internal_account_id: 42943c51-e4ff-4e57-9558-08cab6b963c8,
  is_enabled: true,
  metadata: null,
  subtype: null
)
```

