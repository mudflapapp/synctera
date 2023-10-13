# Synctera::SpendControlTimeRange

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::SpendControlTimeRange.openapi_one_of
# =>
# [
#   :'SpendControlRollingWindowDays',
#   :'SpendControlSingleTransaction'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::SpendControlTimeRange.openapi_discriminator_name
# => :'time_range_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::SpendControlTimeRange.openapi_discriminator_mapping
# =>
# {
#   :'ROLLING_WINDOW_DAYS' => :'SpendControlRollingWindowDays',
#   :'SINGLE_TRANSACTION' => :'SpendControlSingleTransaction'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::SpendControlTimeRange.build(data)
# => #<SpendControlRollingWindowDays:0x00007fdd4aab02a0>

Synctera::SpendControlTimeRange.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SpendControlRollingWindowDays`
- `SpendControlSingleTransaction`
- `nil` (if no type matches)

