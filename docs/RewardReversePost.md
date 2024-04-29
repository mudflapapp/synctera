# Synctera::RewardReversePost

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **note** | **String** | A note for the reward reversal. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RewardReversePost.new(
  metadata: null,
  note: Charge was made in error
)
```

