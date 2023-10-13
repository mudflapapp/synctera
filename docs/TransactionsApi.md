# Synctera::TransactionsApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_pending_transaction_by_id**](TransactionsApi.md#get_pending_transaction_by_id) | **GET** /transactions/pending/{id} | Get a pending transaction |
| [**get_posted_transaction_by_id**](TransactionsApi.md#get_posted_transaction_by_id) | **GET** /transactions/posted/{id} | Get a posted transaction |
| [**list_pending_transactions**](TransactionsApi.md#list_pending_transactions) | **GET** /transactions/pending | List pending transactions |
| [**list_posted_transactions**](TransactionsApi.md#list_posted_transactions) | **GET** /transactions/posted | List posted transactions |


## get_pending_transaction_by_id

> <PendingTransaction> get_pending_transaction_by_id(id)

Get a pending transaction

Get a pending transaction by its uuid 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::TransactionsApi.new
id = '472341e0-ea3e-41a1-96bc-fd0185e1eac8' # String | Transaction ID

begin
  # Get a pending transaction
  result = api_instance.get_pending_transaction_by_id(id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsApi->get_pending_transaction_by_id: #{e}"
end
```

#### Using the get_pending_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PendingTransaction>, Integer, Hash)> get_pending_transaction_by_id_with_http_info(id)

```ruby
begin
  # Get a pending transaction
  data, status_code, headers = api_instance.get_pending_transaction_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PendingTransaction>
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsApi->get_pending_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Transaction ID |  |

### Return type

[**PendingTransaction**](PendingTransaction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_posted_transaction_by_id

> <PostedTransaction> get_posted_transaction_by_id(id)

Get a posted transaction

Get a posted transaction by its uuid 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::TransactionsApi.new
id = '472341e0-ea3e-41a1-96bc-fd0185e1eac8' # String | Transaction ID

begin
  # Get a posted transaction
  result = api_instance.get_posted_transaction_by_id(id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsApi->get_posted_transaction_by_id: #{e}"
end
```

#### Using the get_posted_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostedTransaction>, Integer, Hash)> get_posted_transaction_by_id_with_http_info(id)

```ruby
begin
  # Get a posted transaction
  data, status_code, headers = api_instance.get_posted_transaction_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostedTransaction>
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsApi->get_posted_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Transaction ID |  |

### Return type

[**PostedTransaction**](PostedTransaction.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_pending_transactions

> <PendingTransactions> list_pending_transactions(opts)

List pending transactions

Get paginated list of pending transactions matching the provided filters 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::TransactionsApi.new
opts = {
  include_child_transactions: true, # Boolean | Include transactions from sub-accounts when listing transactions for a given account
  from_date: Date.parse('2013-10-20'), # Date | Only display transactions with a posting date greater than from_date
  to_date: Date.parse('2013-10-20'), # Date | Only display transactions with a posting date less than or equal to to_date
  transaction_id: '7d943c51-e4ff-4e57-9558-08cab6b963c7', # String | Only display holds linked to the provided transaction id
  status: ['inner_example'], # Array<String> | The status of the transaction
  type: 'type_example', # String | Only display transactions matching the given type
  idempotency_key: ['inner_example'], # Array<String> | Transaction Idempotency Key(s). Multiple keys can be provided as a comma-separated list.
  account_no: 'account_no_example', # String | Account number
  exclude_jit_transactions: true, # Boolean | Hide \"JIT funding\" transactions from results
  page_token: 'a8937a0d', # String | 
  account_id: '7d943c51-e4ff-4e57-9558-08cab6b963c7', # String | Account ID
  card_id: '6dc0397d-1aba-4be9-9582-895a7a887d49', # String | Card ID
  reference_id: 'reference_id_example', # String | Reference ID
  limit: 100, # Integer | 
  subtype: 'subtype_example' # String | Only display transactions matching the given subtype
}

begin
  # List pending transactions
  result = api_instance.list_pending_transactions(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsApi->list_pending_transactions: #{e}"
end
```

#### Using the list_pending_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PendingTransactions>, Integer, Hash)> list_pending_transactions_with_http_info(opts)

```ruby
begin
  # List pending transactions
  data, status_code, headers = api_instance.list_pending_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PendingTransactions>
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsApi->list_pending_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_child_transactions** | **Boolean** | Include transactions from sub-accounts when listing transactions for a given account | [optional] |
| **from_date** | **Date** | Only display transactions with a posting date greater than from_date | [optional] |
| **to_date** | **Date** | Only display transactions with a posting date less than or equal to to_date | [optional] |
| **transaction_id** | **String** | Only display holds linked to the provided transaction id | [optional] |
| **status** | [**Array&lt;String&gt;**](String.md) | The status of the transaction | [optional] |
| **type** | **String** | Only display transactions matching the given type | [optional] |
| **idempotency_key** | [**Array&lt;String&gt;**](String.md) | Transaction Idempotency Key(s). Multiple keys can be provided as a comma-separated list. | [optional] |
| **account_no** | **String** | Account number | [optional] |
| **exclude_jit_transactions** | **Boolean** | Hide \&quot;JIT funding\&quot; transactions from results | [optional] |
| **page_token** | **String** |  | [optional] |
| **account_id** | **String** | Account ID | [optional] |
| **card_id** | **String** | Card ID | [optional] |
| **reference_id** | **String** | Reference ID | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **subtype** | **String** | Only display transactions matching the given subtype | [optional] |

### Return type

[**PendingTransactions**](PendingTransactions.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_posted_transactions

> <PostedTransactions> list_posted_transactions(opts)

List posted transactions

Get paginated list of posted transactions matching the provided filters 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::TransactionsApi.new
opts = {
  include_child_transactions: true, # Boolean | Include transactions from sub-accounts when listing transactions for a given account
  uuid: ['inner_example'], # Array<String> | Transaction UUID(s). Multiple UUIDs can be provided as a comma-separated list.
  from_date: Date.parse('2013-10-20'), # Date | Only display transactions with a posting date greater than from_date
  to_date: Date.parse('2013-10-20'), # Date | Only display transactions with a posting date less than or equal to to_date
  type: 'type_example', # String | Only display transactions matching the given type
  idempotency_key: ['inner_example'], # Array<String> | Transaction Idempotency Key(s). Multiple keys can be provided as a comma-separated list.
  account_no: 'account_no_example', # String | Account number
  exclude_jit_transactions: true, # Boolean | Hide \"JIT funding\" transactions from results
  page_token: 'a8937a0d', # String | 
  account_id: '7d943c51-e4ff-4e57-9558-08cab6b963c7', # String | Account ID
  card_id: '6dc0397d-1aba-4be9-9582-895a7a887d49', # String | Card ID
  reference_id: 'reference_id_example', # String | Reference ID
  limit: 100, # Integer | 
  subtype: 'subtype_example' # String | Only display transactions matching the given subtype
}

begin
  # List posted transactions
  result = api_instance.list_posted_transactions(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsApi->list_posted_transactions: #{e}"
end
```

#### Using the list_posted_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostedTransactions>, Integer, Hash)> list_posted_transactions_with_http_info(opts)

```ruby
begin
  # List posted transactions
  data, status_code, headers = api_instance.list_posted_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostedTransactions>
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsApi->list_posted_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_child_transactions** | **Boolean** | Include transactions from sub-accounts when listing transactions for a given account | [optional] |
| **uuid** | [**Array&lt;String&gt;**](String.md) | Transaction UUID(s). Multiple UUIDs can be provided as a comma-separated list. | [optional] |
| **from_date** | **Date** | Only display transactions with a posting date greater than from_date | [optional] |
| **to_date** | **Date** | Only display transactions with a posting date less than or equal to to_date | [optional] |
| **type** | **String** | Only display transactions matching the given type | [optional] |
| **idempotency_key** | [**Array&lt;String&gt;**](String.md) | Transaction Idempotency Key(s). Multiple keys can be provided as a comma-separated list. | [optional] |
| **account_no** | **String** | Account number | [optional] |
| **exclude_jit_transactions** | **Boolean** | Hide \&quot;JIT funding\&quot; transactions from results | [optional] |
| **page_token** | **String** |  | [optional] |
| **account_id** | **String** | Account ID | [optional] |
| **card_id** | **String** | Card ID | [optional] |
| **reference_id** | **String** | Reference ID | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **subtype** | **String** | Only display transactions matching the given subtype | [optional] |

### Return type

[**PostedTransactions**](PostedTransactions.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

