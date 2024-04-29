# Synctera::CreditApplicationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Account ID for the application. Only required if application purpose is not ACCOUNT_OPENING | [optional] |
| **account_type** | [**ApplicationAccountType**](ApplicationAccountType.md) |  |  |
| **applicants** | [**Array&lt;Applicant&gt;**](Applicant.md) |  |  |
| **application_submitted_time** | **Time** | Application submitted timestamp in RFC3339 format | [optional] |
| **credit_decision_time** | **Time** | Credit decision timestamp in RFC3339 format | [optional] |
| **customer_response_time** | **Time** | Credit decision timestamp in RFC3339 format | [optional] |
| **purpose** | [**CreditApplicationPurpose**](CreditApplicationPurpose.md) |  |  |
| **status** | [**CreditApplicationStatus**](CreditApplicationStatus.md) |  |  |
| **type** | [**ApplicationType**](ApplicationType.md) |  |  |
| **creation_time** | **Time** | Application creation timestamp in RFC3339 format | [readonly] |
| **id** | **String** | Generated ID for the application | [readonly] |
| **last_updated_time** | **Time** | Timestamp of the last application modification in RFC3339 format | [readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::CreditApplicationResponse.new(
  account_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  account_type: null,
  applicants: null,
  application_submitted_time: 2023-01-13T23:59:59Z,
  credit_decision_time: 2023-01-13T23:59:59Z,
  customer_response_time: 2023-01-13T23:59:59Z,
  purpose: null,
  status: null,
  type: null,
  creation_time: null,
  id: null,
  last_updated_time: null
)
```

