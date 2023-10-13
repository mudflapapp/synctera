# Synctera::LicensesApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_licenses**](LicensesApi.md#create_licenses) | **POST** /licenses | Create a license and associate it with a business |
| [**get_license**](LicensesApi.md#get_license) | **GET** /licenses/{license_id} | Get license |
| [**list_licenses**](LicensesApi.md#list_licenses) | **GET** /licenses | list licenses |
| [**patch_license**](LicensesApi.md#patch_license) | **PATCH** /licenses/{license_id} | Patch License |


## create_licenses

> <ResponseLicense> create_licenses(post_license)

Create a license and associate it with a business

License represents a business permit that will be verified 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::LicensesApi.new
post_license = Synctera::PostLicense.new # PostLicense | license to be created

begin
  # Create a license and associate it with a business
  result = api_instance.create_licenses(post_license)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling LicensesApi->create_licenses: #{e}"
end
```

#### Using the create_licenses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseLicense>, Integer, Hash)> create_licenses_with_http_info(post_license)

```ruby
begin
  # Create a license and associate it with a business
  data, status_code, headers = api_instance.create_licenses_with_http_info(post_license)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseLicense>
rescue Synctera::ApiError => e
  puts "Error when calling LicensesApi->create_licenses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_license** | [**PostLicense**](PostLicense.md) | license to be created |  |

### Return type

[**ResponseLicense**](ResponseLicense.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## get_license

> <ResponseLicense> get_license(license_id)

Get license

Get license record by id

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::LicensesApi.new
license_id = 'ba4f84d7-fa20-4010-a573-0bbca57ab589' # String | License record identifier

begin
  # Get license
  result = api_instance.get_license(license_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling LicensesApi->get_license: #{e}"
end
```

#### Using the get_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseLicense>, Integer, Hash)> get_license_with_http_info(license_id)

```ruby
begin
  # Get license
  data, status_code, headers = api_instance.get_license_with_http_info(license_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseLicense>
rescue Synctera::ApiError => e
  puts "Error when calling LicensesApi->get_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_id** | **String** | License record identifier |  |

### Return type

[**ResponseLicense**](ResponseLicense.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_licenses

> <LicenseList> list_licenses(opts)

list licenses

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::LicensesApi.new
opts = {
  business_id: ['inner_example'], # Array<String> | Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  customer_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The customer's unique identifier
}

begin
  # list licenses
  result = api_instance.list_licenses(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling LicensesApi->list_licenses: #{e}"
end
```

#### Using the list_licenses_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LicenseList>, Integer, Hash)> list_licenses_with_http_info(opts)

```ruby
begin
  # list licenses
  data, status_code, headers = api_instance.list_licenses_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LicenseList>
rescue Synctera::ApiError => e
  puts "Error when calling LicensesApi->list_licenses_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the business. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **customer_id** | **String** | The customer&#39;s unique identifier | [optional] |

### Return type

[**LicenseList**](LicenseList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## patch_license

> <ResponseLicense> patch_license(license_id, license_patch)

Patch License

Update a License by ID.

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::LicensesApi.new
license_id = 'ba4f84d7-fa20-4010-a573-0bbca57ab589' # String | License record identifier
license_patch = Synctera::LicensePatch.new({license_number: '10321'}) # LicensePatch | 

begin
  # Patch License
  result = api_instance.patch_license(license_id, license_patch)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling LicensesApi->patch_license: #{e}"
end
```

#### Using the patch_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResponseLicense>, Integer, Hash)> patch_license_with_http_info(license_id, license_patch)

```ruby
begin
  # Patch License
  data, status_code, headers = api_instance.patch_license_with_http_info(license_id, license_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResponseLicense>
rescue Synctera::ApiError => e
  puts "Error when calling LicensesApi->patch_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **license_id** | **String** | License record identifier |  |
| **license_patch** | [**LicensePatch**](LicensePatch.md) |  |  |

### Return type

[**ResponseLicense**](ResponseLicense.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

