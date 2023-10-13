# Synctera::CashPickupsAlphaApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cash_pickup**](CashPickupsAlphaApi.md#create_cash_pickup) | **POST** /cash_pickups | Create a cash pickup |
| [**get_cash_pickup**](CashPickupsAlphaApi.md#get_cash_pickup) | **GET** /cash_pickups/{cash_pickup_id} | Get a cash pickup |
| [**list_cash_pickups**](CashPickupsAlphaApi.md#list_cash_pickups) | **GET** /cash_pickups | List cash pickups |
| [**patch_cash_pickup**](CashPickupsAlphaApi.md#patch_cash_pickup) | **PATCH** /cash_pickups/{cash_pickup_id} | Update a cash pickup |


## create_cash_pickup

> <CashPickup> create_cash_pickup(cash_pickup_post_request)

Create a cash pickup

Create a cash pickup

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CashPickupsAlphaApi.new
cash_pickup_post_request = Synctera::CashPickupPostRequest.new({account_id: '23f71110-3b25-4f3d-a1c3-915d699d8db6', amount: 10000, reference_id: 'reference_id_example'}) # CashPickupPostRequest | cash pickup to create

begin
  # Create a cash pickup
  result = api_instance.create_cash_pickup(cash_pickup_post_request)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CashPickupsAlphaApi->create_cash_pickup: #{e}"
end
```

#### Using the create_cash_pickup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CashPickup>, Integer, Hash)> create_cash_pickup_with_http_info(cash_pickup_post_request)

```ruby
begin
  # Create a cash pickup
  data, status_code, headers = api_instance.create_cash_pickup_with_http_info(cash_pickup_post_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CashPickup>
rescue Synctera::ApiError => e
  puts "Error when calling CashPickupsAlphaApi->create_cash_pickup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cash_pickup_post_request** | [**CashPickupPostRequest**](CashPickupPostRequest.md) | cash pickup to create |  |

### Return type

[**CashPickup**](CashPickup.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_cash_pickup

> <CashPickup> get_cash_pickup(cash_pickup_id)

Get a cash pickup

Get a cash pickup

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CashPickupsAlphaApi.new
cash_pickup_id = '1d2a39f5-e39b-4cd4-96a1-8727187469a9' # String | The unique identifier of a cash pickup

begin
  # Get a cash pickup
  result = api_instance.get_cash_pickup(cash_pickup_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CashPickupsAlphaApi->get_cash_pickup: #{e}"
end
```

#### Using the get_cash_pickup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CashPickup>, Integer, Hash)> get_cash_pickup_with_http_info(cash_pickup_id)

```ruby
begin
  # Get a cash pickup
  data, status_code, headers = api_instance.get_cash_pickup_with_http_info(cash_pickup_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CashPickup>
rescue Synctera::ApiError => e
  puts "Error when calling CashPickupsAlphaApi->get_cash_pickup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cash_pickup_id** | **String** | The unique identifier of a cash pickup |  |

### Return type

[**CashPickup**](CashPickup.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_cash_pickups

> <CashPickupList> list_cash_pickups(opts)

List cash pickups

Get paginated list of cash pickups

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CashPickupsAlphaApi.new
opts = {
  page_token: 'a8937a0d', # String | 
  limit: 100 # Integer | 
}

begin
  # List cash pickups
  result = api_instance.list_cash_pickups(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CashPickupsAlphaApi->list_cash_pickups: #{e}"
end
```

#### Using the list_cash_pickups_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CashPickupList>, Integer, Hash)> list_cash_pickups_with_http_info(opts)

```ruby
begin
  # List cash pickups
  data, status_code, headers = api_instance.list_cash_pickups_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CashPickupList>
rescue Synctera::ApiError => e
  puts "Error when calling CashPickupsAlphaApi->list_cash_pickups_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**CashPickupList**](CashPickupList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## patch_cash_pickup

> <CashPickup> patch_cash_pickup(cash_pickup_id, cash_pickup_patch_request)

Update a cash pickup

Update a cash pickup

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::CashPickupsAlphaApi.new
cash_pickup_id = '1d2a39f5-e39b-4cd4-96a1-8727187469a9' # String | The unique identifier of a cash pickup
cash_pickup_patch_request = Synctera::CashPickupPatchRequest.new # CashPickupPatchRequest | cash pickup to update

begin
  # Update a cash pickup
  result = api_instance.patch_cash_pickup(cash_pickup_id, cash_pickup_patch_request)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling CashPickupsAlphaApi->patch_cash_pickup: #{e}"
end
```

#### Using the patch_cash_pickup_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CashPickup>, Integer, Hash)> patch_cash_pickup_with_http_info(cash_pickup_id, cash_pickup_patch_request)

```ruby
begin
  # Update a cash pickup
  data, status_code, headers = api_instance.patch_cash_pickup_with_http_info(cash_pickup_id, cash_pickup_patch_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CashPickup>
rescue Synctera::ApiError => e
  puts "Error when calling CashPickupsAlphaApi->patch_cash_pickup_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cash_pickup_id** | **String** | The unique identifier of a cash pickup |  |
| **cash_pickup_patch_request** | [**CashPickupPatchRequest**](CashPickupPatchRequest.md) | cash pickup to update |  |

### Return type

[**CashPickup**](CashPickup.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

