# Synctera::CreditApplicationPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicants** | [**Array&lt;Applicant&gt;**](Applicant.md) |  | [optional] |
| **status** | [**CreditApplicationStatus**](CreditApplicationStatus.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::CreditApplicationPatch.new(
  applicants: null,
  status: null
)
```

