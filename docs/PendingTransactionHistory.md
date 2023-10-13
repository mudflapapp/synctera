# Synctera::PendingTransactionHistory

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account id associated with the hold |  |
| **account_no** | **String** | The account number associated with the hold |  |
| **created** | **Time** | The creation date of the hold |  |
| **data** | [**PendingTransactionHistoryData**](PendingTransactionHistoryData.md) |  | [optional] |
| **id** | **Integer** |  |  |
| **idemkey** | **String** | The idempotency key used when initially creating this transaction. |  |
| **offset_account_id** | **String** | The offset account id associated with the hold | [optional] |
| **offset_account_no** | **String** | The offset account number associated with the hold | [optional] |
| **reference_id** | **String** | An external ID provided by the payment network to represent this transaction. |  |
| **tenant** | **String** | The tenant associated with this transaction, in the form \&quot;&lt;bankid&gt;_&lt;partnerid&gt;\&quot; |  |
| **updated** | **Time** | The date the hold was last update |  |
| **uuid** | **String** | The unique identifier of the hold transaction. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::PendingTransactionHistory.new(
  account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  account_no: null,
  created: null,
  data: null,
  id: null,
  idemkey: null,
  offset_account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  offset_account_no: null,
  reference_id: null,
  tenant: null,
  updated: null,
  uuid: null
)
```

