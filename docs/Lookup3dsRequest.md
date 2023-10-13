# Synctera::Lookup3dsRequest

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::Lookup3dsRequest.openapi_one_of
# =>
# [
#   :'Lookup3dsRequestBrowser',
#   :'Lookup3dsRequestSdk'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::Lookup3dsRequest.openapi_discriminator_name
# => :'device_channel'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::Lookup3dsRequest.openapi_discriminator_mapping
# =>
# {
#   :'BROWSER' => :'Lookup3dsRequestBrowser',
#   :'SDK' => :'Lookup3dsRequestSdk'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::Lookup3dsRequest.build(data)
# => #<Lookup3dsRequestBrowser:0x00007fdd4aab02a0>

Synctera::Lookup3dsRequest.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `Lookup3dsRequestBrowser`
- `Lookup3dsRequestSdk`
- `nil` (if no type matches)

