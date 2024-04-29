# Synctera::RewardPost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the business or customer account being charged the reward. |  |
| **amount** | **Integer** | The amount of the reward in ISO 4217 minor currency units, e.g. cents. The internal account referenced by the reward template will be debited this amount. Defaults to the value in the reward template.  | [optional] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **note** | **String** | An optional note for this instance of the reward. | [optional] |
| **template_id** | **String** | The ID of the reward template to use to create the reward. Values from the reward template will be used as defaults for the reward. Note that the reward template may have been updated since the reward was created and that such subsequent updates to the reward template do not affect existing rewards.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RewardPost.new(
  account_id: 12943c51-e4ff-4e57-9558-08cab6b96364,
  amount: 1000,
  metadata: null,
  note: Reduced account reward based on phone call with customer,
  template_id: 64943c51-e4ff-4e57-9558-08cab6b96352
)
```

