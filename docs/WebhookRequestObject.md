# Synctera::WebhookRequestObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_resource** | **String** | Json string of object associated with the event. For example, if your event is ACCOUNT.CREATED, You can refer to Acccount to parse the account event to obtain the ID, status etc.  | [optional] |
| **event_resource_changed_fields** | **String** | Json string of object associated with the event related to a resource change. This only contains those fields that have value changed on the event, and the field values are prior to the resource change event.  | [optional] |
| **event_time** | **Time** | Timestamp of the current event raised |  |
| **id** | **String** | The unique ID of the current event |  |
| **metadata** | **String** | Metadata that stored in the webhook subscription |  |
| **response_history** | [**Array&lt;ResponseHistoryItem&gt;**](ResponseHistoryItem.md) | Response history of the webhook request | [optional] |
| **status** | **String** | Current event status. Failing event will keep retry until it is purged. | [optional] |
| **type** | [**EventTypeExplicit**](EventTypeExplicit.md) |  |  |
| **url** | **String** | URL that you specified for the webhook and where this request will be sent |  |
| **webhook_id** | **String** | Id of the Webhook the current request belongs to |  |

## Example

```ruby
require 'synctera'

instance = Synctera::WebhookRequestObject.new(
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

