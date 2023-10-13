# Synctera::StatementsApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_statement**](StatementsApi.md#get_statement) | **GET** /statements/{statement_id} | Get a statement |
| [**get_statement_transactions**](StatementsApi.md#get_statement_transactions) | **GET** /statements/{statement_id}/transactions | Get a statement&#39;s transactions |
| [**list_statements**](StatementsApi.md#list_statements) | **GET** /statements | List statements |


## get_statement

> <Statement> get_statement(statement_id)

Get a statement

Gets a full statement by its ID.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::StatementsApi.new
statement_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | The unique identifier of a statement

begin
  # Get a statement
  result = api_instance.get_statement(statement_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling StatementsApi->get_statement: #{e}"
end
```

#### Using the get_statement_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Statement>, Integer, Hash)> get_statement_with_http_info(statement_id)

```ruby
begin
  # Get a statement
  data, status_code, headers = api_instance.get_statement_with_http_info(statement_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Statement>
rescue Synctera::ApiError => e
  puts "Error when calling StatementsApi->get_statement_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statement_id** | **String** | The unique identifier of a statement |  |

### Return type

[**Statement**](Statement.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_statement_transactions

> <TransactionList> get_statement_transactions(statement_id, opts)

Get a statement's transactions

Gets the list of transactions for a statement's period.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::StatementsApi.new
statement_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | The unique identifier of a statement
opts = {
  page_token: 'a8937a0d', # String | 
  limit: 100 # Integer | 
}

begin
  # Get a statement's transactions
  result = api_instance.get_statement_transactions(statement_id, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling StatementsApi->get_statement_transactions: #{e}"
end
```

#### Using the get_statement_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TransactionList>, Integer, Hash)> get_statement_transactions_with_http_info(statement_id, opts)

```ruby
begin
  # Get a statement's transactions
  data, status_code, headers = api_instance.get_statement_transactions_with_http_info(statement_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TransactionList>
rescue Synctera::ApiError => e
  puts "Error when calling StatementsApi->get_statement_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **statement_id** | **String** | The unique identifier of a statement |  |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**TransactionList**](TransactionList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_statements

> <StatementList> list_statements(account_id, opts)

List statements

Gets a list of statement summaries for an account.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::StatementsApi.new
account_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | The account's unique identifier provided by Synctera
opts = {
  page_token: 'a8937a0d', # String | 
  limit: 100 # Integer | 
}

begin
  # List statements
  result = api_instance.list_statements(account_id, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling StatementsApi->list_statements: #{e}"
end
```

#### Using the list_statements_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StatementList>, Integer, Hash)> list_statements_with_http_info(account_id, opts)

```ruby
begin
  # List statements
  data, status_code, headers = api_instance.list_statements_with_http_info(account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StatementList>
rescue Synctera::ApiError => e
  puts "Error when calling StatementsApi->list_statements_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account&#39;s unique identifier provided by Synctera |  |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**StatementList**](StatementList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

