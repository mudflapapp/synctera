# Synctera::IncomingWiresApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_incoming_wire**](IncomingWiresApi.md#get_incoming_wire) | **GET** /wires/incoming/{wire_id} | Get incoming wire by id |
| [**list_incoming_wires**](IncomingWiresApi.md#list_incoming_wires) | **GET** /wires/incoming | List incoming wires |
| [**patch_incoming_wire**](IncomingWiresApi.md#patch_incoming_wire) | **PATCH** /wires/incoming/{wire_id} | Update an incoming wire by id |


## get_incoming_wire

> <IncomingWire> get_incoming_wire(wire_id)

Get incoming wire by id

Get an incoming wire by id

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::IncomingWiresApi.new
wire_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | The unique identifier of a wire transfer.

begin
  # Get incoming wire by id
  result = api_instance.get_incoming_wire(wire_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling IncomingWiresApi->get_incoming_wire: #{e}"
end
```

#### Using the get_incoming_wire_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncomingWire>, Integer, Hash)> get_incoming_wire_with_http_info(wire_id)

```ruby
begin
  # Get incoming wire by id
  data, status_code, headers = api_instance.get_incoming_wire_with_http_info(wire_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncomingWire>
rescue Synctera::ApiError => e
  puts "Error when calling IncomingWiresApi->get_incoming_wire_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wire_id** | **String** | The unique identifier of a wire transfer. |  |

### Return type

[**IncomingWire**](IncomingWire.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_incoming_wires

> <IncomingWireList> list_incoming_wires(opts)

List incoming wires

Get paginated list of incoming wires

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::IncomingWiresApi.new
opts = {
  to_date: Date.parse('2013-10-20'), # Date | Only display transactions with an effective date less than or equal to to_date
  from_date: Date.parse('2013-10-20'), # Date | Only display transactions with an effective date greater than from_date
  status: 'BLOCKED', # String | 
  page_token: 'a8937a0d', # String | 
  id: ['7d943c51-e4ff-4e57-9558-08cab6b963c7'], # Array<String> | Unique resource identifier
  limit: 100 # Integer | 
}

begin
  # List incoming wires
  result = api_instance.list_incoming_wires(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling IncomingWiresApi->list_incoming_wires: #{e}"
end
```

#### Using the list_incoming_wires_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncomingWireList>, Integer, Hash)> list_incoming_wires_with_http_info(opts)

```ruby
begin
  # List incoming wires
  data, status_code, headers = api_instance.list_incoming_wires_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncomingWireList>
rescue Synctera::ApiError => e
  puts "Error when calling IncomingWiresApi->list_incoming_wires_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to_date** | **Date** | Only display transactions with an effective date less than or equal to to_date | [optional] |
| **from_date** | **Date** | Only display transactions with an effective date greater than from_date | [optional] |
| **status** | **String** |  | [optional] |
| **page_token** | **String** |  | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Unique resource identifier | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**IncomingWireList**](IncomingWireList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## patch_incoming_wire

> <IncomingWire> patch_incoming_wire(wire_id, incoming_wire_patch)

Update an incoming wire by id

Update an incoming wire by id

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::IncomingWiresApi.new
wire_id = 'b01db9c7-78f2-4a99-8aca-1231d32f9b96' # String | The unique identifier of a wire transfer.
incoming_wire_patch = Synctera::IncomingWirePatch.new # IncomingWirePatch | Patch incoming wire request

begin
  # Update an incoming wire by id
  result = api_instance.patch_incoming_wire(wire_id, incoming_wire_patch)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling IncomingWiresApi->patch_incoming_wire: #{e}"
end
```

#### Using the patch_incoming_wire_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncomingWire>, Integer, Hash)> patch_incoming_wire_with_http_info(wire_id, incoming_wire_patch)

```ruby
begin
  # Update an incoming wire by id
  data, status_code, headers = api_instance.patch_incoming_wire_with_http_info(wire_id, incoming_wire_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncomingWire>
rescue Synctera::ApiError => e
  puts "Error when calling IncomingWiresApi->patch_incoming_wire_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wire_id** | **String** | The unique identifier of a wire transfer. |  |
| **incoming_wire_patch** | [**IncomingWirePatch**](IncomingWirePatch.md) | Patch incoming wire request |  |

### Return type

[**IncomingWire**](IncomingWire.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

