# Synctera::CreateTransferResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::CreateTransferResponse.openapi_one_of
# =>
# [
#   :'CreateTransferResponsePull',
#   :'CreateTransferResponsePush'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::CreateTransferResponse.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::CreateTransferResponse.openapi_discriminator_mapping
# =>
# {
#   :'PULL' => :'CreateTransferResponsePull',
#   :'PUSH' => :'CreateTransferResponsePush'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::CreateTransferResponse.build(data)
# => #<CreateTransferResponsePull:0x00007fdd4aab02a0>

Synctera::CreateTransferResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreateTransferResponsePull`
- `CreateTransferResponsePush`
- `nil` (if no type matches)

