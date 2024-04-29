# Synctera::DebitCardRequestDetails

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::DebitCardRequestDetails.openapi_one_of
# =>
# [
#   :'PhysicalDebitCardIssuanceRequest',
#   :'VirtualDebitCardIssuanceRequest'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::DebitCardRequestDetails.openapi_discriminator_name
# => :'form'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::DebitCardRequestDetails.openapi_discriminator_mapping
# =>
# {
#   :'PHYSICAL' => :'PhysicalDebitCardIssuanceRequest',
#   :'VIRTUAL' => :'VirtualDebitCardIssuanceRequest'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::DebitCardRequestDetails.build(data)
# => #<PhysicalDebitCardIssuanceRequest:0x00007fdd4aab02a0>

Synctera::DebitCardRequestDetails.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PhysicalDebitCardIssuanceRequest`
- `VirtualDebitCardIssuanceRequest`
- `nil` (if no type matches)

