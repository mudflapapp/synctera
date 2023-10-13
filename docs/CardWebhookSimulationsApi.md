# Synctera::CardWebhookSimulationsApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**simulate_card_fulfillment_event**](CardWebhookSimulationsApi.md#simulate_card_fulfillment_event) | **POST** /cards/{card_id}/webhook_simulations/fulfillment | Simulate Card Fulfillment Event |


## simulate_card_fulfillment_event

> <SimulateCardFulfillment> simulate_card_fulfillment_event(card_id, simulate_card_fulfillment)

Simulate Card Fulfillment Event

This endpoint is for testing environment only to trigger a simulated change in card fulfillment status event 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CardWebhookSimulationsApi.new
card_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
simulate_card_fulfillment = Synctera::SimulateCardFulfillment.new({card_fulfillment_status: Synctera::CardFulfillmentStatus::DIGITALLY_PRESENTED}) # SimulateCardFulfillment | Desired simulated fulfillment status change value

begin
  # Simulate Card Fulfillment Event
  result = api_instance.simulate_card_fulfillment_event(card_id, simulate_card_fulfillment)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CardWebhookSimulationsApi->simulate_card_fulfillment_event: #{e}"
end
```

#### Using the simulate_card_fulfillment_event_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SimulateCardFulfillment>, Integer, Hash)> simulate_card_fulfillment_event_with_http_info(card_id, simulate_card_fulfillment)

```ruby
begin
  # Simulate Card Fulfillment Event
  data, status_code, headers = api_instance.simulate_card_fulfillment_event_with_http_info(card_id, simulate_card_fulfillment)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SimulateCardFulfillment>
rescue Synctera::ApiError => e
  puts "Error when calling CardWebhookSimulationsApi->simulate_card_fulfillment_event_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **card_id** | **String** |  |  |
| **simulate_card_fulfillment** | [**SimulateCardFulfillment**](SimulateCardFulfillment.md) | Desired simulated fulfillment status change value |  |

### Return type

[**SimulateCardFulfillment**](SimulateCardFulfillment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

