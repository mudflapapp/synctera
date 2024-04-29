# Synctera::DisputeActionResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::DisputeActionResponse.openapi_one_of
# =>
# [
#   :'AchDisputeActionResponse',
#   :'CardDisputeActionResponse'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::DisputeActionResponse.openapi_discriminator_name
# => :'payment_rail'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::DisputeActionResponse.openapi_discriminator_mapping
# =>
# {
#   :'ACH' => :'AchDisputeActionResponse',
#   :'CARD' => :'CardDisputeActionResponse'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::DisputeActionResponse.build(data)
# => #<AchDisputeActionResponse:0x00007fdd4aab02a0>

Synctera::DisputeActionResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AchDisputeActionResponse`
- `CardDisputeActionResponse`
- `nil` (if no type matches)

