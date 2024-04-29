# Synctera::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A description of what the webhook is used for | [optional] |
| **enabled_events** | [**Array&lt;EventType&gt;**](EventType.md) | A list of the events that will trigger the webhook. Subscribing to a wildcard event, e.g. ACCOUNT.*, will send all webhooks for all events that match that pattern. Note that this can include new event types added after the subscription was created. |  |
| **id** | **String** | The unique ID of the webhook | [optional][readonly] |
| **is_enabled** | **Boolean** | Set the webhook to be enabled or disabled |  |
| **last_updated** | **Time** | Timestamp that this webhook was created or the last time any field was changed | [optional][readonly] |
| **metadata** | **String** | Additional information stored to the webhook | [optional] |
| **tenant** | **String** | The id of the tenant containing the resource. This is relevant for Fintechs that have multiple workspaces.  | [optional] |
| **url** | **String** | URL that the webhook will send request to |  |

## Example

```ruby
require 'synctera'

instance = Synctera::Webhook.new(
  description: null,
  enabled_events: null,
  id: null,
  is_enabled: null,
  last_updated: null,
  metadata: null,
  tenant: abcdef_ghijkl,
  url: null
)
```

