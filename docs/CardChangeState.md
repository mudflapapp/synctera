# Synctera::CardChangeState

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::CardChangeState.openapi_one_of
# =>
# [
#   :'CardFulfillmentStatus',
#   :'CardPinStatus',
#   :'CardStatus'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::CardChangeState.build(data)
# => #<CardFulfillmentStatus:0x00007fdd4aab02a0>

Synctera::CardChangeState.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `CardFulfillmentStatus`
- `CardPinStatus`
- `CardStatus`
- `nil` (if no type matches)

