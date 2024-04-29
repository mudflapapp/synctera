# Synctera::DebitCardResponseDetails

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::DebitCardResponseDetails.openapi_one_of
# =>
# [
#   :'PhysicalDebitCardResponse',
#   :'VirtualDebitCardResponse'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::DebitCardResponseDetails.openapi_discriminator_name
# => :'form'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::DebitCardResponseDetails.openapi_discriminator_mapping
# =>
# {
#   :'PHYSICAL' => :'PhysicalDebitCardResponse',
#   :'VIRTUAL' => :'VirtualDebitCardResponse'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::DebitCardResponseDetails.build(data)
# => #<PhysicalDebitCardResponse:0x00007fdd4aab02a0>

Synctera::DebitCardResponseDetails.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PhysicalDebitCardResponse`
- `VirtualDebitCardResponse`
- `nil` (if no type matches)

