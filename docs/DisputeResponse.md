# Synctera::DisputeResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::DisputeResponse.openapi_one_of
# =>
# [
#   :'AchDisputeResponse',
#   :'CardDisputeResponse'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::DisputeResponse.openapi_discriminator_name
# => :'payment_rail'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::DisputeResponse.openapi_discriminator_mapping
# =>
# {
#   :'ACH' => :'AchDisputeResponse',
#   :'CARD' => :'CardDisputeResponse'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::DisputeResponse.build(data)
# => #<AchDisputeResponse:0x00007fdd4aab02a0>

Synctera::DisputeResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AchDisputeResponse`
- `CardDisputeResponse`
- `nil` (if no type matches)

