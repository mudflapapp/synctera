# Synctera::PatchAccountsRequestAccountIdentifiers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iban** | **String** | The IBAN of the account. On write, Synctera will store the entire IBAN number; on read, we only return the last 4 characters.  | [optional] |
| **number** | **String** | The account number.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PatchAccountsRequestAccountIdentifiers.new(
  iban: LI4476584648937N59B00,
  number: 87654321
)
```

