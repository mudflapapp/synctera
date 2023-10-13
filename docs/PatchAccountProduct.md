# Synctera::PatchAccountProduct

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::PatchAccountProduct.openapi_one_of
# =>
# [
#   :'Fee',
#   :'PatchInterest'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::PatchAccountProduct.openapi_discriminator_name
# => :'product_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::PatchAccountProduct.openapi_discriminator_mapping
# =>
# {
#   :'FEE' => :'Fee',
#   :'INTEREST' => :'PatchInterest'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::PatchAccountProduct.build(data)
# => #<Fee:0x00007fdd4aab02a0>

Synctera::PatchAccountProduct.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Fee`
- `PatchInterest`
- `nil` (if no type matches)

