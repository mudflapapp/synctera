# Synctera::DocumentsApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_document**](DocumentsApi.md#create_document) | **POST** /documents | Create a document |
| [**create_document_version**](DocumentsApi.md#create_document_version) | **POST** /documents/{document_id}/versions | Create a new document version |
| [**delete_document**](DocumentsApi.md#delete_document) | **DELETE** /documents/{document_id} | Delete a document |
| [**get_document**](DocumentsApi.md#get_document) | **GET** /documents/{document_id} | Get a document |
| [**get_document_contents**](DocumentsApi.md#get_document_contents) | **GET** /documents/{document_id}/contents | Get contents of latest document version |
| [**get_document_version**](DocumentsApi.md#get_document_version) | **GET** /documents/{document_id}/versions/{document_version} | Get a document by version |
| [**get_document_version_contents**](DocumentsApi.md#get_document_version_contents) | **GET** /documents/{document_id}/versions/{document_version}/contents | Get document contents by version |
| [**list_documents**](DocumentsApi.md#list_documents) | **GET** /documents | List documents |
| [**update_document**](DocumentsApi.md#update_document) | **PATCH** /documents/{document_id} | Update a document |


## create_document

> <DocumentResponse> create_document(file, opts)

Create a document

Store a document in the Synctera platform. 

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
file = File.new('/path/to/some/file') # File | The file contents. The maximum file size is 32 MB.
opts = {
  description: 'description_example', # String | A description of the attached document
  encryption: Synctera::DocumentEncryption::NOT_REQUIRED, # DocumentEncryption | 
  metadata: 'metadata_example', # String | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data. Since some API clients have trouble formatting multipart/form-data properties that are objects, this property is defined as a string formatted to contain the marshalled JSON object. 
  name: 'name_example', # String | A user-friendly name for the document
  related_resource_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The ID of the resource related to the document
  related_resource_type: Synctera::RelatedResourceType::ACCOUNT, # RelatedResourceType | 
  type: Synctera::DocumentType::ADDRESS_VERIFICATION # DocumentType | 
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

> <Array(<DocumentResponse>, Integer, Hash)> create_document_with_http_info(file, opts)

```ruby
begin
  # Create a document
  data, status_code, headers = api_instance.create_document_with_http_info(file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentResponse>
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->create_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **File** | The file contents. The maximum file size is 32 MB. |  |
| **description** | **String** | A description of the attached document | [optional] |
| **encryption** | [**DocumentEncryption**](DocumentEncryption.md) |  | [optional] |
| **metadata** | **String** | Optional field to store additional information about the resource. Intended to be used by the integrator to store non-sensitive data. Since some API clients have trouble formatting multipart/form-data properties that are objects, this property is defined as a string formatted to contain the marshalled JSON object.  | [optional] |
| **name** | **String** | A user-friendly name for the document | [optional] |
| **related_resource_id** | **String** | The ID of the resource related to the document | [optional] |
| **related_resource_type** | [**RelatedResourceType**](RelatedResourceType.md) |  | [optional] |
| **type** | [**DocumentType**](DocumentType.md) |  | [optional] |

### Return type

[**DocumentResponse**](DocumentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, application/problem+json


## create_document_version

> <DocumentResponse> create_document_version(document_id, file, opts)

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
  encryption: Synctera::DocumentEncryptionVersionPost::NOT_REQUIRED, # DocumentEncryptionVersionPost | 
  name: 'name_example', # String | A user-friendly name for the document
  type: Synctera::DocumentType::ADDRESS_VERIFICATION # DocumentType | 
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

> <Array(<DocumentResponse>, Integer, Hash)> create_document_version_with_http_info(document_id, file, opts)

```ruby
begin
  # Create a new document version
  data, status_code, headers = api_instance.create_document_version_with_http_info(document_id, file, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentResponse>
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
| **encryption** | [**DocumentEncryptionVersionPost**](DocumentEncryptionVersionPost.md) |  | [optional] |
| **name** | **String** | A user-friendly name for the document | [optional] |
| **type** | [**DocumentType**](DocumentType.md) |  | [optional] |

### Return type

[**DocumentResponse**](DocumentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json, application/problem+json


## delete_document

> <DeleteResponse> delete_document(document_id)

Delete a document

Delete a document. Before a document can be deleted, it must have a deletion_reason explaining why the document was deleted. Use the [PATCH endpoint](ref:updatedocument) to set the `deletion_reason` property. 

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
  # Delete a document
  result = api_instance.delete_document(document_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->delete_document: #{e}"
end
```

#### Using the delete_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_document_with_http_info(document_id)

```ruby
begin
  # Delete a document
  data, status_code, headers = api_instance.delete_document_with_http_info(document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->delete_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** | The unique identifier of the document. |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_document

> <DocumentResponse> get_document(document_id)

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

> <Array(<DocumentResponse>, Integer, Hash)> get_document_with_http_info(document_id)

```ruby
begin
  # Get a document
  data, status_code, headers = api_instance.get_document_with_http_info(document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentResponse>
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->get_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** | The unique identifier of the document. |  |

### Return type

[**DocumentResponse**](DocumentResponse.md)

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

> <DocumentResponse> get_document_version(document_version, document_id)

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

> <Array(<DocumentResponse>, Integer, Hash)> get_document_version_with_http_info(document_version, document_id)

```ruby
begin
  # Get a document by version
  data, status_code, headers = api_instance.get_document_version_with_http_info(document_version, document_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentResponse>
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

[**DocumentResponse**](DocumentResponse.md)

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
  type: [Synctera::DocumentType::ADDRESS_VERIFICATION], # Array<DocumentType> | The type of documents. Multiple types can be provided as a comma-separated list.
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
| **type** | [**Array&lt;DocumentType&gt;**](DocumentType.md) | The type of documents. Multiple types can be provided as a comma-separated list. | [optional] |
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

> <DocumentResponse> update_document(document_id, document_patch)

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
document_patch = Synctera::DocumentPatch.new # DocumentPatch | 

begin
  # Update a document
  result = api_instance.update_document(document_id, document_patch)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->update_document: #{e}"
end
```

#### Using the update_document_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DocumentResponse>, Integer, Hash)> update_document_with_http_info(document_id, document_patch)

```ruby
begin
  # Update a document
  data, status_code, headers = api_instance.update_document_with_http_info(document_id, document_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DocumentResponse>
rescue Synctera::ApiError => e
  puts "Error when calling DocumentsApi->update_document_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **document_id** | **String** | The unique identifier of the document. |  |
| **document_patch** | [**DocumentPatch**](DocumentPatch.md) |  |  |

### Return type

[**DocumentResponse**](DocumentResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

