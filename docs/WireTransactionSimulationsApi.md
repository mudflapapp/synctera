# Synctera::WireTransactionSimulationsApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**wire_return_simulation**](WireTransactionSimulationsApi.md#wire_return_simulation) | **POST** /wires/transaction_simulations/receiving_return | Simulate receiving Wire transfer return |
| [**wire_transaction_simulation**](WireTransactionSimulationsApi.md#wire_transaction_simulation) | **POST** /wires/transaction_simulations/receiving_transaction | Simulate receiving Wire transaction |


## wire_return_simulation

> <WireSimulationResponse> wire_return_simulation(wire_return_simulation_request)

Simulate receiving Wire transfer return

Use to simulate receiving a Wire transfer return in test environments. Creates an incoming Wire file with a single return entry based on a previously created outgoing transaction. The file gets automatically processed.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WireTransactionSimulationsApi.new
wire_return_simulation_request = Synctera::WireReturnSimulationRequest.new({wire_id: '23a37f14-16eb-461d-9331-b78182adbad4'}) # WireReturnSimulationRequest | Incoming Wire return simulation request

begin
  # Simulate receiving Wire transfer return
  result = api_instance.wire_return_simulation(wire_return_simulation_request)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WireTransactionSimulationsApi->wire_return_simulation: #{e}"
end
```

#### Using the wire_return_simulation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WireSimulationResponse>, Integer, Hash)> wire_return_simulation_with_http_info(wire_return_simulation_request)

```ruby
begin
  # Simulate receiving Wire transfer return
  data, status_code, headers = api_instance.wire_return_simulation_with_http_info(wire_return_simulation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WireSimulationResponse>
rescue Synctera::ApiError => e
  puts "Error when calling WireTransactionSimulationsApi->wire_return_simulation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wire_return_simulation_request** | [**WireReturnSimulationRequest**](WireReturnSimulationRequest.md) | Incoming Wire return simulation request |  |

### Return type

[**WireSimulationResponse**](WireSimulationResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## wire_transaction_simulation

> <WireSimulationResponse> wire_transaction_simulation(wire_transaction_simulation_request)

Simulate receiving Wire transaction

Use to simulate receiving Wire transaction in test environments. Creates an incoming Wire file, which gets automatically processed.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WireTransactionSimulationsApi.new
wire_transaction_simulation_request = Synctera::WireTransactionSimulationRequest.new({account_number: '123638791329', amount: 607}) # WireTransactionSimulationRequest | Incoming Wire simulation request

begin
  # Simulate receiving Wire transaction
  result = api_instance.wire_transaction_simulation(wire_transaction_simulation_request)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WireTransactionSimulationsApi->wire_transaction_simulation: #{e}"
end
```

#### Using the wire_transaction_simulation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WireSimulationResponse>, Integer, Hash)> wire_transaction_simulation_with_http_info(wire_transaction_simulation_request)

```ruby
begin
  # Simulate receiving Wire transaction
  data, status_code, headers = api_instance.wire_transaction_simulation_with_http_info(wire_transaction_simulation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WireSimulationResponse>
rescue Synctera::ApiError => e
  puts "Error when calling WireTransactionSimulationsApi->wire_transaction_simulation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wire_transaction_simulation_request** | [**WireTransactionSimulationRequest**](WireTransactionSimulationRequest.md) | Incoming Wire simulation request |  |

### Return type

[**WireSimulationResponse**](WireSimulationResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

