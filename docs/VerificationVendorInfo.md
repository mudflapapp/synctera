# Synctera::VerificationVendorInfo

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::VerificationVendorInfo.openapi_one_of
# =>
# [
#   :'VerificationVendorJson',
#   :'VerificationVendorXml'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::VerificationVendorInfo.openapi_discriminator_name
# => :'content_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::VerificationVendorInfo.openapi_discriminator_mapping
# =>
# {
#   :'application/json' => :'VerificationVendorJson',
#   :'text/xml' => :'VerificationVendorXml'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::VerificationVendorInfo.build(data)
# => #<VerificationVendorJson:0x00007fdd4aab02a0>

Synctera::VerificationVendorInfo.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `VerificationVendorJson`
- `VerificationVendorXml`
- `nil` (if no type matches)

