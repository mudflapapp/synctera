# Synctera::SpendControlsBetaApi

All URIs are relative to *https://api.synctera.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_spend_control**](SpendControlsBetaApi.md#create_spend_control) | **POST** /spend_controls | Create Spend Control |
| [**get_spend_control**](SpendControlsBetaApi.md#get_spend_control) | **GET** /spend_controls/{spend_control_id} | Get Spend Control |
| [**list_spend_controls**](SpendControlsBetaApi.md#list_spend_controls) | **GET** /spend_controls | List Spend Controls |
| [**update_spend_control**](SpendControlsBetaApi.md#update_spend_control) | **PATCH** /spend_controls/{spend_control_id} | Update Spend Control |


## create_spend_control

> <SpendControlResponse> create_spend_control(spend_control_creation_request)

Create Spend Control

Create a spend control 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::SpendControlsBetaApi.new
spend_control_creation_request = Synctera::SpendControlCreationRequest.new({action_case: false, action_decline: false, amount_limit: 3.56, direction: Synctera::SpendControlDirection::CREDITS, is_active: true, name: 'name_example', time_range: Synctera::SpendControlRollingWindowDays.new({days: 37, time_range_type: Synctera::SpendControlTimeRangeType::ROLLING_WINDOW_DAYS})}) # SpendControlCreationRequest | Details of the spend control to create

begin
  # Create Spend Control
  result = api_instance.create_spend_control(spend_control_creation_request)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling SpendControlsBetaApi->create_spend_control: #{e}"
end
```

#### Using the create_spend_control_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendControlResponse>, Integer, Hash)> create_spend_control_with_http_info(spend_control_creation_request)

```ruby
begin
  # Create Spend Control
  data, status_code, headers = api_instance.create_spend_control_with_http_info(spend_control_creation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendControlResponse>
rescue Synctera::ApiError => e
  puts "Error when calling SpendControlsBetaApi->create_spend_control_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend_control_creation_request** | [**SpendControlCreationRequest**](SpendControlCreationRequest.md) | Details of the spend control to create |  |

### Return type

[**SpendControlResponse**](SpendControlResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_spend_control

> <SpendControlResponse> get_spend_control(spend_control_id)

Get Spend Control

Get spend control 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::SpendControlsBetaApi.new
spend_control_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 

begin
  # Get Spend Control
  result = api_instance.get_spend_control(spend_control_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling SpendControlsBetaApi->get_spend_control: #{e}"
end
```

#### Using the get_spend_control_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendControlResponse>, Integer, Hash)> get_spend_control_with_http_info(spend_control_id)

```ruby
begin
  # Get Spend Control
  data, status_code, headers = api_instance.get_spend_control_with_http_info(spend_control_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendControlResponse>
rescue Synctera::ApiError => e
  puts "Error when calling SpendControlsBetaApi->get_spend_control_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend_control_id** | **String** |  |  |

### Return type

[**SpendControlResponse**](SpendControlResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_spend_controls

> <SpendControlResponseList> list_spend_controls(opts)

List Spend Controls

List spend controls 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::SpendControlsBetaApi.new
opts = {
  amount_limit_gte: 56, # Integer | return results with an amount limit greater than or equal to this
  amount_limit_lte: 56, # Integer | return results with an amount limit less than or equal to this
  id: ['inner_example'], # Array<String> | return results with these comma-separated IDs
  num_related_accounts_gte: 56, # Integer | return results that are associated with at least this many accounts
  num_related_accounts: 56, # Integer | return results that are associated with this many accounts
  num_related_accounts_lte: 56, # Integer | return results that are associated with at most this many accounts
  sort_by: ['amount_limit:asc'], # Array<String> | Specifies the sort order for returned Spend Controls. 
  payment_type: Synctera::PaymentType::ACH, # PaymentType | 
  name: 'name_example', # String | return results that match this name
  direction: Synctera::SpendControlDirection::CREDITS, # SpendControlDirection | 
  is_active: true, # Boolean | return results that match this active status
  limit: 100, # Integer | 
  account_id: '7d943c51-e4ff-4e57-9558-08cab6b963c7', # String | return results matching this account ID
  amount_limit: 789 # Integer | return results matching this amount limit
}

begin
  # List Spend Controls
  result = api_instance.list_spend_controls(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling SpendControlsBetaApi->list_spend_controls: #{e}"
end
```

#### Using the list_spend_controls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendControlResponseList>, Integer, Hash)> list_spend_controls_with_http_info(opts)

```ruby
begin
  # List Spend Controls
  data, status_code, headers = api_instance.list_spend_controls_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendControlResponseList>
rescue Synctera::ApiError => e
  puts "Error when calling SpendControlsBetaApi->list_spend_controls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount_limit_gte** | **Integer** | return results with an amount limit greater than or equal to this | [optional] |
| **amount_limit_lte** | **Integer** | return results with an amount limit less than or equal to this | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | return results with these comma-separated IDs | [optional] |
| **num_related_accounts_gte** | **Integer** | return results that are associated with at least this many accounts | [optional] |
| **num_related_accounts** | **Integer** | return results that are associated with this many accounts | [optional] |
| **num_related_accounts_lte** | **Integer** | return results that are associated with at most this many accounts | [optional] |
| **sort_by** | [**Array&lt;String&gt;**](String.md) | Specifies the sort order for returned Spend Controls.  | [optional] |
| **payment_type** | [**PaymentType**](.md) |  | [optional] |
| **name** | **String** | return results that match this name | [optional] |
| **direction** | [**SpendControlDirection**](.md) |  | [optional] |
| **is_active** | **Boolean** | return results that match this active status | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **account_id** | **String** | return results matching this account ID | [optional] |
| **amount_limit** | **Integer** | return results matching this amount limit | [optional] |

### Return type

[**SpendControlResponseList**](SpendControlResponseList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_spend_control

> <SpendControlResponse> update_spend_control(spend_control_id, spend_control_update_request)

Update Spend Control

Update spend control 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::SpendControlsBetaApi.new
spend_control_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | 
spend_control_update_request = Synctera::SpendControlUpdateRequest.new # SpendControlUpdateRequest | Fields to update

begin
  # Update Spend Control
  result = api_instance.update_spend_control(spend_control_id, spend_control_update_request)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling SpendControlsBetaApi->update_spend_control: #{e}"
end
```

#### Using the update_spend_control_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SpendControlResponse>, Integer, Hash)> update_spend_control_with_http_info(spend_control_id, spend_control_update_request)

```ruby
begin
  # Update Spend Control
  data, status_code, headers = api_instance.update_spend_control_with_http_info(spend_control_id, spend_control_update_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SpendControlResponse>
rescue Synctera::ApiError => e
  puts "Error when calling SpendControlsBetaApi->update_spend_control_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **spend_control_id** | **String** |  |  |
| **spend_control_update_request** | [**SpendControlUpdateRequest**](SpendControlUpdateRequest.md) | Fields to update |  |

### Return type

[**SpendControlResponse**](SpendControlResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

