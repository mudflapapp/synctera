# Synctera::RewardTemplatePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The default amount of the reward in ISO 4217 minor currency units, e.g. cents. The internal account will be debited this amount. Can be overridden when creating a reward.  | [optional] |
| **currency** | **String** | currency for the reward, as a three character ISO 4217 alphabetic currency code. |  |
| **description** | **String** | The description of the reward template. |  |
| **internal_account_id** | **String** | The ID of default internal_account to use as the source of the reward transfer. Cannot be a system internal account. |  |
| **is_enabled** | **Boolean** | Whether the reward template is enabled. If false, rewards cannot be created from this template.  | [optional][default to true] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **subtype** | [**RewardSubtypePost**](RewardSubtypePost.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RewardTemplatePost.new(
  amount: 1000,
  currency: USD,
  description: Referral Reward,
  internal_account_id: 42943c51-e4ff-4e57-9558-08cab6b963c8,
  is_enabled: true,
  metadata: null,
  subtype: null
)
```

