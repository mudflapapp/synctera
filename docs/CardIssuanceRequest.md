# Synctera::CardIssuanceRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::CardIssuanceRequest.openapi_one_of
# =>
# [
#   :'PhysicalCardIssuanceRequest',
#   :'VirtualCardIssuanceRequest'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::CardIssuanceRequest.openapi_discriminator_name
# => :'form'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::CardIssuanceRequest.openapi_discriminator_mapping
# =>
# {
#   :'PHYSICAL' => :'PhysicalCardIssuanceRequest',
#   :'VIRTUAL' => :'VirtualCardIssuanceRequest'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::CardIssuanceRequest.build(data)
# => #<PhysicalCardIssuanceRequest:0x00007fdd4aab02a0>

Synctera::CardIssuanceRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PhysicalCardIssuanceRequest`
- `VirtualCardIssuanceRequest`
- `nil` (if no type matches)

