# Synctera::PendingTransactionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **Integer** | The amount of the hold. |  |
| **auto_post_at** | **Time** | The account \&quot;available balance\&quot; at the time this hold was created |  |
| **avail_balance** | **Integer** | The account \&quot;available balance\&quot; at the time this hold was created (to be deprecated) |  |
| **available_balance** | **Integer** | The account \&quot;available balance\&quot; at the time this hold was created |  |
| **balance** | **Integer** | The account balance at the time this hold was created |  |
| **currency** | **String** | ISO 4217 alphabetic currency code of the transfer amount |  |
| **dc_sign** | [**DcSign**](DcSign.md) |  |  |
| **effective_date** | **Time** | The effective date of the transaction once it gets posted |  |
| **expires_at** | **Time** | The date that at which this hold is no longer valid. |  |
| **external_data** | **Object** | an unstructured json blob representing additional transaction information supplied by the integrator. | [optional] |
| **force_post** | **Boolean** | Whether or not the hold was forced (spending controls ignored) |  |
| **history** | [**Array&lt;PendingTransactionHistory&gt;**](PendingTransactionHistory.md) | An array representing any previous states of the hold, if it has been modified (For example, increasing or decreasing the hold amount). |  |
| **idemkey** | **String** | The idempotency key used when initially creating this hold. |  |
| **memo** | **String** | A short note to the recipient |  |
| **network** | **String** | The network this transaction is associated with |  |
| **operation** | **String** |  |  |
| **reason** | **String** | If a hold has been declined or modified, this will include the reason. |  |
| **req_amount** | **Integer** | The requested amount, in the case of hold modifications. |  |
| **risk_info** | **Object** | Information received by the transaction risk/fraud service related to this transaction | [optional] |
| **status** | **String** | The status of the hold. |  |
| **subtype** | **String** | The specific transaction type. For example, for &#x60;ach&#x60;, this may be \&quot;outgoing_debit\&quot;. |  |
| **total_amount** | **Integer** | The total amount of the hold. This may be different than &#x60;amount&#x60; in the case where a hold increase or decrease was requested. |  |
| **transaction_id** | **String** | The uuid of the transaction that this pending transaction originated from, if any. This is primary used when a transaction \&quot;posts\&quot;, but a subset of the amount reserved until a future settlement date. | [optional] |
| **transaction_time** | **Time** | The time that the transaction was created |  |
| **type** | **String** | The general type of transaction. For example, \&quot;card\&quot; or \&quot;ach\&quot;. |  |
| **user_data** | **Object** | An unstructured JSON blob representing additional transaction information specific to each payment rail. | [optional] |
| **was_partial** | **Boolean** | Does this hold represent a partial debit (or credit)? |  |

## Example

```ruby
require 'synctera'

instance = Synctera::PendingTransactionData.new(
  amount: null,
  auto_post_at: null,
  avail_balance: null,
  available_balance: null,
  balance: null,
  currency: null,
  dc_sign: null,
  effective_date: null,
  expires_at: null,
  external_data: null,
  force_post: null,
  history: null,
  idemkey: null,
  memo: null,
  network: null,
  operation: null,
  reason: null,
  req_amount: null,
  risk_info: null,
  status: null,
  subtype: null,
  total_amount: null,
  transaction_id: null,
  transaction_time: null,
  type: null,
  user_data: null,
  was_partial: null
)
```

