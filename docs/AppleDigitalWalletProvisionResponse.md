# Synctera::AppleDigitalWalletProvisionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **activation_data** | **String** |  | [optional] |
| **card_id** | **String** | The unique identifier of a card | [optional] |
| **created_time** | **Time** |  | [optional] |
| **encrypted_pass_data** | **String** |  | [optional] |
| **ephemeral_public_key** | **String** |  | [optional] |
| **last_modified_time** | **Time** |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AppleDigitalWalletProvisionResponse.new(
  activation_data: null,
  card_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  created_time: 2010-05-06T12:23:34.321Z,
  encrypted_pass_data: null,
  ephemeral_public_key: null,
  last_modified_time: 2010-05-06T12:23:34.321Z
)
```

