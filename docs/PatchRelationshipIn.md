# Synctera::PatchRelationshipIn

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::PatchRelationshipIn.openapi_one_of
# =>
# [
#   :'PatchBusinessBusinessOwnerRelationship',
#   :'PatchPayerPayeeRelationship',
#   :'PatchPersonBusinessOwnerRelationship',
#   :'PatchPersonBusinessRelationship'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::PatchRelationshipIn.openapi_discriminator_name
# => :'relationship_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::PatchRelationshipIn.openapi_discriminator_mapping
# =>
# {
#   :'BENEFICIAL_OWNER_OF' => :'PatchPersonBusinessOwnerRelationship',
#   :'MANAGING_PERSON_OF' => :'PatchPersonBusinessRelationship',
#   :'OWNER_OF' => :'PatchBusinessBusinessOwnerRelationship',
#   :'PAYER_PAYEE' => :'PatchPayerPayeeRelationship'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::PatchRelationshipIn.build(data)
# => #<PatchBusinessBusinessOwnerRelationship:0x00007fdd4aab02a0>

Synctera::PatchRelationshipIn.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `PatchBusinessBusinessOwnerRelationship`
- `PatchPayerPayeeRelationship`
- `PatchPersonBusinessOwnerRelationship`
- `PatchPersonBusinessRelationship`
- `nil` (if no type matches)

