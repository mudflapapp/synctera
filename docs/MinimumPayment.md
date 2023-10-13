# Synctera::MinimumPayment

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::MinimumPayment.openapi_one_of
# =>
# [
#   :'MinimumPaymentTypeFull',
#   :'MinimumPaymentTypeRateOrAmount'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::MinimumPayment.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::MinimumPayment.openapi_discriminator_mapping
# =>
# {
#   :'FULL' => :'MinimumPaymentTypeFull',
#   :'RATE_OR_AMOUNT' => :'MinimumPaymentTypeRateOrAmount'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::MinimumPayment.build(data)
# => #<MinimumPaymentTypeFull:0x00007fdd4aab02a0>

Synctera::MinimumPayment.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `MinimumPaymentTypeFull`
- `MinimumPaymentTypeRateOrAmount`
- `nil` (if no type matches)

