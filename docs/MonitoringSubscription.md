# Synctera::MonitoringSubscription

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Unique ID for the business. Exactly one of &#x60;business_id&#x60; or &#x60;person_id&#x60; must be set.  | [optional] |
| **creation_time** | **Time** | The date and time the resource was created. | [optional][readonly] |
| **id** | **String** | Unique identifier for this subscription. | [optional][readonly] |
| **last_updated_time** | **Time** | The date and time the resource was last update. | [optional][readonly] |
| **metadata** | **Object** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **person_id** | **String** | Unique ID for the person. Exactly one of &#x60;person_id&#x60; or &#x60;business_id&#x60; must be set.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::MonitoringSubscription.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  creation_time: 2010-05-06T12:23:34.321Z,
  id: null,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  metadata: null,
  person_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7
)
```

