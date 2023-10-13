# Synctera::MerchantsApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**mx_read_merchant**](MerchantsApi.md#mx_read_merchant) | **GET** /mx/merchants/{merchant_guid} | Get merchant from MX |


## mx_read_merchant

> <MerchantResponse> mx_read_merchant(merchant_guid)

Get merchant from MX

Returns information about a particular merchant from MX, such as a logo, name, and website. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::MerchantsApi.new
merchant_guid = 'MCH-7ed79542-884d-2b1b-dd74-501c5cc9d25b' # String | The unique id for a `merchant`.

begin
  # Get merchant from MX
  result = api_instance.mx_read_merchant(merchant_guid)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling MerchantsApi->mx_read_merchant: #{e}"
end
```

#### Using the mx_read_merchant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MerchantResponse>, Integer, Hash)> mx_read_merchant_with_http_info(merchant_guid)

```ruby
begin
  # Get merchant from MX
  data, status_code, headers = api_instance.mx_read_merchant_with_http_info(merchant_guid)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MerchantResponse>
rescue Synctera::ApiError => e
  puts "Error when calling MerchantsApi->mx_read_merchant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merchant_guid** | **String** | The unique id for a &#x60;merchant&#x60;. |  |

### Return type

[**MerchantResponse**](MerchantResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

