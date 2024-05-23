# Synctera::Question

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **answer** | **String** | The answer |  |
| **question** | **String** | The question |  |
| **section** | **String** | The section of the question | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::Question.new(
  answer: Since 2010,
  question: Since when do you work in this position?,
  section: reason
)
```

