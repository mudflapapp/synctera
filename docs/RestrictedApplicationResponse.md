# Synctera::RestrictedApplicationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_details** | [**RestrictedApplicationDetails**](RestrictedApplicationDetails.md) |  |  |
| **business_id** | **String** | Business ID for the application. An application must have either a Business or a customer associated with it. | [optional] |
| **customer_id** | **String** | Customer ID for the application. An application must have either a Business or a customer associated with it. | [optional] |
| **description** | **String** | A description of the restricted account application | [optional] |
| **status** | [**RestrictedApplicationStatus**](RestrictedApplicationStatus.md) |  |  |
| **type** | [**ApplicationType**](ApplicationType.md) |  |  |
| **creation_time** | **Time** | Application creation timestamp in RFC3339 format | [readonly] |
| **id** | **String** | Generated ID for the application | [readonly] |
| **last_updated_time** | **Time** | Timestamp of the last application modification in RFC3339 format | [readonly] |

## Example

```ruby
require 'synctera'

instance = Synctera::RestrictedApplicationResponse.new(
  application_details: null,
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  description: null,
  status: null,
  type: null,
  creation_time: null,
  id: null,
  last_updated_time: null
)
```

