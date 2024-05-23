# Synctera::NotesApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_note**](NotesApi.md#create_note) | **POST** /notes | Create a note |
| [**list_notes**](NotesApi.md#list_notes) | **GET** /notes | List notes |
| [**patch_note**](NotesApi.md#patch_note) | **PATCH** /notes/{note_id} | Patch Note |


## create_note

> <NoteResponse> create_note(note_create)

Create a note

Create a note

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::NotesApi.new
note_create = Synctera::NoteCreate.new({content: 'Customer was frozen to investigate fraud.', related_resource_id: '7d943c51-e4ff-4e57-9558-08cab6b963c7', related_resource_type: Synctera::RelatedResourceType2::ACCOUNT}) # NoteCreate | note to create

begin
  # Create a note
  result = api_instance.create_note(note_create)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling NotesApi->create_note: #{e}"
end
```

#### Using the create_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteResponse>, Integer, Hash)> create_note_with_http_info(note_create)

```ruby
begin
  # Create a note
  data, status_code, headers = api_instance.create_note_with_http_info(note_create)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteResponse>
rescue Synctera::ApiError => e
  puts "Error when calling NotesApi->create_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note_create** | [**NoteCreate**](NoteCreate.md) | note to create |  |

### Return type

[**NoteResponse**](NoteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## list_notes

> <NoteList> list_notes(opts)

List notes

Get paginated list of notes

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::NotesApi.new
opts = {
  author_user_id: '64438afd-fa20-4010-a573-2bbdca77cdb6', # String | 
  related_resource_id: ['inner_example'], # Array<String> | Only return notes that have a related resource with the specified ID.
  id: ['inner_example'], # Array<String> | Return the note with the specified id. Multiple IDs can be provided as a comma-separated list. 
  related_resource_type: Synctera::RelatedResourceType2::ACCOUNT, # RelatedResourceType2 | Only return notes that have a related resource with the specified type.
  page_token: 'a8937a0d', # String | 
  limit: 100, # Integer | 
  tenant: 'abcdef_ghijkl' # String | 
}

begin
  # List notes
  result = api_instance.list_notes(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling NotesApi->list_notes: #{e}"
end
```

#### Using the list_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteList>, Integer, Hash)> list_notes_with_http_info(opts)

```ruby
begin
  # List notes
  data, status_code, headers = api_instance.list_notes_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteList>
rescue Synctera::ApiError => e
  puts "Error when calling NotesApi->list_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **author_user_id** | **String** |  | [optional] |
| **related_resource_id** | [**Array&lt;String&gt;**](String.md) | Only return notes that have a related resource with the specified ID. | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Return the note with the specified id. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **related_resource_type** | [**RelatedResourceType2**](.md) | Only return notes that have a related resource with the specified type. | [optional] |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **tenant** | **String** |  | [optional] |

### Return type

[**NoteList**](NoteList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## patch_note

> <NoteResponse> patch_note(note_id, patch_note, opts)

Patch Note

Update a Note by ID.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::NotesApi.new
note_id = '64438afd-fa20-4010-a573-2bbdca77cdb6' # String | The unique identifier of a note
patch_note = Synctera::PatchNote.new # PatchNote | 
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7', # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
  related_resource_type: Synctera::RelatedResourceType2::ACCOUNT # RelatedResourceType2 | Only return notes that have a related resource with the specified type.
}

begin
  # Patch Note
  result = api_instance.patch_note(note_id, patch_note, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling NotesApi->patch_note: #{e}"
end
```

#### Using the patch_note_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<NoteResponse>, Integer, Hash)> patch_note_with_http_info(note_id, patch_note, opts)

```ruby
begin
  # Patch Note
  data, status_code, headers = api_instance.patch_note_with_http_info(note_id, patch_note, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <NoteResponse>
rescue Synctera::ApiError => e
  puts "Error when calling NotesApi->patch_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **note_id** | **String** | The unique identifier of a note |  |
| **patch_note** | [**PatchNote**](PatchNote.md) |  |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |
| **related_resource_type** | [**RelatedResourceType2**](.md) | Only return notes that have a related resource with the specified type. | [optional] |

### Return type

[**NoteResponse**](NoteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

