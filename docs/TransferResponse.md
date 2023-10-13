# Synctera::TransferResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::TransferResponse.openapi_one_of
# =>
# [
#   :'TransferResponsePull',
#   :'TransferResponsePush'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::TransferResponse.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::TransferResponse.openapi_discriminator_mapping
# =>
# {
#   :'PULL' => :'TransferResponsePull',
#   :'PULL_REVERSAL' => :'TransferResponsePull',
#   :'PUSH' => :'TransferResponsePush'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::TransferResponse.build(data)
# => #<TransferResponsePull:0x00007fdd4aab02a0>

Synctera::TransferResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `TransferResponsePull`
- `TransferResponsePush`
- `nil` (if no type matches)

