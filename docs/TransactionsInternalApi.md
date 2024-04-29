# Synctera::TransactionsInternalApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_transactions_batch_payments**](TransactionsInternalApi.md#get_transactions_batch_payments) | **GET** /transactions/batchable | Get Transactions From Batch Payments Templates |


## get_transactions_batch_payments

> <PostedTransactions> get_transactions_batch_payments(opts)

Get Transactions From Batch Payments Templates

Get all transactions that have the potential to be included in a batch payment. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::TransactionsInternalApi.new
opts = {
  enabled: true # Boolean | 
}

begin
  # Get Transactions From Batch Payments Templates
  result = api_instance.get_transactions_batch_payments(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsInternalApi->get_transactions_batch_payments: #{e}"
end
```

#### Using the get_transactions_batch_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostedTransactions>, Integer, Hash)> get_transactions_batch_payments_with_http_info(opts)

```ruby
begin
  # Get Transactions From Batch Payments Templates
  data, status_code, headers = api_instance.get_transactions_batch_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostedTransactions>
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsInternalApi->get_transactions_batch_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **enabled** | **Boolean** |  | [optional] |

### Return type

[**PostedTransactions**](PostedTransactions.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

