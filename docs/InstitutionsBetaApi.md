# Synctera::InstitutionsBetaApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_institutions**](InstitutionsBetaApi.md#get_institutions) | **GET** /institutions | Retrieve a list of institutions |


## get_institutions

> <InstitutionList> get_institutions(country_codes, routing_numbers, opts)

Retrieve a list of institutions

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::InstitutionsBetaApi.new
country_codes = ['CA'] # Array<String> | The countries of operation of the financial institutions
routing_numbers = ['inner_example'] # Array<String> | An array of routing numbers to filter institutions. The response will only return institutions that match all of the routing numbers in the array
opts = {
  page_token: 'a8937a0d' # String | 
}

begin
  # Retrieve a list of institutions
  result = api_instance.get_institutions(country_codes, routing_numbers, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling InstitutionsBetaApi->get_institutions: #{e}"
end
```

#### Using the get_institutions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InstitutionList>, Integer, Hash)> get_institutions_with_http_info(country_codes, routing_numbers, opts)

```ruby
begin
  # Retrieve a list of institutions
  data, status_code, headers = api_instance.get_institutions_with_http_info(country_codes, routing_numbers, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InstitutionList>
rescue Synctera::ApiError => e
  puts "Error when calling InstitutionsBetaApi->get_institutions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_codes** | [**Array&lt;String&gt;**](String.md) | The countries of operation of the financial institutions |  |
| **routing_numbers** | [**Array&lt;String&gt;**](String.md) | An array of routing numbers to filter institutions. The response will only return institutions that match all of the routing numbers in the array |  |
| **page_token** | **String** |  | [optional] |

### Return type

[**InstitutionList**](InstitutionList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

