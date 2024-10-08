# Synctera::RelationshipsApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_relationship**](RelationshipsApi.md#create_relationship) | **POST** /relationships | Create a relationship |
| [**delete_relationship**](RelationshipsApi.md#delete_relationship) | **DELETE** /relationships/{relationship_id} | Delete relationship |
| [**get_relationship**](RelationshipsApi.md#get_relationship) | **GET** /relationships/{relationship_id} | Get relationship |
| [**list_relationships**](RelationshipsApi.md#list_relationships) | **GET** /relationships | List relationships |
| [**update_relationship**](RelationshipsApi.md#update_relationship) | **PATCH** /relationships/{relationship_id} | Update relationship |


## create_relationship

> <RelationshipIn> create_relationship(relationship_in, opts)

Create a relationship

Create a party relationship.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RelationshipsApi.new
relationship_in = Synctera::BusinessBusinessOwnerRelationship.new({additional_data: Synctera::AdditionalOwnerData.new({percent_ownership: 35.75}), from_business_id: '7d943c51-e4ff-4e57-9558-08cab6b963c7', relationship_type: Synctera::RelationshipTypes::BENEFICIAL_OWNER_OF, to_business_id: '7d943c51-e4ff-4e57-9558-08cab6b963c7'}) # RelationshipIn | Party relationship to create.
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
}

begin
  # Create a relationship
  result = api_instance.create_relationship(relationship_in, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RelationshipsApi->create_relationship: #{e}"
end
```

#### Using the create_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipIn>, Integer, Hash)> create_relationship_with_http_info(relationship_in, opts)

```ruby
begin
  # Create a relationship
  data, status_code, headers = api_instance.create_relationship_with_http_info(relationship_in, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipIn>
rescue Synctera::ApiError => e
  puts "Error when calling RelationshipsApi->create_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **relationship_in** | [**RelationshipIn**](RelationshipIn.md) | Party relationship to create. |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |

### Return type

[**RelationshipIn**](RelationshipIn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_relationship

> <DeleteResponse> delete_relationship(relationship_id)

Delete relationship

Delete party relationship by ID.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RelationshipsApi.new
relationship_id = '1a582c51-e4ff-4e57-9558-08cab6b963aa' # String | Relationship ID of the account associate with the account entity

begin
  # Delete relationship
  result = api_instance.delete_relationship(relationship_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RelationshipsApi->delete_relationship: #{e}"
end
```

#### Using the delete_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_relationship_with_http_info(relationship_id)

```ruby
begin
  # Delete relationship
  data, status_code, headers = api_instance.delete_relationship_with_http_info(relationship_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue Synctera::ApiError => e
  puts "Error when calling RelationshipsApi->delete_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **relationship_id** | **String** | Relationship ID of the account associate with the account entity |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_relationship

> <RelationshipIn> get_relationship(relationship_id)

Get relationship

Get relationship by ID.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RelationshipsApi.new
relationship_id = '1a582c51-e4ff-4e57-9558-08cab6b963aa' # String | Relationship ID of the account associate with the account entity

begin
  # Get relationship
  result = api_instance.get_relationship(relationship_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RelationshipsApi->get_relationship: #{e}"
end
```

#### Using the get_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipIn>, Integer, Hash)> get_relationship_with_http_info(relationship_id)

```ruby
begin
  # Get relationship
  data, status_code, headers = api_instance.get_relationship_with_http_info(relationship_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipIn>
rescue Synctera::ApiError => e
  puts "Error when calling RelationshipsApi->get_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **relationship_id** | **String** | Relationship ID of the account associate with the account entity |  |

### Return type

[**RelationshipIn**](RelationshipIn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_relationships

> <RelationshipsList> list_relationships(opts)

List relationships

Retrieves paginated list of relationships viewable by the authorized requester.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RelationshipsApi.new
opts = {
  to_business_id: ['inner_example'], # Array<String> | Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  from_person_id: ['inner_example'], # Array<String> | Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
  relationship_type: ['BENEFICIAL_OWNER_OF'], # Array<String> | The relationship type, any of the following.  All direct businesses customers need at least one beneficial owner or controlling person. * `BENEFICIAL_OWNER_OF` – a person who directly or indirectly owns a portion of the business. * `MANAGING_PERSON_OF` – a person who is an officer, director, or controlling person of an organization. * `OWNER_OF` – a business with ownership of another business. 
  from_business_id: ['inner_example'], # Array<String> | Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  page_token: 'a8937a0d', # String | 
  id: ['7d943c51-e4ff-4e57-9558-08cab6b963c7'], # Array<String> | Unique resource identifier
  limit: 100 # Integer | 
}

begin
  # List relationships
  result = api_instance.list_relationships(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RelationshipsApi->list_relationships: #{e}"
end
```

#### Using the list_relationships_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RelationshipsList>, Integer, Hash)> list_relationships_with_http_info(opts)

```ruby
begin
  # List relationships
  data, status_code, headers = api_instance.list_relationships_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RelationshipsList>
rescue Synctera::ApiError => e
  puts "Error when calling RelationshipsApi->list_relationships_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_business_id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the business. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **from_person_id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the person. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **relationship_type** | [**Array&lt;String&gt;**](String.md) | The relationship type, any of the following.  All direct businesses customers need at least one beneficial owner or controlling person. * &#x60;BENEFICIAL_OWNER_OF&#x60; – a person who directly or indirectly owns a portion of the business. * &#x60;MANAGING_PERSON_OF&#x60; – a person who is an officer, director, or controlling person of an organization. * &#x60;OWNER_OF&#x60; – a business with ownership of another business.  | [optional] |
| **from_business_id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the business. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **page_token** | **String** |  | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Unique resource identifier | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**RelationshipsList**](RelationshipsList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_relationship

> <PatchRelationshipIn> update_relationship(relationship_id, patch_relationship_in, opts)

Update relationship

Update relationship by ID.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RelationshipsApi.new
relationship_id = '1a582c51-e4ff-4e57-9558-08cab6b963aa' # String | Relationship ID of the account associate with the account entity
patch_relationship_in = Synctera::PatchBusinessBusinessOwnerRelationship.new({relationship_type: Synctera::RelationshipTypes::BENEFICIAL_OWNER_OF}) # PatchRelationshipIn | 
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
}

begin
  # Update relationship
  result = api_instance.update_relationship(relationship_id, patch_relationship_in, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RelationshipsApi->update_relationship: #{e}"
end
```

#### Using the update_relationship_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PatchRelationshipIn>, Integer, Hash)> update_relationship_with_http_info(relationship_id, patch_relationship_in, opts)

```ruby
begin
  # Update relationship
  data, status_code, headers = api_instance.update_relationship_with_http_info(relationship_id, patch_relationship_in, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PatchRelationshipIn>
rescue Synctera::ApiError => e
  puts "Error when calling RelationshipsApi->update_relationship_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **relationship_id** | **String** | Relationship ID of the account associate with the account entity |  |
| **patch_relationship_in** | [**PatchRelationshipIn**](PatchRelationshipIn.md) |  |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |

### Return type

[**PatchRelationshipIn**](PatchRelationshipIn.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

