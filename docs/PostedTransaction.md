# Synctera::PostedTransaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | The creation date of the transaction |  |
| **data** | [**PostedTransactionData**](PostedTransactionData.md) |  |  |
| **disputes** | [**Array&lt;TransactionDispute&gt;**](TransactionDispute.md) | The set of disputes related to this transaction. Since a dispute can be for a partial amount of a transaction, a single transaction can be involved in multiple disputes. | [optional] |
| **effective_date** | **Time** | The \&quot;effective date\&quot; of a transaction. This may be earlier than posted_date in some cases (for example, a transaction that occurs on a Saturday may not be posted until the following Monday, but would have an effective date of Saturday) |  |
| **id** | **Integer** |  |  |
| **idemkey** | **String** | The idempotency key used when initially creating this transaction. |  |
| **info_only** | **Boolean** | Whether or not this transaction represents a purely informational operation or an actual money movement |  |
| **lead_mode** | **Boolean** | Whether or not this transaction was created operating in \&quot;lead ledger\&quot; mode |  |
| **posted_date** | **Time** | The date the transaction was posted. This is the date any money is considered to be added or removed from an account. |  |
| **reference_id** | **String** | An external ID provided by the payment network to represent this transaction. This will always be null for internal transfers. |  |
| **status** | **String** |  |  |
| **subtype** | **String** | The specific transaction type. For example, for &#x60;ach&#x60;, this may be \&quot;outgoing_debit\&quot;. |  |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  |  |
| **transaction_time** | **Time** | The time the transaction occurred. |  |
| **type** | **String** | The general type of transaction. For example, \&quot;card\&quot; or \&quot;ach\&quot;. |  |
| **updated** | **Time** | The date the transaction was last updated |  |
| **uuid** | **String** | The unique identifier of the transaction. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::PostedTransaction.new(
  created: null,
  data: null,
  disputes: null,
  effective_date: null,
  id: null,
  idemkey: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  info_only: null,
  lead_mode: null,
  posted_date: null,
  reference_id: null,
  status: null,
  subtype: null,
  tenant: abcdef_ghijkl,
  transaction_time: null,
  type: null,
  updated: null,
  uuid: null
)
```

