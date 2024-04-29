# Synctera::CreateEddResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::CreateEddResponse.openapi_one_of
# =>
# [
#   :'EddAccountResponse',
#   :'EddBusinessResponse',
#   :'EddCustomerResponse',
#   :'EddTransactionResponse'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::CreateEddResponse.openapi_discriminator_name
# => :'related_resource_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::CreateEddResponse.openapi_discriminator_mapping
# =>
# {
#   :'ACCOUNT' => :'EddAccountResponse',
#   :'BUSINESS' => :'EddBusinessResponse',
#   :'CUSTOMER' => :'EddCustomerResponse',
#   :'TRANSACTION' => :'EddTransactionResponse'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::CreateEddResponse.build(data)
# => #<EddAccountResponse:0x00007fdd4aab02a0>

Synctera::CreateEddResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `EddAccountResponse`
- `EddBusinessResponse`
- `EddCustomerResponse`
- `EddTransactionResponse`
- `nil` (if no type matches)

