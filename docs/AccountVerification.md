# Synctera::AccountVerification

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::AccountVerification.openapi_one_of
# =>
# [
#   :'FinicityAccountVerification',
#   :'ManualAccountVerification',
#   :'PlaidAccountVerification'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::AccountVerification.openapi_discriminator_name
# => :'vendor'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::AccountVerification.openapi_discriminator_mapping
# =>
# {
#   :'FINICITY' => :'FinicityAccountVerification',
#   :'MANUAL' => :'ManualAccountVerification',
#   :'PLAID' => :'PlaidAccountVerification'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::AccountVerification.build(data)
# => #<FinicityAccountVerification:0x00007fdd4aab02a0>

Synctera::AccountVerification.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `FinicityAccountVerification`
- `ManualAccountVerification`
- `PlaidAccountVerification`
- `nil` (if no type matches)

