# Synctera::WebhooksApi

All URIs are relative to *https://api.synctera.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /webhooks | Create a webhook |
| [**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{webhook_id} | Delete a webhook |
| [**get_event**](WebhooksApi.md#get_event) | **GET** /webhooks/{webhook_id}/events/{event_id} | Get webhook event |
| [**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /webhooks/{webhook_id} | Get a webhook |
| [**list_events**](WebhooksApi.md#list_events) | **GET** /webhooks/{webhook_id}/events | List webhook events |
| [**list_webhooks**](WebhooksApi.md#list_webhooks) | **GET** /webhooks | List webhooks |
| [**resend_event**](WebhooksApi.md#resend_event) | **POST** /webhooks/{webhook_id}/events/{event_id}/resend | Resend an event |
| [**trigger_event**](WebhooksApi.md#trigger_event) | **POST** /webhooks/trigger | Trigger an event |
| [**update_webhook**](WebhooksApi.md#update_webhook) | **PUT** /webhooks/{webhook_id} | Update a webhook |


## create_webhook

> <Webhook> create_webhook(webhook)

Create a webhook

Create a webhook 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WebhooksApi.new
webhook = Synctera::Webhook.new({enabled_events: [Synctera::EventTypeExplicit::ADVERSE_ACTION_CREATED], is_enabled: false, url: 'url_example'}) # Webhook | Webhook to create

begin
  # Create a webhook
  result = api_instance.create_webhook(webhook)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> create_webhook_with_http_info(webhook)

```ruby
begin
  # Create a webhook
  data, status_code, headers = api_instance.create_webhook_with_http_info(webhook)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook** | [**Webhook**](Webhook.md) | Webhook to create |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> <DeleteResponse> delete_webhook(webhook_id)

Delete a webhook

Delete a webhook 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WebhooksApi.new
webhook_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | Webhook ID

begin
  # Delete a webhook
  result = api_instance.delete_webhook(webhook_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_webhook_with_http_info(webhook_id)

```ruby
begin
  # Delete a webhook
  data, status_code, headers = api_instance.delete_webhook_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook ID |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_event

> <Event> get_event(event_id, webhook_id)

Get webhook event

Get webhook event by ID 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WebhooksApi.new
event_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | Webhook event ID
webhook_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | Webhook ID

begin
  # Get webhook event
  result = api_instance.get_event(event_id, webhook_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->get_event: #{e}"
end
```

#### Using the get_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> get_event_with_http_info(event_id, webhook_id)

```ruby
begin
  # Get webhook event
  data, status_code, headers = api_instance.get_event_with_http_info(event_id, webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->get_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Webhook event ID |  |
| **webhook_id** | **String** | Webhook ID |  |

### Return type

[**Event**](Event.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> <Webhook> get_webhook(webhook_id)

Get a webhook

Get a webhook by ID 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WebhooksApi.new
webhook_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | Webhook ID

begin
  # Get a webhook
  result = api_instance.get_webhook(webhook_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook: #{e}"
end
```

#### Using the get_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> get_webhook_with_http_info(webhook_id)

```ruby
begin
  # Get a webhook
  data, status_code, headers = api_instance.get_webhook_with_http_info(webhook_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook ID |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_events

> <EventList> list_events(webhook_id, opts)

List webhook events

List webhook events. This response does not include the event response history. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WebhooksApi.new
webhook_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | Webhook ID
opts = {
  start_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | Start time of date-time range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.
  end_time: Time.parse('2013-10-20T19:20:30+01:00'), # Time | End time of date-time range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00.
  page_token: 'a8937a0d', # String | 
  limit: 100 # Integer | 
}

begin
  # List webhook events
  result = api_instance.list_events(webhook_id, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->list_events: #{e}"
end
```

#### Using the list_events_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventList>, Integer, Hash)> list_events_with_http_info(webhook_id, opts)

```ruby
begin
  # List webhook events
  data, status_code, headers = api_instance.list_events_with_http_info(webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventList>
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->list_events_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook ID |  |
| **start_time** | **Time** | Start time of date-time range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00. | [optional] |
| **end_time** | **Time** | End time of date-time range filtering for events. Date is inclusive and should be in UTC timezone 00:00:00. | [optional] |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**EventList**](EventList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhooks

> <WebhookList> list_webhooks(opts)

List webhooks

List all webhooks 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WebhooksApi.new
opts = {
  page_token: 'a8937a0d', # String | 
  is_enabled_only: true, # Boolean | 
  limit: 100 # Integer | 
}

begin
  # List webhooks
  result = api_instance.list_webhooks(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks: #{e}"
end
```

#### Using the list_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookList>, Integer, Hash)> list_webhooks_with_http_info(opts)

```ruby
begin
  # List webhooks
  data, status_code, headers = api_instance.list_webhooks_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookList>
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_token** | **String** |  | [optional] |
| **is_enabled_only** | **Boolean** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**WebhookList**](WebhookList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_event

> <Event> resend_event(event_id, webhook_id, opts)

Resend an event

Resend a webhook event 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WebhooksApi.new
event_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | Webhook event ID
webhook_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | Webhook ID
opts = {
  delay: 56 # Integer | Delay the event triggering in seconds. Events are checked once a minute, so a short delay may not result in an immedidate resend.
}

begin
  # Resend an event
  result = api_instance.resend_event(event_id, webhook_id, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->resend_event: #{e}"
end
```

#### Using the resend_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Event>, Integer, Hash)> resend_event_with_http_info(event_id, webhook_id, opts)

```ruby
begin
  # Resend an event
  data, status_code, headers = api_instance.resend_event_with_http_info(event_id, webhook_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Event>
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->resend_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_id** | **String** | Webhook event ID |  |
| **webhook_id** | **String** | Webhook ID |  |
| **delay** | **Integer** | Delay the event triggering in seconds. Events are checked once a minute, so a short delay may not result in an immedidate resend. | [optional] |

### Return type

[**Event**](Event.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## trigger_event

> <EventTrigger> trigger_event(trigger_event_request)

Trigger an event

Trigger an specific event for webhook testing purpose 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WebhooksApi.new
trigger_event_request = Synctera::TriggerEventRequest.new # TriggerEventRequest | Provide an event type to trigger

begin
  # Trigger an event
  result = api_instance.trigger_event(trigger_event_request)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->trigger_event: #{e}"
end
```

#### Using the trigger_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EventTrigger>, Integer, Hash)> trigger_event_with_http_info(trigger_event_request)

```ruby
begin
  # Trigger an event
  data, status_code, headers = api_instance.trigger_event_with_http_info(trigger_event_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EventTrigger>
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->trigger_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trigger_event_request** | [**TriggerEventRequest**](TriggerEventRequest.md) | Provide an event type to trigger |  |

### Return type

[**EventTrigger**](EventTrigger.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_webhook

> <Webhook> update_webhook(webhook_id, webhook)

Update a webhook

Update a webhook 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WebhooksApi.new
webhook_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | Webhook ID
webhook = Synctera::Webhook.new({enabled_events: [Synctera::EventTypeExplicit::ADVERSE_ACTION_CREATED], is_enabled: false, url: 'url_example'}) # Webhook | Webhook to update

begin
  # Update a webhook
  result = api_instance.update_webhook(webhook_id, webhook)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> update_webhook_with_http_info(webhook_id, webhook)

```ruby
begin
  # Update a webhook
  data, status_code, headers = api_instance.update_webhook_with_http_info(webhook_id, webhook)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue Synctera::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **webhook_id** | **String** | Webhook ID |  |
| **webhook** | [**Webhook**](Webhook.md) | Webhook to update |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

