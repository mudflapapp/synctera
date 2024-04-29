# Synctera::BatchPaymentsApi

All URIs are relative to *https://api.synctera.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_batch_payment_template**](BatchPaymentsApi.md#create_batch_payment_template) | **POST** /batch_templates | Create Batch Payment Template |
| [**create_batch_payments**](BatchPaymentsApi.md#create_batch_payments) | **POST** /batches | Create Batch Payments |
| [**get_batch_payment**](BatchPaymentsApi.md#get_batch_payment) | **GET** /batches/{id} | Get BatchPayment |
| [**get_batch_payment_template**](BatchPaymentsApi.md#get_batch_payment_template) | **GET** /batch_templates/{id} | Get Batch Payment Template |
| [**get_batch_payment_templates**](BatchPaymentsApi.md#get_batch_payment_templates) | **GET** /batch_templates | Get Batch Payment Templates |
| [**get_batch_payments**](BatchPaymentsApi.md#get_batch_payments) | **GET** /batches | Get Batch Payments |
| [**update_batch_payment**](BatchPaymentsApi.md#update_batch_payment) | **PATCH** /batches/{id} | Update Batch Payment |
| [**update_batch_payment_template**](BatchPaymentsApi.md#update_batch_payment_template) | **PATCH** /batch_templates/{id} | Update Batch Payment Template |


## create_batch_payment_template

> <BatchPaymentTemplate> create_batch_payment_template(batch_payment_template)

Create Batch Payment Template

Create a Batch Payment template 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BatchPaymentsApi.new
batch_payment_template = Synctera::BatchPaymentTemplate.new({config: Synctera::BatchPaymentTemplateConfig.new({external_account_id: 'external_account_id_example', settlement_account_id: 'settlement_account_id_example', settlement_customer_id: 'settlement_customer_id_example', subtypes: ['subtypes_example'], type: 'type_example'}), name: 'International Remittance', rules: Synctera::BatchPaymentTemplateRules.new, tenant: 'abcdef_ghijkl'}) # BatchPaymentTemplate | Attributes of the Batch Payment template

begin
  # Create Batch Payment Template
  result = api_instance.create_batch_payment_template(batch_payment_template)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->create_batch_payment_template: #{e}"
end
```

#### Using the create_batch_payment_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchPaymentTemplate>, Integer, Hash)> create_batch_payment_template_with_http_info(batch_payment_template)

```ruby
begin
  # Create Batch Payment Template
  data, status_code, headers = api_instance.create_batch_payment_template_with_http_info(batch_payment_template)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchPaymentTemplate>
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->create_batch_payment_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **batch_payment_template** | [**BatchPaymentTemplate**](BatchPaymentTemplate.md) | Attributes of the Batch Payment template |  |

### Return type

[**BatchPaymentTemplate**](BatchPaymentTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_batch_payments

> <CreateBatchPaymentsResponse> create_batch_payments(opts)

Create Batch Payments

Create multiple batch payments 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BatchPaymentsApi.new
opts = {
  create_batch_payments_request: Synctera::CreateBatchPaymentsRequest.new({transaction_ids: ['transaction_ids_example']}) # CreateBatchPaymentsRequest | Attributes of the Batch Payment
}

begin
  # Create Batch Payments
  result = api_instance.create_batch_payments(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->create_batch_payments: #{e}"
end
```

#### Using the create_batch_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBatchPaymentsResponse>, Integer, Hash)> create_batch_payments_with_http_info(opts)

```ruby
begin
  # Create Batch Payments
  data, status_code, headers = api_instance.create_batch_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBatchPaymentsResponse>
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->create_batch_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_batch_payments_request** | [**CreateBatchPaymentsRequest**](CreateBatchPaymentsRequest.md) | Attributes of the Batch Payment | [optional] |

### Return type

[**CreateBatchPaymentsResponse**](CreateBatchPaymentsResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_batch_payment

> <BatchPayment> get_batch_payment(id)

Get BatchPayment

Get a Batch Payment 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BatchPaymentsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID

begin
  # Get BatchPayment
  result = api_instance.get_batch_payment(id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->get_batch_payment: #{e}"
end
```

#### Using the get_batch_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchPayment>, Integer, Hash)> get_batch_payment_with_http_info(id)

```ruby
begin
  # Get BatchPayment
  data, status_code, headers = api_instance.get_batch_payment_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchPayment>
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->get_batch_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID |  |

### Return type

[**BatchPayment**](BatchPayment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_batch_payment_template

> <BatchPaymentTemplate> get_batch_payment_template(id)

Get Batch Payment Template

Get a Batch Payment template 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BatchPaymentsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID

begin
  # Get Batch Payment Template
  result = api_instance.get_batch_payment_template(id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->get_batch_payment_template: #{e}"
end
```

#### Using the get_batch_payment_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchPaymentTemplate>, Integer, Hash)> get_batch_payment_template_with_http_info(id)

```ruby
begin
  # Get Batch Payment Template
  data, status_code, headers = api_instance.get_batch_payment_template_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchPaymentTemplate>
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->get_batch_payment_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID |  |

### Return type

[**BatchPaymentTemplate**](BatchPaymentTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_batch_payment_templates

> <Array<BatchPaymentTemplate>> get_batch_payment_templates(opts)

Get Batch Payment Templates

Get all Batch Payment templates 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BatchPaymentsApi.new
opts = {
  name: 'International Remittance', # String | Name of the Batch Template
  enabled: true, # Boolean | Whether or not the template is enabled. If the template is not enabled, it will not be used when creating a batch transfer.
  description: 'This template is used for international remittance', # String | Description of the Batch Template
  page_token: 'a8937a0d', # String | 
  id: ['7d943c51-e4ff-4e57-9558-08cab6b963c7'], # Array<String> | Unique resource identifier
  limit: 100 # Integer | 
}

begin
  # Get Batch Payment Templates
  result = api_instance.get_batch_payment_templates(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->get_batch_payment_templates: #{e}"
end
```

#### Using the get_batch_payment_templates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BatchPaymentTemplate>>, Integer, Hash)> get_batch_payment_templates_with_http_info(opts)

```ruby
begin
  # Get Batch Payment Templates
  data, status_code, headers = api_instance.get_batch_payment_templates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BatchPaymentTemplate>>
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->get_batch_payment_templates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the Batch Template | [optional] |
| **enabled** | **Boolean** | Whether or not the template is enabled. If the template is not enabled, it will not be used when creating a batch transfer. | [optional] |
| **description** | **String** | Description of the Batch Template | [optional] |
| **page_token** | **String** |  | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Unique resource identifier | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**Array&lt;BatchPaymentTemplate&gt;**](BatchPaymentTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_batch_payments

> <Array<BatchPayment>> get_batch_payments(opts)

Get Batch Payments

Get all Batch Payments 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BatchPaymentsApi.new
opts = {
  id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | ID of the Batch Payment
  status: 'status_example', # String | Status of the Batch Payment
  template_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | ID of the Batch Payment Template
  transaction_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | ID of the Batch Payment Transaction
  page_token: 'a8937a0d', # String | 
  limit: 100 # Integer | 
}

begin
  # Get Batch Payments
  result = api_instance.get_batch_payments(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->get_batch_payments: #{e}"
end
```

#### Using the get_batch_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<BatchPayment>>, Integer, Hash)> get_batch_payments_with_http_info(opts)

```ruby
begin
  # Get Batch Payments
  data, status_code, headers = api_instance.get_batch_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<BatchPayment>>
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->get_batch_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the Batch Payment | [optional] |
| **status** | **String** | Status of the Batch Payment | [optional] |
| **template_id** | **String** | ID of the Batch Payment Template | [optional] |
| **transaction_id** | **String** | ID of the Batch Payment Transaction | [optional] |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**Array&lt;BatchPayment&gt;**](BatchPayment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_batch_payment

> <BatchPayment> update_batch_payment(id, opts)

Update Batch Payment

Update a Batch Payment 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BatchPaymentsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID
opts = {
  batch_payment_patch_request: Synctera::BatchPaymentPatchRequest.new({creation_time: Time.parse('2010-05-06T12:23:34.321Z'), last_updated_time: Time.parse('2010-05-06T12:23:34.321Z')}) # BatchPaymentPatchRequest | Attributes of the Batch Payment for udpate
}

begin
  # Update Batch Payment
  result = api_instance.update_batch_payment(id, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->update_batch_payment: #{e}"
end
```

#### Using the update_batch_payment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchPayment>, Integer, Hash)> update_batch_payment_with_http_info(id, opts)

```ruby
begin
  # Update Batch Payment
  data, status_code, headers = api_instance.update_batch_payment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchPayment>
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->update_batch_payment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID |  |
| **batch_payment_patch_request** | [**BatchPaymentPatchRequest**](BatchPaymentPatchRequest.md) | Attributes of the Batch Payment for udpate | [optional] |

### Return type

[**BatchPayment**](BatchPayment.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_batch_payment_template

> <BatchPaymentTemplate> update_batch_payment_template(id, opts)

Update Batch Payment Template

Update a Batch Payment template 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::BatchPaymentsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | ID
opts = {
  batch_payment_template_patch: Synctera::BatchPaymentTemplatePatch.new # BatchPaymentTemplatePatch | Attributes of the Batch Payment template
}

begin
  # Update Batch Payment Template
  result = api_instance.update_batch_payment_template(id, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->update_batch_payment_template: #{e}"
end
```

#### Using the update_batch_payment_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BatchPaymentTemplate>, Integer, Hash)> update_batch_payment_template_with_http_info(id, opts)

```ruby
begin
  # Update Batch Payment Template
  data, status_code, headers = api_instance.update_batch_payment_template_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BatchPaymentTemplate>
rescue Synctera::ApiError => e
  puts "Error when calling BatchPaymentsApi->update_batch_payment_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID |  |
| **batch_payment_template_patch** | [**BatchPaymentTemplatePatch**](BatchPaymentTemplatePatch.md) | Attributes of the Batch Payment template | [optional] |

### Return type

[**BatchPaymentTemplate**](BatchPaymentTemplate.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

