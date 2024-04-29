# Synctera::FeeTemplateResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The default amount of the fee in ISO 4217 minor currency units, e.g. cents. The internal account will be debited this amount. Can be overridden when creating a fee.  | [optional] |
| **currency** | **String** | currency for the fee, as a three character ISO 4217 alphabetic currency code. |  |
| **description** | **String** | The description of the fee template. | [optional] |
| **internal_account_id** | **String** | The ID of default internal_account to use as the destination of the fee transfer. Cannot be a system internal account. |  |
| **is_enabled** | **Boolean** | Whether the fee template is enabled. If false, fees cannot be created from this template.  | [default to true] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **creation_time** | **Time** | The timestamp representing when the fee template was created | [readonly] |
| **id** | **String** | The ID of the fee template. |  |
| **last_updated_time** | **Time** | The timestamp representing when the fee template was last modified | [readonly] |
| **subtype** | [**FeeSubtype**](FeeSubtype.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::FeeTemplateResponse.new(
  amount: 1000,
  currency: USD,
  description: Premium Customer ATM Fee,
  internal_account_id: 42943c51-e4ff-4e57-9558-08cab6b963c8,
  is_enabled: true,
  metadata: null,
  creation_time: 2010-05-06T12:23:34.321Z,
  id: 85943c51-e4ff-4e57-9558-08cab6b96364,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  subtype: null,
  tenant: abcdef_ghijkl
)
```

