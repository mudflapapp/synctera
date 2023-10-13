# Synctera::ACHTransactionSimulationsApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**ach_return_simulation**](ACHTransactionSimulationsApi.md#ach_return_simulation) | **POST** /ach/transaction_simulations/receiving_return | Simulate receiving ACH return |
| [**ach_transaction_simulation**](ACHTransactionSimulationsApi.md#ach_transaction_simulation) | **POST** /ach/transaction_simulations/receiving_transaction | Simulate receiving ACH transaction |


## ach_return_simulation

> Object ach_return_simulation(ach_return_simulation_request)

Simulate receiving ACH return

Use to simulate receiving ACH return in test environments. Creates an incoming ACH file with a single return entry based on a previously created outgoing transaction. The file gets automatically processed.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::ACHTransactionSimulationsApi.new
ach_return_simulation_request = Synctera::AchReturnSimulationRequest.new({ach_id: '23a37f14-16eb-461d-9331-b78182adbad4'}) # AchReturnSimulationRequest | Incoming ACH return simulation

begin
  # Simulate receiving ACH return
  result = api_instance.ach_return_simulation(ach_return_simulation_request)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling ACHTransactionSimulationsApi->ach_return_simulation: #{e}"
end
```

#### Using the ach_return_simulation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> ach_return_simulation_with_http_info(ach_return_simulation_request)

```ruby
begin
  # Simulate receiving ACH return
  data, status_code, headers = api_instance.ach_return_simulation_with_http_info(ach_return_simulation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling ACHTransactionSimulationsApi->ach_return_simulation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ach_return_simulation_request** | [**AchReturnSimulationRequest**](AchReturnSimulationRequest.md) | Incoming ACH return simulation |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## ach_transaction_simulation

> Object ach_transaction_simulation(ach_transaction_simulation_request)

Simulate receiving ACH transaction

Use to simulate receiving ACH transaction in test environments. Creates an incoming ACH file with a single transaction, which gets automatically processed.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::ACHTransactionSimulationsApi.new
ach_transaction_simulation_request = Synctera::AchTransactionSimulationRequest.new({account_number: '123638791329', amount: 607, dc_sign: 'credit', effective_date: Date.parse('Thu Mar 17 17:00:00 PDT 2022')}) # AchTransactionSimulationRequest | Sent ACH request

begin
  # Simulate receiving ACH transaction
  result = api_instance.ach_transaction_simulation(ach_transaction_simulation_request)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling ACHTransactionSimulationsApi->ach_transaction_simulation: #{e}"
end
```

#### Using the ach_transaction_simulation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> ach_transaction_simulation_with_http_info(ach_transaction_simulation_request)

```ruby
begin
  # Simulate receiving ACH transaction
  data, status_code, headers = api_instance.ach_transaction_simulation_with_http_info(ach_transaction_simulation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue Synctera::ApiError => e
  puts "Error when calling ACHTransactionSimulationsApi->ach_transaction_simulation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ach_transaction_simulation_request** | [**AchTransactionSimulationRequest**](AchTransactionSimulationRequest.md) | Sent ACH request |  |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

