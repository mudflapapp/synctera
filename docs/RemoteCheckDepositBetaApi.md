# Synctera::RemoteCheckDepositBetaApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_rdc_deposit**](RemoteCheckDepositBetaApi.md#create_rdc_deposit) | **POST** /rdc/deposits | Create a Remote Check Deposit |
| [**get_rdc_deposit**](RemoteCheckDepositBetaApi.md#get_rdc_deposit) | **GET** /rdc/deposits/{deposit_id} | Get Remote Check Deposit |
| [**list_rdc_deposits**](RemoteCheckDepositBetaApi.md#list_rdc_deposits) | **GET** /rdc/deposits | List Remote Check Deposits |


## create_rdc_deposit

> <DepositGet> create_rdc_deposit(opts)

Create a Remote Check Deposit

Create a new deposit using remote deposit capture to an account 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RemoteCheckDepositBetaApi.new
opts = {
  deposit_post: Synctera::DepositPost.new({account_id: 'b01db9c7-78f2-4a99-8aca-1231d32f9b96', back_image_id: 'b01db9c7-78f2-4a99-8aca-1231d32f9b96', check_amount: 12345, deposit_currency: 'USD', front_image_id: 'b01db9c7-78f2-4a99-8aca-1231d32f9b96'}) # DepositPost | Attributes of the Remote Check Deposit to create
}

begin
  # Create a Remote Check Deposit
  result = api_instance.create_rdc_deposit(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RemoteCheckDepositBetaApi->create_rdc_deposit: #{e}"
end
```

#### Using the create_rdc_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositGet>, Integer, Hash)> create_rdc_deposit_with_http_info(opts)

```ruby
begin
  # Create a Remote Check Deposit
  data, status_code, headers = api_instance.create_rdc_deposit_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositGet>
rescue Synctera::ApiError => e
  puts "Error when calling RemoteCheckDepositBetaApi->create_rdc_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deposit_post** | [**DepositPost**](DepositPost.md) | Attributes of the Remote Check Deposit to create | [optional] |

### Return type

[**DepositGet**](DepositGet.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_rdc_deposit

> <DepositGet> get_rdc_deposit(deposit_id)

Get Remote Check Deposit

Retrieves one deposit made using remote deposit capture associated with an account

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RemoteCheckDepositBetaApi.new
deposit_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | ID of a deposit for a remote deposit capture

begin
  # Get Remote Check Deposit
  result = api_instance.get_rdc_deposit(deposit_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RemoteCheckDepositBetaApi->get_rdc_deposit: #{e}"
end
```

#### Using the get_rdc_deposit_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositGet>, Integer, Hash)> get_rdc_deposit_with_http_info(deposit_id)

```ruby
begin
  # Get Remote Check Deposit
  data, status_code, headers = api_instance.get_rdc_deposit_with_http_info(deposit_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositGet>
rescue Synctera::ApiError => e
  puts "Error when calling RemoteCheckDepositBetaApi->get_rdc_deposit_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deposit_id** | **String** | ID of a deposit for a remote deposit capture |  |

### Return type

[**DepositGet**](DepositGet.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_rdc_deposits

> <DepositList> list_rdc_deposits(opts)

List Remote Check Deposits

Retrieves a paginated list of the deposits made using remote deposit capture associated with an account

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RemoteCheckDepositBetaApi.new
opts = {
  account_id: 'b01db9c7-78f2-4a99-8aca-1231d32f9b96', # String | Unique identifier for the account.
  page_token: 'a8937a0d', # String | 
  limit: 100 # Integer | 
}

begin
  # List Remote Check Deposits
  result = api_instance.list_rdc_deposits(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RemoteCheckDepositBetaApi->list_rdc_deposits: #{e}"
end
```

#### Using the list_rdc_deposits_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DepositList>, Integer, Hash)> list_rdc_deposits_with_http_info(opts)

```ruby
begin
  # List Remote Check Deposits
  data, status_code, headers = api_instance.list_rdc_deposits_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DepositList>
rescue Synctera::ApiError => e
  puts "Error when calling RemoteCheckDepositBetaApi->list_rdc_deposits_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Unique identifier for the account. | [optional] |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**DepositList**](DepositList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

