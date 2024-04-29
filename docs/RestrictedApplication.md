# Synctera::RestrictedApplication

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_details** | [**RestrictedApplicationDetails**](RestrictedApplicationDetails.md) |  |  |
| **business_id** | **String** | Business ID for the application. An application must have either a Business or a customer associated with it. | [optional] |
| **customer_id** | **String** | Customer ID for the application. An application must have either a Business or a customer associated with it. | [optional] |
| **description** | **String** | A description of the restricted account application | [optional] |
| **status** | [**RestrictedApplicationStatus**](RestrictedApplicationStatus.md) |  |  |
| **type** | [**ApplicationType**](ApplicationType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::RestrictedApplication.new(
  application_details: null,
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  description: null,
  status: null,
  type: null
)
```

