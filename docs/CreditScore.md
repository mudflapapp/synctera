# Synctera::CreditScore

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

## Example

```ruby
require 'synctera'

instance = Synctera::CreditScore.new(
  customer_id: 64438afd-fa20-4010-a573-2bbdca77cdb6,
  score: 700,
  score_requested_time: 2020-01-01T00:00Z,
  source_of_score: null,
  type: FICO,
  vendor_name: null,
  version: 8
)
```

