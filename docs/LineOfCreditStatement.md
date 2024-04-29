# Synctera::LineOfCreditStatement

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The unique identifier of the account the statement belongs to | [optional][readonly] |
| **end_date** | **Date** | The date indicating the ending of the time interval covered by the statement | [optional][readonly] |
| **id** | **String** | statement ID | [optional][readonly] |
| **issue_date** | **Date** | The date when the statement has been issued | [optional][readonly] |
| **start_date** | **Date** | The date indicating the beginning of the time interval covered by the statement | [optional][readonly] |
| **account_summary** | [**AccountSummary**](AccountSummary.md) |  | [optional] |
| **authorized_signers** | [**Array&lt;Person&gt;**](Person.md) |  | [optional][readonly] |
| **closing_balance** | **Integer** | The account balance at the end of the statement period, in ISO 4217 minor currency units. | [optional] |
| **customer_service_details** | [**CustomerServiceDetails**](CustomerServiceDetails.md) |  | [optional] |
| **disclosure** | **String** |  | [optional] |
| **exclude_jit_transactions** | **Boolean** | Ignore \&quot;JIT funding\&quot; transactions when generating a statement | [default to false] |
| **include_child_transactions** | **Boolean** | Include transactions from sub-accounts when generating a statement | [default to false] |
| **joint_account_holders** | [**Array&lt;Person&gt;**](Person.md) |  | [optional][readonly] |
| **opening_balance** | **Integer** | The account balance at the start of the statement period, in ISO 4217 minor currency units. | [optional] |
| **primary_account_holder_business** | [**Business**](Business.md) |  | [optional] |
| **primary_account_holder_personal** | [**Person**](Person.md) |  | [optional] |
| **statement_type** | [**StatementType**](StatementType.md) |  |  |
| **total_transactions** | **Integer** | The total number of transactions for this statement period.  | [optional] |
| **credit_summary** | [**CreditSummary**](CreditSummary.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::LineOfCreditStatement.new(
  account_id: null,
  end_date: null,
  id: null,
  issue_date: null,
  start_date: null,
  account_summary: null,
  authorized_signers: null,
  closing_balance: null,
  customer_service_details: null,
  disclosure: null,
  exclude_jit_transactions: false,
  include_child_transactions: false,
  joint_account_holders: null,
  opening_balance: null,
  primary_account_holder_business: null,
  primary_account_holder_personal: null,
  statement_type: null,
  total_transactions: null,
  credit_summary: null
)
```

