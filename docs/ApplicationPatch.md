# Synctera::ApplicationPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **applicants** | [**Array&lt;Applicant&gt;**](Applicant.md) |  | [optional] |
| **status** | [**RestrictedApplicationStatus**](RestrictedApplicationStatus.md) |  | [optional] |
| **application_details** | [**RestrictedApplicationDetails**](RestrictedApplicationDetails.md) |  | [optional] |
| **description** | **String** | A description of the restricted account application | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::ApplicationPatch.new(
  applicants: null,
  status: null,
  application_details: null,
  description: null
)
```

