# Synctera::MinimumPaymentFull

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::MinimumPaymentFull.openapi_one_of
# =>
# [
#   :'MinimumPaymentTypeFull'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::MinimumPaymentFull.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::MinimumPaymentFull.openapi_discriminator_mapping
# =>
# {
#   :'FULL' => :'MinimumPaymentTypeFull'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::MinimumPaymentFull.build(data)
# => #<MinimumPaymentTypeFull:0x00007fdd4aab02a0>

Synctera::MinimumPaymentFull.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `MinimumPaymentTypeFull`
- `nil` (if no type matches)

