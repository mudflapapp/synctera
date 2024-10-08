# Synctera::BusinessesApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_business**](BusinessesApi.md#create_business) | **POST** /businesses | Create a business |
| [**get_business**](BusinessesApi.md#get_business) | **GET** /businesses/{business_id} | Get business |
| [**list_businesses**](BusinessesApi.md#list_businesses) | **GET** /businesses | List business |
| [**update_business**](BusinessesApi.md#update_business) | **PATCH** /businesses/{business_id} | Patch business |


## create_business

> <Business> create_business(business, opts)

Create a business

Create a business who may act as a customer or a related business. You can then verify the identity of this customer and associate them with other people and accounts. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BusinessesApi.new
business = Synctera::Business.new({is_customer: true, status: 'ACTIVE'}) # Business | 
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
}

begin
  # Create a business
  result = api_instance.create_business(business, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BusinessesApi->create_business: #{e}"
end
```

#### Using the create_business_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Business>, Integer, Hash)> create_business_with_http_info(business, opts)

```ruby
begin
  # Create a business
  data, status_code, headers = api_instance.create_business_with_http_info(business, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Business>
rescue Synctera::ApiError => e
  puts "Error when calling BusinessesApi->create_business_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business** | [**Business**](Business.md) |  |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |

### Return type

[**Business**](Business.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_business

> <Business> get_business(business_id)

Get business

Get business by ID.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BusinessesApi.new
business_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Business's unique identifier.

begin
  # Get business
  result = api_instance.get_business(business_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BusinessesApi->get_business: #{e}"
end
```

#### Using the get_business_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Business>, Integer, Hash)> get_business_with_http_info(business_id)

```ruby
begin
  # Get business
  data, status_code, headers = api_instance.get_business_with_http_info(business_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Business>
rescue Synctera::ApiError => e
  puts "Error when calling BusinessesApi->get_business_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Business&#39;s unique identifier. |  |

### Return type

[**Business**](Business.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_businesses

> <BusinessList> list_businesses(opts)

List business

Retrieves paginated list of businesses associated with the authorized requester.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BusinessesApi.new
opts = {
  is_customer: true, # Boolean | If true, show only customers. If false, show non-customer parties.
  sort_by: ['creation_time:asc'], # Array<String> | Specifies the sort order for the returned businesses. 
  id: ['inner_example'], # Array<String> | Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
  has_accounts: true, # Boolean | Filter on resources that have an account(s) 
  phone_number: '+12065550100', # String | 
  page_token: 'a8937a0d', # String | 
  status: 'ACTIVE', # String | 
  limit: 100, # Integer | 
  entity_name: 'Apex Corporation' # String | 
}

begin
  # List business
  result = api_instance.list_businesses(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BusinessesApi->list_businesses: #{e}"
end
```

#### Using the list_businesses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BusinessList>, Integer, Hash)> list_businesses_with_http_info(opts)

```ruby
begin
  # List business
  data, status_code, headers = api_instance.list_businesses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BusinessList>
rescue Synctera::ApiError => e
  puts "Error when calling BusinessesApi->list_businesses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_customer** | **Boolean** | If true, show only customers. If false, show non-customer parties. | [optional] |
| **sort_by** | [**Array&lt;String&gt;**](String.md) | Specifies the sort order for the returned businesses.  | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **has_accounts** | **Boolean** | Filter on resources that have an account(s)  | [optional] |
| **phone_number** | **String** |  | [optional] |
| **page_token** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **entity_name** | **String** |  | [optional] |

### Return type

[**BusinessList**](BusinessList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_business

> <Business> update_business(business_id, patch_business, opts)

Patch business

Update business by ID.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BusinessesApi.new
business_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Business's unique identifier.
patch_business = Synctera::PatchBusiness.new # PatchBusiness | 
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
}

begin
  # Patch business
  result = api_instance.update_business(business_id, patch_business, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BusinessesApi->update_business: #{e}"
end
```

#### Using the update_business_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Business>, Integer, Hash)> update_business_with_http_info(business_id, patch_business, opts)

```ruby
begin
  # Patch business
  data, status_code, headers = api_instance.update_business_with_http_info(business_id, patch_business, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Business>
rescue Synctera::ApiError => e
  puts "Error when calling BusinessesApi->update_business_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Business&#39;s unique identifier. |  |
| **patch_business** | [**PatchBusiness**](PatchBusiness.md) |  |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |

### Return type

[**Business**](Business.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

