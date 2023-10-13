# Synctera::WireRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transfer amount in cents ($100 would be 10000) |  |
| **bank_message** | **String** | Instructions intended for the financial institutions that are processing the wire. | [optional] |
| **currency** | **String** | 3-character currency code |  |
| **customer_id** | **String** | The customer UUID representing the person initiating the Wire transfer |  |
| **metadata** | **Object** | Additional transfer metadata structured as key-value pairs | [optional] |
| **originating_account_id** | **String** | Sender account ID |  |
| **receiving_account_id** | **String** | The external account uuid representing the recipient of the wire. |  |
| **recipient_message** | **String** | Information from the originator to the beneficiary (recipient). |  |

## Example

```ruby
require 'synctera'

instance = Synctera::WireRequest.new(
  amount: 10000,
  bank_message: null,
  currency: USD,
  customer_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  metadata: null,
  originating_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  receiving_account_id: b01db9c7-78f2-4a99-8aca-1231d32f9b96,
  recipient_message: null
)
```

