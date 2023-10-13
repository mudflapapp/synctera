# Synctera::CardResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::CardResponse.openapi_one_of
# =>
# [
#   :'PhysicalCardResponse',
#   :'VirtualCardResponse'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::CardResponse.openapi_discriminator_name
# => :'form'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::CardResponse.openapi_discriminator_mapping
# =>
# {
#   :'PHYSICAL' => :'PhysicalCardResponse',
#   :'VIRTUAL' => :'VirtualCardResponse'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::CardResponse.build(data)
# => #<PhysicalCardResponse:0x00007fdd4aab02a0>

Synctera::CardResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PhysicalCardResponse`
- `VirtualCardResponse`
- `nil` (if no type matches)

