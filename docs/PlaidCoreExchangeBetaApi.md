# Synctera::PlaidCoreExchangeBetaApi

All URIs are relative to *https://api.synctera.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_authorization_test**](PlaidCoreExchangeBetaApi.md#get_authorization_test) | **GET** /fdx_auth_requests/authorization_test | Authorization Test |
| [**get_fdx_token**](PlaidCoreExchangeBetaApi.md#get_fdx_token) | **GET** /fdx_tokens/{fdx_token_id} | Get an FDX token |
| [**grant_fdx_auth_request**](PlaidCoreExchangeBetaApi.md#grant_fdx_auth_request) | **POST** /fdx_auth_requests/authorize | Grant an FDX authorization request |
| [**list_fdx_auth_requests**](PlaidCoreExchangeBetaApi.md#list_fdx_auth_requests) | **GET** /fdx_auth_requests | List FDX authorization requests |
| [**list_fdx_token**](PlaidCoreExchangeBetaApi.md#list_fdx_token) | **GET** /fdx_tokens | List tokens |


## get_authorization_test

> <TestAuthorizeResponse> get_authorization_test

Authorization Test

Use this endpoint to initiate a test of the Plaid Core Exchange authorization flow. Your configured Authentication URI will be returned in the response body which you can navigate to in browser, then perform your authentication process using the appended auth_request_id. If that authentication is successful, this flow should end by redirecting to our success page from the authorize response. This endpoint is only supported in the sandbox environment. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::PlaidCoreExchangeBetaApi.new

begin
  # Authorization Test
  result = api_instance.get_authorization_test
  p result
rescue Synctera::ApiError => e
  puts "Error when calling PlaidCoreExchangeBetaApi->get_authorization_test: #{e}"
end
```

#### Using the get_authorization_test_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TestAuthorizeResponse>, Integer, Hash)> get_authorization_test_with_http_info

```ruby
begin
  # Authorization Test
  data, status_code, headers = api_instance.get_authorization_test_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TestAuthorizeResponse>
rescue Synctera::ApiError => e
  puts "Error when calling PlaidCoreExchangeBetaApi->get_authorization_test_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**TestAuthorizeResponse**](TestAuthorizeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fdx_token

> <FdxTokenResponse> get_fdx_token(fdx_token_id)

Get an FDX token

> 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get an FDX token 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::PlaidCoreExchangeBetaApi.new
fdx_token_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The unique identifier of an FDX token

begin
  # Get an FDX token
  result = api_instance.get_fdx_token(fdx_token_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling PlaidCoreExchangeBetaApi->get_fdx_token: #{e}"
end
```

#### Using the get_fdx_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FdxTokenResponse>, Integer, Hash)> get_fdx_token_with_http_info(fdx_token_id)

```ruby
begin
  # Get an FDX token
  data, status_code, headers = api_instance.get_fdx_token_with_http_info(fdx_token_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FdxTokenResponse>
rescue Synctera::ApiError => e
  puts "Error when calling PlaidCoreExchangeBetaApi->get_fdx_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fdx_token_id** | **String** | The unique identifier of an FDX token |  |

### Return type

[**FdxTokenResponse**](FdxTokenResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## grant_fdx_auth_request

> <FdxAuthGrantResponse> grant_fdx_auth_request(fdx_auth_grant_post)

Grant an FDX authorization request

> 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Grant or deny an FDX authorization request 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::PlaidCoreExchangeBetaApi.new
fdx_auth_grant_post = Synctera::FdxAuthGrantPost.new({auth_request_id: 'auth_request_id_example', status: Synctera::FdxAuthGrantStatus::DENIED}) # FdxAuthGrantPost | FDX authorization grant

begin
  # Grant an FDX authorization request
  result = api_instance.grant_fdx_auth_request(fdx_auth_grant_post)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling PlaidCoreExchangeBetaApi->grant_fdx_auth_request: #{e}"
end
```

#### Using the grant_fdx_auth_request_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FdxAuthGrantResponse>, Integer, Hash)> grant_fdx_auth_request_with_http_info(fdx_auth_grant_post)

```ruby
begin
  # Grant an FDX authorization request
  data, status_code, headers = api_instance.grant_fdx_auth_request_with_http_info(fdx_auth_grant_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FdxAuthGrantResponse>
rescue Synctera::ApiError => e
  puts "Error when calling PlaidCoreExchangeBetaApi->grant_fdx_auth_request_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fdx_auth_grant_post** | [**FdxAuthGrantPost**](FdxAuthGrantPost.md) | FDX authorization grant |  |

### Return type

[**FdxAuthGrantResponse**](FdxAuthGrantResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## list_fdx_auth_requests

> <FdxAuthRequestList> list_fdx_auth_requests(opts)

List FDX authorization requests

> 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get paginated list of FDX authorization requests 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::PlaidCoreExchangeBetaApi.new
opts = {
  page_token: 'a8937a0d', # String | 
  limit: 100 # Integer | 
}

begin
  # List FDX authorization requests
  result = api_instance.list_fdx_auth_requests(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling PlaidCoreExchangeBetaApi->list_fdx_auth_requests: #{e}"
end
```

#### Using the list_fdx_auth_requests_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FdxAuthRequestList>, Integer, Hash)> list_fdx_auth_requests_with_http_info(opts)

```ruby
begin
  # List FDX authorization requests
  data, status_code, headers = api_instance.list_fdx_auth_requests_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FdxAuthRequestList>
rescue Synctera::ApiError => e
  puts "Error when calling PlaidCoreExchangeBetaApi->list_fdx_auth_requests_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**FdxAuthRequestList**](FdxAuthRequestList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_fdx_token

> <FdxTokenList> list_fdx_token(opts)

List tokens

> 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get paginated list of FDX tokens 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::PlaidCoreExchangeBetaApi.new
opts = {
  page_token: 'a8937a0d', # String | 
  limit: 100 # Integer | 
}

begin
  # List tokens
  result = api_instance.list_fdx_token(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling PlaidCoreExchangeBetaApi->list_fdx_token: #{e}"
end
```

#### Using the list_fdx_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FdxTokenList>, Integer, Hash)> list_fdx_token_with_http_info(opts)

```ruby
begin
  # List tokens
  data, status_code, headers = api_instance.list_fdx_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FdxTokenList>
rescue Synctera::ApiError => e
  puts "Error when calling PlaidCoreExchangeBetaApi->list_fdx_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**FdxTokenList**](FdxTokenList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

