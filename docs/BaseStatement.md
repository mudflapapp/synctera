# Synctera::BaseStatement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The unique identifier of the account the statement belongs to | [optional][readonly] |
| **due_date** | **Date** | The limit date when the due amount indicated on the statement should be paid | [optional][readonly] |
| **end_date** | **Date** | The date indicating the ending of the time interval covered by the statement | [optional][readonly] |
| **id** | **String** | statement ID | [optional][readonly] |
| **issue_date** | **Date** | The date when the statement has been issued | [optional][readonly] |
| **start_date** | **Date** | The date indicating the beginning of the time interval covered by the statement | [optional][readonly] |
| **account_summary** | [**AccountSummary**](AccountSummary.md) |  | [optional] |
| **authorized_signer** | [**Array&lt;Person&gt;**](Person.md) |  | [optional][readonly] |
| **closing_balance** | **Integer** | The account balance at the end of the statement period, in ISO 4217 minor currency units. | [optional] |
| **customer_service_details** | [**CustomerServiceDetails**](CustomerServiceDetails.md) |  | [optional] |
| **disclosure** | **String** |  | [optional] |
| **joint_account_holders** | [**Array&lt;Person&gt;**](Person.md) |  | [optional][readonly] |
| **opening_balance** | **Integer** | The account balance at the start of the statement period, in ISO 4217 minor currency units. | [optional] |
| **primary_account_holder_business** | [**Business1**](Business1.md) |  | [optional] |
| **primary_account_holder_personal** | [**Person**](Person.md) |  | [optional] |
| **transactions** | [**Array&lt;Transaction&gt;**](Transaction.md) | This attribute is deprecated and will be removed in a future API version. Use &#x60;GET /v0/statements/{statement_id}/transactions&#x60; instead.  | [optional] |
| **transactions_omitted** | **Boolean** | Only appears in &#x60;statement.created&#x60; webhook payloads. Indicates that the &#x60;transactions&#x60; attribute was emptied due to webhook size constraints. If this attribute returns &#x60;true&#x60;, you may use  &#x60;GET /v0/statements/{statement_id}/transactions&#x60; to retrieve the full list.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::BaseStatement.new(
  account_id: null,
  due_date: null,
  end_date: null,
  id: null,
  issue_date: null,
  start_date: null,
  account_summary: null,
  authorized_signer: null,
  closing_balance: null,
  customer_service_details: null,
  disclosure: null,
  joint_account_holders: null,
  opening_balance: null,
  primary_account_holder_business: null,
  primary_account_holder_personal: null,
  transactions: null,
  transactions_omitted: null
)
```

