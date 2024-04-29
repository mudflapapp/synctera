# Synctera::CreateEddRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::CreateEddRequest.openapi_one_of
# =>
# [
#   :'EddAccount',
#   :'EddBusiness',
#   :'EddCustomer',
#   :'EddTransaction'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::CreateEddRequest.openapi_discriminator_name
# => :'related_resource_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::CreateEddRequest.openapi_discriminator_mapping
# =>
# {
#   :'ACCOUNT' => :'EddAccount',
#   :'BUSINESS' => :'EddBusiness',
#   :'CUSTOMER' => :'EddCustomer',
#   :'TRANSACTION' => :'EddTransaction'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::CreateEddRequest.build(data)
# => #<EddAccount:0x00007fdd4aab02a0>

Synctera::CreateEddRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `EddAccount`
- `EddBusiness`
- `EddCustomer`
- `EddTransaction`
- `nil` (if no type matches)

