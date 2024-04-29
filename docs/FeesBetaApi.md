# Synctera::FeesBetaApi

All URIs are relative to *https://api.synctera.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_fee**](FeesBetaApi.md#create_fee) | **POST** /fees | Create a fee |
| [**create_fee_template**](FeesBetaApi.md#create_fee_template) | **POST** /fee_templates | Create a fee template |
| [**get_fee**](FeesBetaApi.md#get_fee) | **GET** /fees/{fee_id} | Get Fee |
| [**get_fee_template**](FeesBetaApi.md#get_fee_template) | **GET** /fee_templates/{fee_template_id} | Get a Fee template |
| [**list_fees**](FeesBetaApi.md#list_fees) | **GET** /fees | List fees |
| [**list_feetemplates**](FeesBetaApi.md#list_feetemplates) | **GET** /fee_templates | List fee templates |
| [**patch_fee_template**](FeesBetaApi.md#patch_fee_template) | **PATCH** /fee_templates/{fee_template_id} | Patch Fee Template |
| [**reverse_fee**](FeesBetaApi.md#reverse_fee) | **POST** /fees/{fee_id}/reverse | Reverse a fee |


## create_fee

> <FeeResponse> create_fee(fee_post)

Create a fee

Create a fee  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::FeesBetaApi.new
fee_post = Synctera::FeePost.new({account_id: '12943c51-e4ff-4e57-9558-08cab6b96364', template_id: '64943c51-e4ff-4e57-9558-08cab6b96352'}) # FeePost | Fee to create

begin
  # Create a fee
  result = api_instance.create_fee(fee_post)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->create_fee: #{e}"
end
```

#### Using the create_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeResponse>, Integer, Hash)> create_fee_with_http_info(fee_post)

```ruby
begin
  # Create a fee
  data, status_code, headers = api_instance.create_fee_with_http_info(fee_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeResponse>
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->create_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_post** | [**FeePost**](FeePost.md) | Fee to create |  |

### Return type

[**FeeResponse**](FeeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_fee_template

> <FeeTemplateResponse> create_fee_template(fee_template_post)

Create a fee template

> 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced.  Create a fee template A fee template defines the properties of a fee that a fintech wishes to use to easily charge their customers. The fintech can then create fee templates for different amounts or categories of fees that represent different instances of services or charges 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::FeesBetaApi.new
fee_template_post = Synctera::FeeTemplatePost.new({currency: 'USD', description: 'Premium Customer ATM Fee', internal_account_id: '42943c51-e4ff-4e57-9558-08cab6b963c8', subtype: Synctera::FeeSubtypePost::ACH_INCOMING_TRANSFER}) # FeeTemplatePost | Fee to create  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

begin
  # Create a fee template
  result = api_instance.create_fee_template(fee_template_post)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->create_fee_template: #{e}"
end
```

#### Using the create_fee_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeTemplateResponse>, Integer, Hash)> create_fee_template_with_http_info(fee_template_post)

```ruby
begin
  # Create a fee template
  data, status_code, headers = api_instance.create_fee_template_with_http_info(fee_template_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeTemplateResponse>
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->create_fee_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_template_post** | [**FeeTemplatePost**](FeeTemplatePost.md) | Fee to create  &gt; 🚧 Beta &gt; This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced.  |  |

### Return type

[**FeeTemplateResponse**](FeeTemplateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_fee

> <FeeResponse> get_fee(fee_id)

Get Fee

Get a fee by ID.  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::FeesBetaApi.new
fee_id = '64438afd-fa20-4010-a573-2bbdca77cdb6' # String | The unique identifier of a fee

begin
  # Get Fee
  result = api_instance.get_fee(fee_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->get_fee: #{e}"
end
```

#### Using the get_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeResponse>, Integer, Hash)> get_fee_with_http_info(fee_id)

```ruby
begin
  # Get Fee
  data, status_code, headers = api_instance.get_fee_with_http_info(fee_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeResponse>
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->get_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_id** | **String** | The unique identifier of a fee |  |

### Return type

[**FeeResponse**](FeeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_fee_template

> <FeeTemplateResponse> get_fee_template(fee_template_id)

Get a Fee template

Get a fee template by ID.  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::FeesBetaApi.new
fee_template_id = '64438afd-fa20-4010-a573-2bbdca77cdb6' # String | The unique identifier of a fee template

begin
  # Get a Fee template
  result = api_instance.get_fee_template(fee_template_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->get_fee_template: #{e}"
end
```

#### Using the get_fee_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeTemplateResponse>, Integer, Hash)> get_fee_template_with_http_info(fee_template_id)

```ruby
begin
  # Get a Fee template
  data, status_code, headers = api_instance.get_fee_template_with_http_info(fee_template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeTemplateResponse>
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->get_fee_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_template_id** | **String** | The unique identifier of a fee template |  |

### Return type

[**FeeTemplateResponse**](FeeTemplateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_fees

> <FeeList> list_fees(opts)

List fees

Get paginated list of fees  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::FeesBetaApi.new
opts = {
  end_time: Time.parse('2010-05-06T12:23:34.321Z'), # Time | Return fees created before this time.
  account_id: ['inner_example'], # Array<String> | Return fees for the specified account.
  subtype: Synctera::FeeSubtype::ACH_INCOMING_TRANSFER, # FeeSubtype | 
  id: ['inner_example'], # Array<String> | Return the fee with the specified id. Multiple IDs can be provided as a comma-separated list. 
  page_token: 'a8937a0d', # String | 
  start_time: Time.parse('2010-05-06T12:23:34.321Z'), # Time | Return fees created at or after this time.
  limit: 100, # Integer | 
  description: 'Premium Customer ATM Fee', # String | Return fees with the specified description. A * character can be used as a wildcard to match any characters.
  fee_template_id: ['inner_example'] # Array<String> | Return fees resources with a fee template of the specified id. Multiple IDs can be provided as a comma-separated list. 
}

begin
  # List fees
  result = api_instance.list_fees(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->list_fees: #{e}"
end
```

#### Using the list_fees_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeList>, Integer, Hash)> list_fees_with_http_info(opts)

```ruby
begin
  # List fees
  data, status_code, headers = api_instance.list_fees_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeList>
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->list_fees_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **end_time** | **Time** | Return fees created before this time. | [optional] |
| **account_id** | [**Array&lt;String&gt;**](String.md) | Return fees for the specified account. | [optional] |
| **subtype** | [**FeeSubtype**](.md) |  | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Return the fee with the specified id. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **page_token** | **String** |  | [optional] |
| **start_time** | **Time** | Return fees created at or after this time. | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **description** | **String** | Return fees with the specified description. A * character can be used as a wildcard to match any characters. | [optional] |
| **fee_template_id** | [**Array&lt;String&gt;**](String.md) | Return fees resources with a fee template of the specified id. Multiple IDs can be provided as a comma-separated list.  | [optional] |

### Return type

[**FeeList**](FeeList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_feetemplates

> <FeeTemplateList> list_feetemplates(opts)

List fee templates

> 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced.  Get paginated list of fee templates 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::FeesBetaApi.new
opts = {
  id: ['inner_example'], # Array<String> | Return fee templates with the specified id. Multiple IDs can be provided as a comma-separated list. 
  subtype: Synctera::FeeSubtype::ACH_INCOMING_TRANSFER, # FeeSubtype | 
  sort_by: ['amount:asc'], # Array<String> | Specifies the sort order for the returned fee templates. 
  is_enabled: true, # Boolean | Return fee templates with the specified is_enabled flag.
  page_token: 'a8937a0d', # String | 
  limit: 100, # Integer | 
  description: 'Premium Customer ATM Fee' # String | Return fee templates with the specified description. A * character can be used as a wildcard to match any characters.
}

begin
  # List fee templates
  result = api_instance.list_feetemplates(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->list_feetemplates: #{e}"
end
```

#### Using the list_feetemplates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeTemplateList>, Integer, Hash)> list_feetemplates_with_http_info(opts)

```ruby
begin
  # List fee templates
  data, status_code, headers = api_instance.list_feetemplates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeTemplateList>
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->list_feetemplates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Array&lt;String&gt;**](String.md) | Return fee templates with the specified id. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **subtype** | [**FeeSubtype**](.md) |  | [optional] |
| **sort_by** | [**Array&lt;String&gt;**](String.md) | Specifies the sort order for the returned fee templates.  | [optional] |
| **is_enabled** | **Boolean** | Return fee templates with the specified is_enabled flag. | [optional] |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **description** | **String** | Return fee templates with the specified description. A * character can be used as a wildcard to match any characters. | [optional] |

### Return type

[**FeeTemplateList**](FeeTemplateList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_fee_template

> <FeeTemplateResponse> patch_fee_template(fee_template_id, fee_template_patch, opts)

Patch Fee Template

Update a fee template by ID.  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::FeesBetaApi.new
fee_template_id = '64438afd-fa20-4010-a573-2bbdca77cdb6' # String | The unique identifier of a fee template
fee_template_patch = Synctera::FeeTemplatePatch.new # FeeTemplatePatch | 
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
}

begin
  # Patch Fee Template
  result = api_instance.patch_fee_template(fee_template_id, fee_template_patch, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->patch_fee_template: #{e}"
end
```

#### Using the patch_fee_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeTemplateResponse>, Integer, Hash)> patch_fee_template_with_http_info(fee_template_id, fee_template_patch, opts)

```ruby
begin
  # Patch Fee Template
  data, status_code, headers = api_instance.patch_fee_template_with_http_info(fee_template_id, fee_template_patch, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeTemplateResponse>
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->patch_fee_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_template_id** | **String** | The unique identifier of a fee template |  |
| **fee_template_patch** | [**FeeTemplatePatch**](FeeTemplatePatch.md) |  |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |

### Return type

[**FeeTemplateResponse**](FeeTemplateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reverse_fee

> <FeeResponse> reverse_fee(fee_id, fee_reverse_post, opts)

Reverse a fee

Reverse the fee by creating a reversal transaction.  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::FeesBetaApi.new
fee_id = '64438afd-fa20-4010-a573-2bbdca77cdb6' # String | The unique identifier of a fee
fee_reverse_post = Synctera::FeeReversePost.new({note: 'Charge was made in error'}) # FeeReversePost | Fee reversal properties
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
}

begin
  # Reverse a fee
  result = api_instance.reverse_fee(fee_id, fee_reverse_post, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->reverse_fee: #{e}"
end
```

#### Using the reverse_fee_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FeeResponse>, Integer, Hash)> reverse_fee_with_http_info(fee_id, fee_reverse_post, opts)

```ruby
begin
  # Reverse a fee
  data, status_code, headers = api_instance.reverse_fee_with_http_info(fee_id, fee_reverse_post, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FeeResponse>
rescue Synctera::ApiError => e
  puts "Error when calling FeesBetaApi->reverse_fee_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fee_id** | **String** | The unique identifier of a fee |  |
| **fee_reverse_post** | [**FeeReversePost**](FeeReversePost.md) | Fee reversal properties |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |

### Return type

[**FeeResponse**](FeeResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

