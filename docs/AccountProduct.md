# Synctera::AccountProduct

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::AccountProduct.openapi_one_of
# =>
# [
#   :'Fee',
#   :'Interest'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::AccountProduct.openapi_discriminator_name
# => :'product_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::AccountProduct.openapi_discriminator_mapping
# =>
# {
#   :'FEE' => :'Fee',
#   :'INTEREST' => :'Interest'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::AccountProduct.build(data)
# => #<Fee:0x00007fdd4aab02a0>

Synctera::AccountProduct.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Fee`
- `Interest`
- `nil` (if no type matches)

