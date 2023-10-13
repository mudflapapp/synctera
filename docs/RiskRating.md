# Synctera::RiskRating

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **configuration_id** | **String** | The risk configuration id used in risk score calculation | [optional][readonly] |
| **id** | **String** | Risk rating ID | [optional][readonly] |
| **next_review** | **Time** | The next review date where customer risk will be calculated | [optional] |
| **risk_level** | **String** | A textual representation of the customer risk score | [optional] |
| **risk_review** | **Time** | The date the customer risk rating was calculated | [optional][readonly] |
| **risk_score** | **Float** | The cumulative score of all risk rating fields | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::RiskRating.new(
  configuration_id: null,
  id: null,
  next_review: null,
  risk_level: null,
  risk_review: null,
  risk_score: null
)
```

