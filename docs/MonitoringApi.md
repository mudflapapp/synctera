# Synctera::MonitoringApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_subscription**](MonitoringApi.md#create_subscription) | **POST** /monitoring/subscriptions | Subscribe a customer or business to monitoring |
| [**delete_subscription**](MonitoringApi.md#delete_subscription) | **DELETE** /monitoring/subscriptions/{subscription_id} | Delete monitoring subscription |
| [**get_alert**](MonitoringApi.md#get_alert) | **GET** /monitoring/alerts/{alert_id} | Retrieve a monitoring alert |
| [**get_subscription**](MonitoringApi.md#get_subscription) | **GET** /monitoring/subscriptions/{subscription_id} | Retrieve monitoring subscription |
| [**list_alerts**](MonitoringApi.md#list_alerts) | **GET** /monitoring/alerts | List monitoring alerts |
| [**list_subscriptions**](MonitoringApi.md#list_subscriptions) | **GET** /monitoring/subscriptions | List monitoring subscriptions |
| [**update_alert**](MonitoringApi.md#update_alert) | **PATCH** /monitoring/alerts/{alert_id} | Update a monitoring alert |


## create_subscription

> <MonitoringSubscription> create_subscription(monitoring_subscription)

Subscribe a customer or business to monitoring

This endpoint is rarely needed. Since August 2022, watchlist monitoring is automatically enabled for all businesses and customers who are verified (KYC/KYB) through Synctera's platform. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::MonitoringApi.new
monitoring_subscription = Synctera::MonitoringSubscription.new # MonitoringSubscription | The monitoring subscription.

begin
  # Subscribe a customer or business to monitoring
  result = api_instance.create_subscription(monitoring_subscription)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->create_subscription: #{e}"
end
```

#### Using the create_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MonitoringSubscription>, Integer, Hash)> create_subscription_with_http_info(monitoring_subscription)

```ruby
begin
  # Subscribe a customer or business to monitoring
  data, status_code, headers = api_instance.create_subscription_with_http_info(monitoring_subscription)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MonitoringSubscription>
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->create_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **monitoring_subscription** | [**MonitoringSubscription**](MonitoringSubscription.md) | The monitoring subscription. |  |

### Return type

[**MonitoringSubscription**](MonitoringSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## delete_subscription

> <DeleteResponse> delete_subscription(subscription_id)

Delete monitoring subscription

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::MonitoringApi.new
subscription_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Unique identifier for monitoring subscription.

begin
  # Delete monitoring subscription
  result = api_instance.delete_subscription(subscription_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->delete_subscription: #{e}"
end
```

#### Using the delete_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteResponse>, Integer, Hash)> delete_subscription_with_http_info(subscription_id)

```ruby
begin
  # Delete monitoring subscription
  data, status_code, headers = api_instance.delete_subscription_with_http_info(subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteResponse>
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->delete_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Unique identifier for monitoring subscription. |  |

### Return type

[**DeleteResponse**](DeleteResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_alert

> <MonitoringAlert> get_alert(alert_id)

Retrieve a monitoring alert

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::MonitoringApi.new
alert_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Unique identifier for this monitoring alert.

begin
  # Retrieve a monitoring alert
  result = api_instance.get_alert(alert_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->get_alert: #{e}"
end
```

#### Using the get_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MonitoringAlert>, Integer, Hash)> get_alert_with_http_info(alert_id)

```ruby
begin
  # Retrieve a monitoring alert
  data, status_code, headers = api_instance.get_alert_with_http_info(alert_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MonitoringAlert>
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->get_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_id** | **String** | Unique identifier for this monitoring alert. |  |

### Return type

[**MonitoringAlert**](MonitoringAlert.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_subscription

> <MonitoringSubscription> get_subscription(subscription_id)

Retrieve monitoring subscription

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::MonitoringApi.new
subscription_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Unique identifier for monitoring subscription.

begin
  # Retrieve monitoring subscription
  result = api_instance.get_subscription(subscription_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->get_subscription: #{e}"
end
```

#### Using the get_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MonitoringSubscription>, Integer, Hash)> get_subscription_with_http_info(subscription_id)

```ruby
begin
  # Retrieve monitoring subscription
  data, status_code, headers = api_instance.get_subscription_with_http_info(subscription_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MonitoringSubscription>
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->get_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Unique identifier for monitoring subscription. |  |

### Return type

[**MonitoringSubscription**](MonitoringSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_alerts

> <MonitoringAlertList> list_alerts(opts)

List monitoring alerts

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::MonitoringApi.new
opts = {
  business_id: ['inner_example'], # Array<String> | Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  page_token: 'a8937a0d', # String | 
  id: ['inner_example'], # Array<String> | Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
  person_id: ['inner_example'], # Array<String> | Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
  limit: 100 # Integer | 
}

begin
  # List monitoring alerts
  result = api_instance.list_alerts(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->list_alerts: #{e}"
end
```

#### Using the list_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MonitoringAlertList>, Integer, Hash)> list_alerts_with_http_info(opts)

```ruby
begin
  # List monitoring alerts
  data, status_code, headers = api_instance.list_alerts_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MonitoringAlertList>
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->list_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the business. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **page_token** | **String** |  | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **person_id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the person. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**MonitoringAlertList**](MonitoringAlertList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_subscriptions

> <MonitoringSubscriptionList> list_subscriptions(opts)

List monitoring subscriptions

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::MonitoringApi.new
opts = {
  business_id: ['inner_example'], # Array<String> | Unique identifier for the business. Multiple IDs can be provided as a comma-separated list. 
  page_token: 'a8937a0d', # String | 
  id: ['inner_example'], # Array<String> | Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list. 
  person_id: ['inner_example'], # Array<String> | Unique identifier for the person. Multiple IDs can be provided as a comma-separated list. 
  limit: 100 # Integer | 
}

begin
  # List monitoring subscriptions
  result = api_instance.list_subscriptions(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->list_subscriptions: #{e}"
end
```

#### Using the list_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MonitoringSubscriptionList>, Integer, Hash)> list_subscriptions_with_http_info(opts)

```ruby
begin
  # List monitoring subscriptions
  data, status_code, headers = api_instance.list_subscriptions_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MonitoringSubscriptionList>
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->list_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the business. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **page_token** | **String** |  | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the resource. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **person_id** | [**Array&lt;String&gt;**](String.md) | Unique identifier for the person. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |

### Return type

[**MonitoringSubscriptionList**](MonitoringSubscriptionList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_alert

> update_alert(alert_id, monitoring_alert)

Update a monitoring alert

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::MonitoringApi.new
alert_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Unique identifier for this monitoring alert.
monitoring_alert = Synctera::MonitoringAlert.new # MonitoringAlert | Monitoring alert to update.

begin
  # Update a monitoring alert
  api_instance.update_alert(alert_id, monitoring_alert)
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->update_alert: #{e}"
end
```

#### Using the update_alert_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_alert_with_http_info(alert_id, monitoring_alert)

```ruby
begin
  # Update a monitoring alert
  data, status_code, headers = api_instance.update_alert_with_http_info(alert_id, monitoring_alert)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Synctera::ApiError => e
  puts "Error when calling MonitoringApi->update_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_id** | **String** | Unique identifier for this monitoring alert. |  |
| **monitoring_alert** | [**MonitoringAlert**](MonitoringAlert.md) | Monitoring alert to update. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json

