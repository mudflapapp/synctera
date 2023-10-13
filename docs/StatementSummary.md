# Synctera::StatementSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The unique identifier of the account the statement belongs to | [optional][readonly] |
| **due_date** | **Date** | The limit date when the due amount indicated on the statement should be paid | [optional][readonly] |
| **end_date** | **Date** | The date indicating the ending of the time interval covered by the statement | [optional][readonly] |
| **id** | **String** | statement ID | [optional][readonly] |
| **issue_date** | **Date** | The date when the statement has been issued | [optional][readonly] |
| **start_date** | **Date** | The date indicating the beginning of the time interval covered by the statement | [optional][readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::StatementSummary.new(
  account_id: null,
  due_date: null,
  end_date: null,
  id: null,
  issue_date: null,
  start_date: null
)
```

