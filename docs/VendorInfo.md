# Synctera::VendorInfo

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::VendorInfo.openapi_one_of
# =>
# [
#   :'VendorJson',
#   :'VendorXml'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::VendorInfo.openapi_discriminator_name
# => :'content_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::VendorInfo.openapi_discriminator_mapping
# =>
# {
#   :'application/json' => :'VendorJson',
#   :'text/xml' => :'VendorXml'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::VendorInfo.build(data)
# => #<VendorJson:0x00007fdd4aab02a0>

Synctera::VendorInfo.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `VendorJson`
- `VendorXml`
- `nil` (if no type matches)

