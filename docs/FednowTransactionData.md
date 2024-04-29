# Synctera::FednowTransactionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **additional_transaction_information** | **Array&lt;String&gt;** | Additional information about the transaction payment - in free text form | [optional] |
| **customer_id** | **String** | Unambiguous identification of the customer which owns the originator account | [optional] |
| **id** | **String** | The FedNow payment uuid | [optional] |
| **originating_account_id** | **String** | Unambiguous identification of the account of the originator of the transaction | [optional] |
| **receiving_account_id** | **String** | Unambiguous identification of the account of the receiver of the payment transaction | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::FednowTransactionData.new(
  additional_transaction_information: null,
  customer_id: null,
  id: null,
  originating_account_id: null,
  receiving_account_id: null
)
```

