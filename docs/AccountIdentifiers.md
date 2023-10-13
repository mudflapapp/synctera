# Synctera::AccountIdentifiers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **iban** | **String** | The IBAN of the account. Value may be masked, in which case only the last four digits are returned.  | [optional] |
| **number** | **String** | The account number. Value may be masked, in which case only the last four digits are returned.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountIdentifiers.new(
  iban: LI4476584648937N59B00,
  number: 78277121
)
```

