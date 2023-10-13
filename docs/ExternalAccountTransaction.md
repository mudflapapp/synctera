# Synctera::ExternalAccountTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | Transaction amount. Number in cents. E.g. 1000 represents $10.00 | [optional] |
| **authorized_date** | **Date** | Date that the transaction is authorized. ISO 8601 format ( YYYY-MM-DD ). | [optional] |
| **category** | **Array&lt;String&gt;** | Category of the transaction | [optional] |
| **check_number** | **String** | Check number of the transaction. This field will be null if not a check transaction. | [optional] |
| **currency** | **String** | ISO 4217 alphabetic currency code | [optional] |
| **date** | **Date** | For pending transactions, this represents the date of the transaction occurred; for posted transactions, this represents the date of the transaction posted. ISO 8601 format ( YYYY-MM-DD ).  | [optional] |
| **is_pending** | **Boolean** | Indicates the transaction is pending or unsettled if true. | [optional] |
| **merchant_name** | **String** | Merchant name of the transaction | [optional] |
| **payment_channel** | **String** | channel used to make a payment | [optional] |
| **payment_method** | **String** | Transfer type of the transaction, e.g. ACH | [optional] |
| **transaction_id** | **String** | case-sensitive transaction ID | [optional] |
| **transaction_type** | **String** | type of the transaction | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalAccountTransaction.new(
  amount: null,
  authorized_date: null,
  category: null,
  check_number: null,
  currency: USD,
  date: null,
  is_pending: null,
  merchant_name: Fancy store,
  payment_channel: null,
  payment_method: null,
  transaction_id: null,
  transaction_type: null
)
```

