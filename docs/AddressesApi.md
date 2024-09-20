# Synctera::AddressesApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_address**](AddressesApi.md#create_address) | **POST** /addresses | Create a address |
| [**get_address**](AddressesApi.md#get_address) | **GET** /addresses/{address_id} | Get address information by id |
| [**list_addresses**](AddressesApi.md#list_addresses) | **GET** /addresses | List Addresses |
| [**update_address**](AddressesApi.md#update_address) | **PATCH** /addresses/{address_id} | Update address information by id |


## create_address

> <AddressResponse> create_address(address_post)

Create a address

Create a address.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::AddressesApi.new
address_post = Synctera::AddressPost.new({address_line_1: '100 Main St.', city: 'New York', country_code: 'US', state: 'NY', address_type: 'BILLING'}) # AddressPost | Address to create

begin
  # Create a address
  result = api_instance.create_address(address_post)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling AddressesApi->create_address: #{e}"
end
```

#### Using the create_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressResponse>, Integer, Hash)> create_address_with_http_info(address_post)

```ruby
begin
  # Create a address
  data, status_code, headers = api_instance.create_address_with_http_info(address_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressResponse>
rescue Synctera::ApiError => e
  puts "Error when calling AddressesApi->create_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_post** | [**AddressPost**](AddressPost.md) | Address to create |  |

### Return type

[**AddressResponse**](AddressResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_address

> <AddressResponse> get_address(address_id)

Get address information by id

Get address information by its unique identifier

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::AddressesApi.new
address_id = '1a582c51-e4ff-4e57-9558-08cab6b963aa' # String | ID of the address

begin
  # Get address information by id
  result = api_instance.get_address(address_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling AddressesApi->get_address: #{e}"
end
```

#### Using the get_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressResponse>, Integer, Hash)> get_address_with_http_info(address_id)

```ruby
begin
  # Get address information by id
  data, status_code, headers = api_instance.get_address_with_http_info(address_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressResponse>
rescue Synctera::ApiError => e
  puts "Error when calling AddressesApi->get_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_id** | **String** | ID of the address |  |

### Return type

[**AddressResponse**](AddressResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_addresses

> <AddressesList> list_addresses(opts)

List Addresses

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::AddressesApi.new
opts = {
  country: 'U', # String | Country code. 
  business_id: '7d943c51-e4ff-4e57-9558-08cab6b963c7', # String | The unique identifier for business
  customer_id: '7d943c51-e4ff-4e57-9558-08cab6b963c7', # String | The unique identifier for customer
  page_token: 'a8937a0d', # String | 
  is_active: true, # Boolean | 
  limit: 100, # Integer | 
  address_type: 'BILLING' # String | Specifies the address type. 
}

begin
  # List Addresses
  result = api_instance.list_addresses(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling AddressesApi->list_addresses: #{e}"
end
```

#### Using the list_addresses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressesList>, Integer, Hash)> list_addresses_with_http_info(opts)

```ruby
begin
  # List Addresses
  data, status_code, headers = api_instance.list_addresses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressesList>
rescue Synctera::ApiError => e
  puts "Error when calling AddressesApi->list_addresses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | Country code.  | [optional] |
| **business_id** | **String** | The unique identifier for business | [optional] |
| **customer_id** | **String** | The unique identifier for customer | [optional] |
| **page_token** | **String** |  | [optional] |
| **is_active** | **Boolean** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **address_type** | **String** | Specifies the address type.  | [optional] |

### Return type

[**AddressesList**](AddressesList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_address

> <AddressResponse> update_address(address_id, body)

Update address information by id

Update address 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::AddressesApi.new
address_id = '1a582c51-e4ff-4e57-9558-08cab6b963aa' # String | ID of the address
body = 3.56 # AddressBase | Address patch details

begin
  # Update address information by id
  result = api_instance.update_address(address_id, body)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling AddressesApi->update_address: #{e}"
end
```

#### Using the update_address_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddressResponse>, Integer, Hash)> update_address_with_http_info(address_id, body)

```ruby
begin
  # Update address information by id
  data, status_code, headers = api_instance.update_address_with_http_info(address_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddressResponse>
rescue Synctera::ApiError => e
  puts "Error when calling AddressesApi->update_address_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **address_id** | **String** | ID of the address |  |
| **body** | **AddressBase** | Address patch details |  |

### Return type

[**AddressResponse**](AddressResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

