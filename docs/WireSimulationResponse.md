# Synctera::WireSimulationResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::WireSimulationResponse.openapi_one_of
# =>
# [
#   :'WireSimulationDatasoftResponse',
#   :'WireSimulationFedwireResponse'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::WireSimulationResponse.build(data)
# => #<WireSimulationDatasoftResponse:0x00007fdd4aab02a0>

Synctera::WireSimulationResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `WireSimulationDatasoftResponse`
- `WireSimulationFedwireResponse`
- `nil` (if no type matches)

