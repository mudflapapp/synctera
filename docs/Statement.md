# Synctera::Statement

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::Statement.openapi_one_of
# =>
# [
#   :'ChargeSecuredStatement',
#   :'ChargeUnsecuredStatement',
#   :'DepositoryStatement',
#   :'LineOfCreditStatement'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::Statement.openapi_discriminator_name
# => :'statement_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::Statement.openapi_discriminator_mapping
# =>
# {
#   :'CHARGE_SECURED' => :'ChargeSecuredStatement',
#   :'CHARGE_UNSECURED' => :'ChargeUnsecuredStatement',
#   :'DEPOSIT' => :'DepositoryStatement',
#   :'LINE_OF_CREDIT' => :'LineOfCreditStatement'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::Statement.build(data)
# => #<ChargeSecuredStatement:0x00007fdd4aab02a0>

Synctera::Statement.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `ChargeSecuredStatement`
- `ChargeUnsecuredStatement`
- `DepositoryStatement`
- `LineOfCreditStatement`
- `nil` (if no type matches)

