# Synctera::TransactionsBetaApi

All URIs are relative to *https://api.synctera.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_transaction_by_id**](TransactionsBetaApi.md#get_transaction_by_id) | **GET** /transactions/{id} | Get a transaction by ID |
| [**list_transactions**](TransactionsBetaApi.md#list_transactions) | **GET** /transactions | List Transactions |


## get_transaction_by_id

> <Transaction1> get_transaction_by_id(id, opts)

Get a transaction by ID

> 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get a transaction by its uuid 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::TransactionsBetaApi.new
id = '472341e0-ea3e-41a1-96bc-fd0185e1eac8' # String | Transaction ID
opts = {
  show_partial_clearings: true # Boolean | Include a transaction for each clearing of an authorization.
}

begin
  # Get a transaction by ID
  result = api_instance.get_transaction_by_id(id, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsBetaApi->get_transaction_by_id: #{e}"
end
```

#### Using the get_transaction_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Transaction1>, Integer, Hash)> get_transaction_by_id_with_http_info(id, opts)

```ruby
begin
  # Get a transaction by ID
  data, status_code, headers = api_instance.get_transaction_by_id_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Transaction1>
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsBetaApi->get_transaction_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Transaction ID |  |
| **show_partial_clearings** | **Boolean** | Include a transaction for each clearing of an authorization. | [optional] |

### Return type

[**Transaction1**](Transaction1.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_transactions

> <PaginatedTransactions> list_transactions(opts)

List Transactions

> 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get paginated list of transactions matching the provided filters 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::TransactionsBetaApi.new
opts = {
  posted_amount: 56, # Integer | Only return transactions equal to the given `posted_amount`
  include_child_transactions: true, # Boolean | Include transactions from sub-accounts when listing transactions for a given account
  amount: 56, # Integer | Only return transactions equal to the given `amount`
  posted_date: Date.parse('2013-10-20'), # Date | Only return transactions matching the given `posted_date`
  amount_lt: 56, # Integer | Only return transactions with `amount` less than `amount_lt`
  type: [Synctera::TransactionTypes::ACH], # Array<TransactionTypes> | Only return transactions matching the given type
  posted_amount_gte: 56, # Integer | Only return transactions with `posted_amount` greater than or equal to `posted_amount_gte`
  posted_amount_lt: 56, # Integer | Only return transactions with `posted_amount` less than `posted_amount_lt`
  posted_amount_lte: 56, # Integer | Only return transactions with `posted_amount` less than or equal to `posted_amount_lte`
  status: [Synctera::TransactionStatuses::COMPLETE], # Array<TransactionStatuses> | Only return transactions with the given status or statuses
  internal_account_id: 'internal_account_id_example', # String | Only return transactions matching the given `internal_account_id`
  account_id: '7d943c51-e4ff-4e57-9558-08cab6b963c7', # String | Account ID
  pending_amount_lte: 56, # Integer | Only return transactions with `pending_amount` less than or equal to `pending_amount_lte`
  amount_gte: 56, # Integer | Only return transactions with `amount` greater than or equal to `amount_gte`
  show_partial_clearings: true, # Boolean | Include a transaction for each clearing of an authorization.
  group_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | Only return transactions matching the given `group_id`
  pending_amount_gte: 56, # Integer | Only return transactions with `pending_amount` greater than or equal to `pending_amount_gte`
  exclude_jit_transactions: true, # Boolean | Hide \"JIT funding\" transactions from results
  page_token: 'a8937a0d', # String | 
  card_id: '6dc0397d-1aba-4be9-9582-895a7a887d49', # String | Card ID
  pending_amount: 56, # Integer | Only return transactions equal to the given `pending_amount`
  account_source: 'CUSTOMER', # String | Determines whether to return only transactions against customer accounts (`CUSTOMER`) vs internal accounts (`INTERNAL`). The default is to return all transactions if no `account_source` is specified.
  posted_date_from: Date.parse('2013-10-20'), # Date | Only return transactions later than the given `posted_date`
  posted_amount_gt: 56, # Integer | only return transactions with `posted_amount` greater than `posted_amount_gt`
  pending_amount_gt: 56, # Integer | only return transactions with `pending_amount` greater than `pending_amount_gt`
  limit: 100, # Integer | 
  amount_gt: 56, # Integer | Only return transactions with `amount` greater than `amount_gt`
  posted_date_to: Date.parse('2013-10-20'), # Date | Only return transactions up to the given `posted_date`
  amount_lte: 56, # Integer | Only return transactions with `amount` less than or equal to `amount_lte`
  subtype: [Synctera::AllTransactionSubtypes.new], # Array<AllTransactionSubtypes> | Only return transactions matching the given subtype
  pending_amount_lt: 56 # Integer | Only return transactions with `pending_amount` less than `pending_amount_lt`
}

begin
  # List Transactions
  result = api_instance.list_transactions(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsBetaApi->list_transactions: #{e}"
end
```

#### Using the list_transactions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaginatedTransactions>, Integer, Hash)> list_transactions_with_http_info(opts)

```ruby
begin
  # List Transactions
  data, status_code, headers = api_instance.list_transactions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaginatedTransactions>
rescue Synctera::ApiError => e
  puts "Error when calling TransactionsBetaApi->list_transactions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **posted_amount** | **Integer** | Only return transactions equal to the given &#x60;posted_amount&#x60; | [optional] |
| **include_child_transactions** | **Boolean** | Include transactions from sub-accounts when listing transactions for a given account | [optional] |
| **amount** | **Integer** | Only return transactions equal to the given &#x60;amount&#x60; | [optional] |
| **posted_date** | **Date** | Only return transactions matching the given &#x60;posted_date&#x60; | [optional] |
| **amount_lt** | **Integer** | Only return transactions with &#x60;amount&#x60; less than &#x60;amount_lt&#x60; | [optional] |
| **type** | [**Array&lt;TransactionTypes&gt;**](TransactionTypes.md) | Only return transactions matching the given type | [optional] |
| **posted_amount_gte** | **Integer** | Only return transactions with &#x60;posted_amount&#x60; greater than or equal to &#x60;posted_amount_gte&#x60; | [optional] |
| **posted_amount_lt** | **Integer** | Only return transactions with &#x60;posted_amount&#x60; less than &#x60;posted_amount_lt&#x60; | [optional] |
| **posted_amount_lte** | **Integer** | Only return transactions with &#x60;posted_amount&#x60; less than or equal to &#x60;posted_amount_lte&#x60; | [optional] |
| **status** | [**Array&lt;TransactionStatuses&gt;**](TransactionStatuses.md) | Only return transactions with the given status or statuses | [optional] |
| **internal_account_id** | **String** | Only return transactions matching the given &#x60;internal_account_id&#x60; | [optional] |
| **account_id** | **String** | Account ID | [optional] |
| **pending_amount_lte** | **Integer** | Only return transactions with &#x60;pending_amount&#x60; less than or equal to &#x60;pending_amount_lte&#x60; | [optional] |
| **amount_gte** | **Integer** | Only return transactions with &#x60;amount&#x60; greater than or equal to &#x60;amount_gte&#x60; | [optional] |
| **show_partial_clearings** | **Boolean** | Include a transaction for each clearing of an authorization. | [optional] |
| **group_id** | **String** | Only return transactions matching the given &#x60;group_id&#x60; | [optional] |
| **pending_amount_gte** | **Integer** | Only return transactions with &#x60;pending_amount&#x60; greater than or equal to &#x60;pending_amount_gte&#x60; | [optional] |
| **exclude_jit_transactions** | **Boolean** | Hide \&quot;JIT funding\&quot; transactions from results | [optional] |
| **page_token** | **String** |  | [optional] |
| **card_id** | **String** | Card ID | [optional] |
| **pending_amount** | **Integer** | Only return transactions equal to the given &#x60;pending_amount&#x60; | [optional] |
| **account_source** | **String** | Determines whether to return only transactions against customer accounts (&#x60;CUSTOMER&#x60;) vs internal accounts (&#x60;INTERNAL&#x60;). The default is to return all transactions if no &#x60;account_source&#x60; is specified. | [optional] |
| **posted_date_from** | **Date** | Only return transactions later than the given &#x60;posted_date&#x60; | [optional] |
| **posted_amount_gt** | **Integer** | only return transactions with &#x60;posted_amount&#x60; greater than &#x60;posted_amount_gt&#x60; | [optional] |
| **pending_amount_gt** | **Integer** | only return transactions with &#x60;pending_amount&#x60; greater than &#x60;pending_amount_gt&#x60; | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **amount_gt** | **Integer** | Only return transactions with &#x60;amount&#x60; greater than &#x60;amount_gt&#x60; | [optional] |
| **posted_date_to** | **Date** | Only return transactions up to the given &#x60;posted_date&#x60; | [optional] |
| **amount_lte** | **Integer** | Only return transactions with &#x60;amount&#x60; less than or equal to &#x60;amount_lte&#x60; | [optional] |
| **subtype** | [**Array&lt;AllTransactionSubtypes&gt;**](AllTransactionSubtypes.md) | Only return transactions matching the given subtype | [optional] |
| **pending_amount_lt** | **Integer** | Only return transactions with &#x60;pending_amount&#x60; less than &#x60;pending_amount_lt&#x60; | [optional] |

### Return type

[**PaginatedTransactions**](PaginatedTransactions.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

