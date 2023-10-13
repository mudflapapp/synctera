# Synctera::WebhookList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_page_token** | **String** | If returned, use the next_page_token to query for the next page of results. Not returned if there are no more rows. | [optional] |
| **webhooks** | [**Array&lt;Webhook&gt;**](Webhook.md) | Array of webhooks |  |

## Example

```ruby
require 'synctera'

instance = Synctera::WebhookList.new(
  next_page_token: a8937a0d,
  webhooks: null
)
```

