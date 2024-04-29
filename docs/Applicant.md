# Synctera::Applicant

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **adverse_action_id** | **String** | Adverse Action ID for the applicant. | [optional] |
| **business_id** | **String** | Business ID for the application. Only one of customer_id or business_id can be provided.  | [optional] |
| **credit_score_ids** | **Array&lt;String&gt;** | List of credit score IDs for the applicant of the credit application | [optional] |
| **customer_id** | **String** | Customer ID for the application. Only one of customer_id or business_id can be provided.  | [optional] |
| **is_primary** | **Boolean** | Whether this applicant is the primary applicant |  |
| **underwriting_data** | [**Array&lt;UnderwritingData&gt;**](UnderwritingData.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Applicant.new(
  adverse_action_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  credit_score_ids: null,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  is_primary: null,
  underwriting_data: null
)
```

