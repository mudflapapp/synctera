# Synctera::Party

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_number** | **String** | account number of the person | [optional][readonly] |
| **address** | [**Address3**](Address3.md) |  | [optional] |
| **address_lines** | [**AddressLines**](AddressLines.md) |  | [optional] |
| **alternate_identifier** | **String** | alternate identifier of the party, used in place of account number | [optional][readonly] |
| **identifier_type** | **String** | type of value used to identify the party | [optional][readonly] |
| **name** | **String** | name of the person | [optional][readonly] |
| **routing_number** | **String** | routing number of the bank this person is a member of | [optional][readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::Party.new(
  account_number: 192178512,
  address: null,
  address_lines: null,
  alternate_identifier: 123456789,
  identifier_type: Demand Deposit Account Number,
  name: John Smith,
  routing_number: 272479663
)
```

