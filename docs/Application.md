# Synctera::Application

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::Application.openapi_one_of
# =>
# [
#   :'CreditApplication',
#   :'RestrictedApplication'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::Application.openapi_discriminator_name
# => :'type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::Application.openapi_discriminator_mapping
# =>
# {
#   :'CREDIT' => :'CreditApplication',
#   :'RESTRICTED_ACCOUNT' => :'RestrictedApplication'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::Application.build(data)
# => #<CreditApplication:0x00007fdd4aab02a0>

Synctera::Application.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CreditApplication`
- `RestrictedApplication`
- `nil` (if no type matches)

