# Synctera::Transaction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**TransactionData**](TransactionData.md) |  |  |
| **effective_date** | **Time** | The \&quot;effective date\&quot; of a transaction. This may be earlier than posted_date in some cases (for example, a transaction that occurs on a Saturday may not be posted until the following Monday, but would have an effective date of Saturday) |  |
| **id** | **Integer** |  |  |
| **posted_date** | **Time** | The date the transaction was posted. This is the date any money is considered to be added or removed from an account. |  |
| **status** | **String** |  |  |
| **subtype** | **String** | The specific transaction type. For example, for &#x60;ach&#x60;, this may be \&quot;outgoing_debit\&quot;. |  |
| **type** | **String** | The general type of transaction. For example, \&quot;card\&quot; or \&quot;ach\&quot;. |  |
| **uuid** | **String** | The unique identifier of the transaction. |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Transaction.new(
  data: null,
  effective_date: null,
  id: null,
  posted_date: null,
  status: null,
  subtype: null,
  type: null,
  uuid: null
)
```

