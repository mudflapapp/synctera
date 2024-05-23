# Synctera::EDDApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_edd**](EDDApi.md#create_edd) | **POST** /edd | Create a EDD |
| [**delete_edd**](EDDApi.md#delete_edd) | **DELETE** /edd/{edd_id} | Delete a EDD |
| [**get_edd**](EDDApi.md#get_edd) | **GET** /edd/{edd_id} | Get a EDD |
| [**list_edd**](EDDApi.md#list_edd) | **GET** /edd | List EDD |


## create_edd

> <CreateEddResponse> create_edd(create_edd_request)

Create a EDD

Create a EDD

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::EDDApi.new
create_edd_request = Synctera::EddAccount.new({reason: 'CASE_REQUEST', related_resource_id: 'related_resource_id_example', related_resource_type: Synctera::RelatedResourceType1::ACCOUNT}) # CreateEddRequest | EDD to create

begin
  # Create a EDD
  result = api_instance.create_edd(create_edd_request)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling EDDApi->create_edd: #{e}"
end
```

#### Using the create_edd_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEddResponse>, Integer, Hash)> create_edd_with_http_info(create_edd_request)

```ruby
begin
  # Create a EDD
  data, status_code, headers = api_instance.create_edd_with_http_info(create_edd_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEddResponse>
rescue Synctera::ApiError => e
  puts "Error when calling EDDApi->create_edd_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_edd_request** | [**CreateEddRequest**](CreateEddRequest.md) | EDD to create |  |

### Return type

[**CreateEddResponse**](CreateEddResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_edd

> <DeleteResponse> delete_edd(edd_id)

Delete a EDD

Delete a EDD

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::EDDApi.new
edd_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique identifier of a edd

begin
  # Delete a EDD
  result = api_instance.delete_edd(edd_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling EDDApi->delete_edd: #{e}"
end
```

#### Using the delete_edd_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_edd_with_http_info(edd_id)

```ruby
begin
  # Delete a EDD
  data, status_code, headers = api_instance.delete_edd_with_http_info(edd_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue Synctera::ApiError => e
  puts "Error when calling EDDApi->delete_edd_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edd_id** | **String** | The unique identifier of a edd |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_edd

> <CreateEddResponse> get_edd(edd_id)

Get a EDD

Get a EDD

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::EDDApi.new
edd_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique identifier of a edd

begin
  # Get a EDD
  result = api_instance.get_edd(edd_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling EDDApi->get_edd: #{e}"
end
```

#### Using the get_edd_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateEddResponse>, Integer, Hash)> get_edd_with_http_info(edd_id)

```ruby
begin
  # Get a EDD
  data, status_code, headers = api_instance.get_edd_with_http_info(edd_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateEddResponse>
rescue Synctera::ApiError => e
  puts "Error when calling EDDApi->get_edd_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **edd_id** | **String** | The unique identifier of a edd |  |

### Return type

[**CreateEddResponse**](CreateEddResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_edd

> <EddList> list_edd(related_resource_type, opts)

List EDD

Get paginated list of EDD

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::EDDApi.new
related_resource_type = [Synctera::RelatedResourceType1::ACCOUNT] # Array<RelatedResourceType1> | Type of related resource. Multiple values can be provided as a comma-separated list. 
opts = {
  related_resource_id: ['inner_example'], # Array<String> | Unique identifier for the related resource. Multiple IDs can be provided as a comma-separated list. 
  page_token: 'a8937a0d', # String | 
  limit: 100 # Integer | 
}

begin
  # List EDD
  result = api_instance.list_edd(related_resource_type, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling EDDApi->list_edd: #{e}"
end
```

#### Using the list_edd_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<EddList>, Integer, Hash)> list_edd_with_http_info(related_resource_type, opts)

```ruby
begin
  # List EDD
  data, status_code, headers = api_instance.list_edd_with_http_info(related_resource_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <EddList>
rescue Synctera::ApiError => e
  puts "Error when calling EDDApi->list_edd_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **related_resource_type** | [**Array&lt;RelatedResourceType1&gt;**](RelatedResourceType1.md) | Type of related resource. Multiple values can be provided as a comma-separated list.  |  |
| **related_resource_id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the related resource. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**EddList**](EddList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

