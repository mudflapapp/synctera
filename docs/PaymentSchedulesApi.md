# Synctera::PaymentSchedulesApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_payment_schedule**](PaymentSchedulesApi.md#create_payment_schedule) | **POST** /payment_schedules | Create a payment schedule |
| [**list_payment_schedules**](PaymentSchedulesApi.md#list_payment_schedules) | **GET** /payment_schedules | List payment schedules |
| [**list_payments**](PaymentSchedulesApi.md#list_payments) | **GET** /payment_schedules/payments | List payments |
| [**patch_payment_schedule**](PaymentSchedulesApi.md#patch_payment_schedule) | **PATCH** /payment_schedules/{payment_schedule_id} | Update a payment schedule |


## create_payment_schedule

> <PaymentSchedule> create_payment_schedule(payment_schedule)

Create a payment schedule

Create a payment schedule

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::PaymentSchedulesApi.new
payment_schedule = Synctera::PaymentSchedule.new({description: 'description_example', payment_instruction: Synctera::AchInstruction.new({request: Synctera::OutgoingAchRequest.new({amount: 607, currency: 'USD', customer_id: 'b01db9c7-78f2-4a99-8aca-1231d32f9b96', dc_sign: 'credit', originating_account_id: 'b01db9c7-78f2-4a99-8aca-1231d32f9b96', receiving_account_id: 'b01db9c7-78f2-4a99-8aca-1231d32f9b96'}), type: 'ACH'}), schedule: Synctera::ScheduleConfig.new({frequency: 'DAILY', interval: 37, start_date: Date.today})}) # PaymentSchedule | payment schedule to create

begin
  # Create a payment schedule
  result = api_instance.create_payment_schedule(payment_schedule)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling PaymentSchedulesApi->create_payment_schedule: #{e}"
end
```

#### Using the create_payment_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentSchedule>, Integer, Hash)> create_payment_schedule_with_http_info(payment_schedule)

```ruby
begin
  # Create a payment schedule
  data, status_code, headers = api_instance.create_payment_schedule_with_http_info(payment_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentSchedule>
rescue Synctera::ApiError => e
  puts "Error when calling PaymentSchedulesApi->create_payment_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_schedule** | [**PaymentSchedule**](PaymentSchedule.md) | payment schedule to create |  |

### Return type

[**PaymentSchedule**](PaymentSchedule.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## list_payment_schedules

> <PaymentScheduleList> list_payment_schedules(opts)

List payment schedules

Get paginated list of payment schedules

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::PaymentSchedulesApi.new
opts = {
  id: ['inner_example'], # Array<String> | IDs. Multiple IDs can be provided as a comma-separated list.
  account_id: ['inner_example'], # Array<String> | Originating account IDs. Multiple IDs can be provided as a comma-separated list.
  page_token: 'a8937a0d', # String | 
  limit: 100, # Integer | 
  customer_id: ['inner_example'] # Array<String> | The IDs of customers who created the payment schedules. Multiple IDs can be provided as a comma-separated list.
}

begin
  # List payment schedules
  result = api_instance.list_payment_schedules(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling PaymentSchedulesApi->list_payment_schedules: #{e}"
end
```

#### Using the list_payment_schedules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentScheduleList>, Integer, Hash)> list_payment_schedules_with_http_info(opts)

```ruby
begin
  # List payment schedules
  data, status_code, headers = api_instance.list_payment_schedules_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentScheduleList>
rescue Synctera::ApiError => e
  puts "Error when calling PaymentSchedulesApi->list_payment_schedules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Array&lt;String&gt;**](String.md) | IDs. Multiple IDs can be provided as a comma-separated list. | [optional] |
| **account_id** | [**Array&lt;String&gt;**](String.md) | Originating account IDs. Multiple IDs can be provided as a comma-separated list. | [optional] |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **customer_id** | [**Array&lt;String&gt;**](String.md) | The IDs of customers who created the payment schedules. Multiple IDs can be provided as a comma-separated list. | [optional] |

### Return type

[**PaymentScheduleList**](PaymentScheduleList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_payments

> <PaymentList> list_payments(opts)

List payments

Get paginated list of payments

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::PaymentSchedulesApi.new
opts = {
  id: ['inner_example'], # Array<String> | IDs. Multiple IDs can be provided as a comma-separated list.
  account_id: ['inner_example'], # Array<String> | Originating account IDs. Multiple IDs can be provided as a comma-separated list.
  page_token: 'a8937a0d', # String | 
  schedule_id: ['inner_example'], # Array<String> | Payment schedule IDs. Multiple IDs can be provided as a comma-separated list.
  limit: 100, # Integer | 
  customer_id: ['inner_example'] # Array<String> | The IDs of customers who created the payment schedules. Multiple IDs can be provided as a comma-separated list.
}

begin
  # List payments
  result = api_instance.list_payments(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling PaymentSchedulesApi->list_payments: #{e}"
end
```

#### Using the list_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentList>, Integer, Hash)> list_payments_with_http_info(opts)

```ruby
begin
  # List payments
  data, status_code, headers = api_instance.list_payments_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentList>
rescue Synctera::ApiError => e
  puts "Error when calling PaymentSchedulesApi->list_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | [**Array&lt;String&gt;**](String.md) | IDs. Multiple IDs can be provided as a comma-separated list. | [optional] |
| **account_id** | [**Array&lt;String&gt;**](String.md) | Originating account IDs. Multiple IDs can be provided as a comma-separated list. | [optional] |
| **page_token** | **String** |  | [optional] |
| **schedule_id** | [**Array&lt;String&gt;**](String.md) | Payment schedule IDs. Multiple IDs can be provided as a comma-separated list. | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **customer_id** | [**Array&lt;String&gt;**](String.md) | The IDs of customers who created the payment schedules. Multiple IDs can be provided as a comma-separated list. | [optional] |

### Return type

[**PaymentList**](PaymentList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## patch_payment_schedule

> <PaymentSchedule> patch_payment_schedule(payment_schedule_id, patch_payment_schedule)

Update a payment schedule

Update a payment schedule

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::PaymentSchedulesApi.new
payment_schedule_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Payment schedule ID
patch_payment_schedule = Synctera::PatchPaymentSchedule.new # PatchPaymentSchedule | payment schedule to update

begin
  # Update a payment schedule
  result = api_instance.patch_payment_schedule(payment_schedule_id, patch_payment_schedule)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling PaymentSchedulesApi->patch_payment_schedule: #{e}"
end
```

#### Using the patch_payment_schedule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentSchedule>, Integer, Hash)> patch_payment_schedule_with_http_info(payment_schedule_id, patch_payment_schedule)

```ruby
begin
  # Update a payment schedule
  data, status_code, headers = api_instance.patch_payment_schedule_with_http_info(payment_schedule_id, patch_payment_schedule)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentSchedule>
rescue Synctera::ApiError => e
  puts "Error when calling PaymentSchedulesApi->patch_payment_schedule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **payment_schedule_id** | **String** | Payment schedule ID |  |
| **patch_payment_schedule** | [**PatchPaymentSchedule**](PatchPaymentSchedule.md) | payment schedule to update |  |

### Return type

[**PaymentSchedule**](PaymentSchedule.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

