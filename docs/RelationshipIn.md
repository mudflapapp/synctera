# Synctera::RelationshipIn

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'synctera'

Synctera::RelationshipIn.openapi_one_of
# =>
# [
#   :'BusinessBusinessOwnerRelationship',
#   :'PayerPayeeRelationship',
#   :'PersonBusinessOwnerRelationship',
#   :'PersonBusinessRelationship'
# ]
```

### `openapi_discriminator_name`

Returns the discriminator's property name.

#### Example

```ruby
require 'synctera'

Synctera::RelationshipIn.openapi_discriminator_name
# => :'relationship_type'
```

### `openapi_discriminator_name`

Returns the discriminator's mapping.

#### Example

```ruby
require 'synctera'

Synctera::RelationshipIn.openapi_discriminator_mapping
# =>
# {
#   :'BENEFICIAL_OWNER_OF' => :'PersonBusinessOwnerRelationship',
#   :'MANAGING_PERSON_OF' => :'PersonBusinessRelationship',
#   :'OWNER_OF' => :'BusinessBusinessOwnerRelationship',
#   :'PAYER_PAYEE' => :'PayerPayeeRelationship'
# }
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'synctera'

Synctera::RelationshipIn.build(data)
# => #<BusinessBusinessOwnerRelationship:0x00007fdd4aab02a0>

Synctera::RelationshipIn.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BusinessBusinessOwnerRelationship`
- `PayerPayeeRelationship`
- `PersonBusinessOwnerRelationship`
- `PersonBusinessRelationship`
- `nil` (if no type matches)

