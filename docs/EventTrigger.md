# Synctera::EventTrigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_resource** | **String** | Json string of object associated with the event. For example, if your event is ACCOUNT.CREATED, You can refer to Acccount to parse the account event to obtain the ID, status etc.  | [optional] |
| **event_resource_changed_fields** | **String** | Json string of object associated with the event related to a resource change. This only contains those fields that have value changed on the event, and the field values are prior to the resource change event.  | [optional] |
| **event_time** | **Time** | Timestamp of the current event raised | [optional] |
| **id** | **String** | Unique event ID of the webhook request. Use event endpoints to get more event summary data | [optional][readonly] |
| **metadata** | **Object** | Metadata that stored in the webhook subscription | [optional] |
| **response_history** | [**Array&lt;ResponseHistoryItem&gt;**](ResponseHistoryItem.md) | Response history of the webhook request | [optional] |
| **status** | **String** | Current event status. Failing event will keep retry until it is purged. | [optional] |
| **type** | [**EventTypeExplicit**](EventTypeExplicit.md) |  | [optional] |
| **url** | **String** | URL that the current event will be sent to | [optional] |
| **webhook_id** | **String** | Webhook the current event belongs to | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::EventTrigger.new(
  event_resource: null,
  event_resource_changed_fields: null,
  event_time: null,
  id: null,
  metadata: null,
  response_history: null,
  status: null,
  type: null,
  url: null,
  webhook_id: null
)
```

