# Synctera::CustomerInBody

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::CustomerInBody.openapi_one_of
# =>
# [
#   :'Customer',
#   :'Prospect'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::CustomerInBody.openapi_discriminator_name
# => :'status'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::CustomerInBody.openapi_discriminator_mapping
# =>
# {
#   :'ACTIVE' => :'Customer',
#   :'DECEASED' => :'Customer',
#   :'DENIED' => :'Customer',
#   :'DORMANT' => :'Customer',
#   :'ESCHEAT' => :'Customer',
#   :'FROZEN' => :'Customer',
#   :'INACTIVE' => :'Customer',
#   :'PROSPECT' => :'Prospect',
#   :'SANCTION' => :'Customer'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::CustomerInBody.build(data)
# => #<Customer:0x00007fdd4aab02a0>

Synctera::CustomerInBody.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Customer`
- `Prospect`
- `nil` (if no type matches)

