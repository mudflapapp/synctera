# Synctera::CreditScoreResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The unique identifier of a customer |  |
| **score** | **Integer** | The credit score value | [optional] |
| **score_requested_time** | **Time** | The time the credit score was requested | [optional] |
| **source_of_score** | [**SourceOfScore**](SourceOfScore.md) |  |  |
| **type** | **String** | The type of the credit score | [optional] |
| **vendor_name** | [**VendorName**](VendorName.md) |  | [optional] |
| **version** | **String** | The version of the credit score | [optional] |
| **creation_time** | **Time** | The date and time the note was created. | [readonly] |
| **id** | **String** | credit score ID | [readonly] |
| **last_updated_time** | **Time** | The date and time the note was last updated. | [readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::CreditScoreResponse.new(
  customer_id: 64438afd-fa20-4010-a573-2bbdca77cdb6,
  score: 700,
  score_requested_time: 2020-01-01T00:00Z,
  source_of_score: null,
  type: FICO,
  vendor_name: null,
  version: 8,
  creation_time: 2010-05-06T12:23:34.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_updated_time: 2010-05-06T12:23:34.321Z
)
```

