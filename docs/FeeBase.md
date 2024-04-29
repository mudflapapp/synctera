# Synctera::FeeBase

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the business or customer account being charged the fee. | [optional] |
| **amount** | **Integer** | The amount of the fee in ISO 4217 minor currency units, e.g. cents. The internal account referenced by the fee template will be debited this amount. Defaults to the value in the fee template.  | [optional] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **note** | **String** | An optional note for this instance of the fee. | [optional] |
| **template_id** | **String** | The ID of the fee template to use to create the fee. Values from the fee template will be used as defaults for the fee. Note that the fee template may have been updated since the fee was created and that such subsequent updates to the fee template do not affect existing fees.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::FeeBase.new(
  account_id: 12943c51-e4ff-4e57-9558-08cab6b96364,
  amount: 1000,
  metadata: null,
  note: Reduced account fee based on phone call with customer,
  template_id: 64943c51-e4ff-4e57-9558-08cab6b96352
)
```

