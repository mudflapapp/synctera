# Synctera::RestrictedApplicationPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_details** | [**RestrictedApplicationDetails**](RestrictedApplicationDetails.md) |  | [optional] |
| **description** | **String** | A description of the restricted account application | [optional] |
| **status** | [**RestrictedApplicationStatus**](RestrictedApplicationStatus.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::RestrictedApplicationPatch.new(
  application_details: null,
  description: null,
  status: null
)
```

