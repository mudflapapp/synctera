# Synctera::AdverseAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **notification_time** | **Time** | The date and time the adverse action notice was sent. |  |
| **purpose** | [**Purpose**](Purpose.md) |  |  |
| **reasons** | **Array&lt;String&gt;** | Reasons (up to 5) provided to customers when adverse action is taken. |  |
| **related_resource_id** | **String** | Unique identifier for the related resource. |  |
| **related_resource_type** | [**RelatedResourceType**](RelatedResourceType.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AdverseAction.new(
  metadata: null,
  notification_time: 2010-05-06T12:23:34.321Z,
  purpose: null,
  reasons: null,
  related_resource_id: 42ab5301-92b5-4f8a-bbc4-058119d3f7dc,
  related_resource_type: null
)
```

