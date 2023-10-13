# Synctera::DocumentsApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_document**](DocumentsApi.md#create_document) | **POST** /documents | Create a document |
| [**create_document_version**](DocumentsApi.md#create_document_version) | **POST** /documents/{document_id}/versions | Create a new document version |
| [**get_document**](DocumentsApi.md#get_document) | **GET** /documents/{document_id} | Get a document |
| [**get_document_contents**](DocumentsApi.md#get_document_contents) | **GET** /documents/{document_id}/contents | Get contents of latest document version |
| [**get_document_version**](DocumentsApi.md#get_document_version) | **GET** /documents/{document_id}/versions/{document_version} | Get a document by version |
| [**get_document_version_contents**](DocumentsApi.md#get_document_version_contents) | **GET** /documents/{document_id}/versions/{document_version}/contents | Get document contents by version |
| [**list_documents**](DocumentsApi.md#list_documents) | **GET** /documents | List documents |
| [**update_document**](DocumentsApi.md#update_document) | **PATCH** /documents/{document_id} | Update a document |


## create_document

> <Document> create_document(file, opts)

Create a document

Docs 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::DocumentsApi.new
file = File.new('/path/to/some/file') # File | The file contents
opts = {
  description: 'description_example', # String | A description of the attached document
  encryption: Synctera::Encryption::NOT_REQUIRED, # Encryption | 
  metadata: { ... }, # Object | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data. 
  name: 'name_example', # String | A user-friendly name for the document
  related_resource_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The ID of the resource related to the document
  related_resource_type: Synctera::RelatedResourceType::ACCOUNT, # RelatedResourceType | 
  type: Synctera::DocumentType::APPLICATION_DOCUMENTATION # DocumentType | 
}

begin
  # Create a document
  result = api_instance.create_document(file, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->create_document: #{e}"
end
```

#### Using the create_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> create_document_with_http_info(file, opts)

```ruby
begin
  # Create a document
  data, status_code, headers = api_instance.create_document_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->create_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | The file contents |  |
| **description** | **String** | A description of the attached document | [optional] |
| **encryption** | [**Encryption**](Encryption.md) |  | [optional][default to &#39;NOT_REQUIRED&#39;] |
| **metadata** | [**Object**](Object.md) | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data.  | [optional] |
| **name** | **String** | A user-friendly name for the document | [optional] |
| **related_resource_id** | **String** | The ID of the resource related to the document | [optional] |
| **related_resource_type** | [**RelatedResourceType**](RelatedResourceType.md) |  | [optional] |
| **type** | [**DocumentType**](DocumentType.md) |  | [optional] |

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, application/problem+json


## create_document_version

> <Document> create_document_version(document_id, file, opts)

Create a new document version

Docs 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::DocumentsApi.new
document_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | The unique identifier of the document.
file = File.new('/path/to/some/file') # File | The file contents
opts = {
  description: 'description_example', # String | A description of the attached document
  encryption: Synctera::Encryption::NOT_REQUIRED, # Encryption | 
  name: 'name_example', # String | A user-friendly name for the document
  type: Synctera::DocumentType::APPLICATION_DOCUMENTATION # DocumentType | 
}

begin
  # Create a new document version
  result = api_instance.create_document_version(document_id, file, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->create_document_version: #{e}"
end
```

#### Using the create_document_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> create_document_version_with_http_info(document_id, file, opts)

```ruby
begin
  # Create a new document version
  data, status_code, headers = api_instance.create_document_version_with_http_info(document_id, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->create_document_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** | The unique identifier of the document. |  |
| **file** | **File** | The file contents |  |
| **description** | **String** | A description of the attached document | [optional] |
| **encryption** | [**Encryption**](Encryption.md) |  | [optional][default to &#39;NOT_REQUIRED&#39;] |
| **name** | **String** | A user-friendly name for the document | [optional] |
| **type** | [**DocumentType**](DocumentType.md) |  | [optional] |

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, application/problem+json


## get_document

> <Document> get_document(document_id)

Get a document

Returns the document attributes. Use /documents/{document_id}/contents to get the contents. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::DocumentsApi.new
document_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | The unique identifier of the document.

begin
  # Get a document
  result = api_instance.get_document(document_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->get_document: #{e}"
end
```

#### Using the get_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> get_document_with_http_info(document_id)

```ruby
begin
  # Get a document
  data, status_code, headers = api_instance.get_document_with_http_info(document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->get_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** | The unique identifier of the document. |  |

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_document_contents

> File get_document_contents(document_id)

Get contents of latest document version

Returns the bytes of the requested document.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::DocumentsApi.new
document_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | The unique identifier of the document.

begin
  # Get contents of latest document version
  result = api_instance.get_document_contents(document_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->get_document_contents: #{e}"
end
```

#### Using the get_document_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_document_contents_with_http_info(document_id)

```ruby
begin
  # Get contents of latest document version
  data, status_code, headers = api_instance.get_document_contents_with_http_info(document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->get_document_contents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** | The unique identifier of the document. |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*, application/problem+json


## get_document_version

> <Document> get_document_version(document_version, document_id)

Get a document by version

Returns the document (attributes). Use /documents/{document_id}/versions/{version}/contents to get the contents. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::DocumentsApi.new
document_version = 1 # Integer | The document version.
document_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | The unique identifier of the document.

begin
  # Get a document by version
  result = api_instance.get_document_version(document_version, document_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->get_document_version: #{e}"
end
```

#### Using the get_document_version_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> get_document_version_with_http_info(document_version, document_id)

```ruby
begin
  # Get a document by version
  data, status_code, headers = api_instance.get_document_version_with_http_info(document_version, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->get_document_version_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_version** | **Integer** | The document version. |  |
| **document_id** | **String** | The unique identifier of the document. |  |

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_document_version_contents

> File get_document_version_contents(document_version, document_id)

Get document contents by version

Returns the bytes of the requested document.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::DocumentsApi.new
document_version = 1 # Integer | The document version.
document_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | The unique identifier of the document.

begin
  # Get document contents by version
  result = api_instance.get_document_version_contents(document_version, document_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->get_document_version_contents: #{e}"
end
```

#### Using the get_document_version_contents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> get_document_version_contents_with_http_info(document_version, document_id)

```ruby
begin
  # Get document contents by version
  data, status_code, headers = api_instance.get_document_version_contents_with_http_info(document_version, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->get_document_version_contents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_version** | **Integer** | The document version. |  |
| **document_id** | **String** | The unique identifier of the document. |  |

### Return type

**File**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: */*, application/problem+json


## list_documents

> <DocumentList> list_documents(opts)

List documents

Returns a paginated list of documents (metadata only, not contents).

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::DocumentsApi.new
opts = {
  related_resource_id: 'b01db9c7-78f2-4a99-8aca-1231d32f9b96', # String | Return documents that are related to resources with the specified ID
  type: Synctera::DocumentType::APPLICATION_DOCUMENTATION, # DocumentType | The type of documents
  encryption: 'NOT_REQUIRED', # String | Whether the file should be encrypted and access restricted, e.g. if the file contains PII
  page_token: 'a8937a0d', # String | 
  id: ['7d943c51-e4ff-4e57-9558-08cab6b963c7'], # Array<String> | Unique resource identifier
  related_resource_type: Synctera::RelatedResourceType::ACCOUNT, # RelatedResourceType | Return documents that are related to resources of the specified type
  limit: 100 # Integer | 
}

begin
  # List documents
  result = api_instance.list_documents(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->list_documents: #{e}"
end
```

#### Using the list_documents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentList>, Integer, Hash)> list_documents_with_http_info(opts)

```ruby
begin
  # List documents
  data, status_code, headers = api_instance.list_documents_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentList>
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->list_documents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **related_resource_id** | **String** | Return documents that are related to resources with the specified ID | [optional] |
| **type** | [**DocumentType**](.md) | The type of documents | [optional] |
| **encryption** | **String** | Whether the file should be encrypted and access restricted, e.g. if the file contains PII | [optional] |
| **page_token** | **String** |  | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Unique resource identifier | [optional] |
| **related_resource_type** | [**RelatedResourceType**](.md) | Return documents that are related to resources of the specified type | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**DocumentList**](DocumentList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_document

> <Document> update_document(document_id, patch_document)

Update a document

Update attributes of the latest document version.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::DocumentsApi.new
document_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | The unique identifier of the document.
patch_document = Synctera::PatchDocument.new # PatchDocument | 

begin
  # Update a document
  result = api_instance.update_document(document_id, patch_document)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->update_document: #{e}"
end
```

#### Using the update_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Document>, Integer, Hash)> update_document_with_http_info(document_id, patch_document)

```ruby
begin
  # Update a document
  data, status_code, headers = api_instance.update_document_with_http_info(document_id, patch_document)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Document>
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->update_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** | The unique identifier of the document. |  |
| **patch_document** | [**PatchDocument**](PatchDocument.md) |  |  |

### Return type

[**Document**](Document.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

