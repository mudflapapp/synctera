# Synctera::RestrictedApplicationQuestion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **answer** | **String** | Responses to the question |  |
| **fintech_item_id** | **String** | Client supplied item id | [optional] |
| **question** | **String** | Question for the applicant |  |
| **type** | [**RestrictedApplicationItemType**](RestrictedApplicationItemType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RestrictedApplicationQuestion.new(
  answer: null,
  fintech_item_id: null,
  question: null,
  type: null
)
```

