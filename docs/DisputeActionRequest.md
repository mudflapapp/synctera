# Synctera::DisputeActionRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::DisputeActionRequest.openapi_one_of
# =>
# [
#   :'AchDisputeAction',
#   :'CardDisputeAction'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::DisputeActionRequest.openapi_discriminator_name
# => :'payment_rail'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::DisputeActionRequest.openapi_discriminator_mapping
# =>
# {
#   :'ACH' => :'AchDisputeAction',
#   :'CARD' => :'CardDisputeAction'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::DisputeActionRequest.build(data)
# => #<AchDisputeAction:0x00007fdd4aab02a0>

Synctera::DisputeActionRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AchDisputeAction`
- `CardDisputeAction`
- `nil` (if no type matches)

