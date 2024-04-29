# Synctera::Transaction1

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::Transaction1.openapi_one_of
# =>
# [
#   :'AchTransaction',
#   :'CardTransaction',
#   :'CashTransaction',
#   :'CheckTransaction',
#   :'ExternalCardTransaction',
#   :'FednowTransaction',
#   :'FeeTransaction',
#   :'InternalTransferTransaction',
#   :'RewardTransaction',
#   :'WireTransaction'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::Transaction1.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::Transaction1.openapi_discriminator_mapping
# =>
# {
#   :'ACH' => :'AchTransaction',
#   :'CARD' => :'CardTransaction',
#   :'CASH' => :'CashTransaction',
#   :'CHECK' => :'CheckTransaction',
#   :'EXTERNAL_CARD' => :'ExternalCardTransaction',
#   :'FEDNOW' => :'FednowTransaction',
#   :'FEE' => :'FeeTransaction',
#   :'INTERNAL_TRANSFER' => :'InternalTransferTransaction',
#   :'REWARD' => :'RewardTransaction',
#   :'WIRE' => :'WireTransaction'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::Transaction1.build(data)
# => #<AchTransaction:0x00007fdd4aab02a0>

Synctera::Transaction1.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AchTransaction`
- `CardTransaction`
- `CashTransaction`
- `CheckTransaction`
- `ExternalCardTransaction`
- `FednowTransaction`
- `FeeTransaction`
- `InternalTransferTransaction`
- `RewardTransaction`
- `WireTransaction`
- `nil` (if no type matches)

