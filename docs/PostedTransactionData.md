# Synctera::PostedTransactionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_data** | **Object** | an unstructured json blob representing additional transaction information supplied by the integrator. | [optional] |
| **force_post** | **Boolean** | Whether or not the hold was forced (spending controls ignored) |  |
| **hold_id** | **String** | The uuid of the hold (pending transaction) that this transaction originated from, if any. | [optional] |
| **lines** | [**Array&lt;TransactionLine1&gt;**](TransactionLine1.md) | The set of accounting entries associated with this transaction. For example, a debit to a customer account will have a corresponding credit in a general ledger account. |  |
| **memo** | **String** | A short note to the recipient |  |
| **metadata** | **Object** |  |  |
| **original_trx** | **String** | The \&quot;original\&quot; transaction that this transaction is related to. This is only populated in the case of reversed transactions. | [optional] |
| **parent_trx** | **String** | The \&quot;parent\&quot; transaction that this transaction is related to. This is only populated in the case of scheduled transactions. | [optional] |
| **risk_info** | **Object** | Information received by the transaction risk/fraud service related to this transaction | [optional] |
| **user_data** | **Object** | An unstructured JSON blob representing additional transaction information specific to each payment rail. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PostedTransactionData.new(
  external_data: null,
  force_post: null,
  hold_id: null,
  lines: null,
  memo: null,
  metadata: null,
  original_trx: null,
  parent_trx: null,
  risk_info: null,
  user_data: null
)
```

