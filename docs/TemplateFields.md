# Synctera::TemplateFields

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::TemplateFields.openapi_one_of
# =>
# [
#   :'TemplateFieldsChargeSecured',
#   :'TemplateFieldsChargeUnsecured',
#   :'TemplateFieldsDepository',
#   :'TemplateFieldsGeneralLedger',
#   :'TemplateFieldsLineOfCredit'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::TemplateFields.openapi_discriminator_name
# => :'account_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::TemplateFields.openapi_discriminator_mapping
# =>
# {
#   :'CHARGE_SECURED' => :'TemplateFieldsChargeSecured',
#   :'CHARGE_UNSECURED' => :'TemplateFieldsChargeUnsecured',
#   :'CHECKING' => :'TemplateFieldsDepository',
#   :'GENERAL_LEDGER' => :'TemplateFieldsGeneralLedger',
#   :'LINE_OF_CREDIT' => :'TemplateFieldsLineOfCredit',
#   :'SAVING' => :'TemplateFieldsDepository'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::TemplateFields.build(data)
# => #<TemplateFieldsChargeSecured:0x00007fdd4aab02a0>

Synctera::TemplateFields.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `TemplateFieldsChargeSecured`
- `TemplateFieldsChargeUnsecured`
- `TemplateFieldsDepository`
- `TemplateFieldsGeneralLedger`
- `TemplateFieldsLineOfCredit`
- `nil` (if no type matches)

