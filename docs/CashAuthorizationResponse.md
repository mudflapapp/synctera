# Synctera::CashAuthorizationResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::CashAuthorizationResponse.openapi_one_of
# =>
# [
#   :'CashOrderAuthorizationResponse'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::CashAuthorizationResponse.openapi_discriminator_name
# => :'authorization_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::CashAuthorizationResponse.openapi_discriminator_mapping
# =>
# {
#   :'CASH_ORDER' => :'CashOrderAuthorizationResponse'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::CashAuthorizationResponse.build(data)
# => #<CashOrderAuthorizationResponse:0x00007fdd4aab02a0>

Synctera::CashAuthorizationResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CashOrderAuthorizationResponse`
- `nil` (if no type matches)

