# Synctera::RewardResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ID of the business or customer account being charged the reward. |  |
| **amount** | **Integer** | The amount of the reward in ISO 4217 minor currency units, e.g. cents. The internal account referenced by the reward template will be debited this amount. Defaults to the value in the reward template.  |  |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **note** | **String** | An optional note for this instance of the reward. | [optional] |
| **template_id** | **String** | The ID of the reward template to use to create the reward. Values from the reward template will be used as defaults for the reward. Note that the reward template may have been updated since the reward was created and that such subsequent updates to the reward template do not affect existing rewards.  |  |
| **creation_time** | **Time** | The timestamp representing when the reward was created | [readonly] |
| **currency** | **String** | currency of the reward, as a three character ISO 4217 alphabetic currency code. |  |
| **description** | **String** | The description of the reward template. |  |
| **id** | **String** | The ID of the reward. |  |
| **internal_account_id** | **String** | The ID of internal_account that is the source of the reward transfer. |  |
| **last_updated_time** | **Time** | The timestamp representing when the reward was last updated | [readonly] |
| **subtype** | [**RewardSubtype**](RewardSubtype.md) |  |  |
| **tenant** | **String** | The id of the tenant containing the resource.  |  |
| **transaction_id** | **String** | The ID the resulting transaction resource. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RewardResponse.new(
  account_id: 12943c51-e4ff-4e57-9558-08cab6b96364,
  amount: 1000,
  metadata: null,
  note: Reduced account reward based on phone call with customer,
  template_id: 64943c51-e4ff-4e57-9558-08cab6b96352,
  creation_time: 2010-05-06T12:23:34.321Z,
  currency: USD,
  description: Referral Reward,
  id: 44943c51-e4ff-4e57-9558-08cab6b96321,
  internal_account_id: 42943c51-e4ff-4e57-9558-08cab6b963c8,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  subtype: null,
  tenant: abcdef_ghijkl,
  transaction_id: 11943c51-e4ff-4e57-9558-08cab6b96333
)
```

