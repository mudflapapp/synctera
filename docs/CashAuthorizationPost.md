# Synctera::CashAuthorizationPost

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::CashAuthorizationPost.openapi_one_of
# =>
# [
#   :'CashOrderAuthorizationPost'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::CashAuthorizationPost.openapi_discriminator_name
# => :'authorization_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::CashAuthorizationPost.openapi_discriminator_mapping
# =>
# {
#   :'CASH_ORDER' => :'CashOrderAuthorizationPost'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::CashAuthorizationPost.build(data)
# => #<CashOrderAuthorizationPost:0x00007fdd4aab02a0>

Synctera::CashAuthorizationPost.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CashOrderAuthorizationPost`
- `nil` (if no type matches)

