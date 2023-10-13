# Synctera::WatchlistDeprecatedApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_watchlist_alert**](WatchlistDeprecatedApi.md#get_watchlist_alert) | **GET** /customers/{customer_id}/watchlists/alerts/{alert_id} | Retrieve watchlist monitoring alert |
| [**get_watchlist_subscription**](WatchlistDeprecatedApi.md#get_watchlist_subscription) | **GET** /customers/{customer_id}/watchlists/subscriptions/{subscription_id} | Retrieve watchlist monitoring subscription |
| [**list_watchlist_alerts**](WatchlistDeprecatedApi.md#list_watchlist_alerts) | **GET** /customers/{customer_id}/watchlists/alerts | List watchlist monitoring alerts for a customer |
| [**list_watchlist_subscriptions**](WatchlistDeprecatedApi.md#list_watchlist_subscriptions) | **GET** /customers/{customer_id}/watchlists/subscriptions | List watchlist monitoring subscriptions for a customer |
| [**suppress_watchlist_entity_alert**](WatchlistDeprecatedApi.md#suppress_watchlist_entity_alert) | **POST** /customers/{customer_id}/watchlists/suppressions | Suppress entity alert |
| [**update_watchlist_alert**](WatchlistDeprecatedApi.md#update_watchlist_alert) | **PUT** /customers/{customer_id}/watchlists/alerts/{alert_id} | Update watchlist alert |
| [**update_watchlist_subscription**](WatchlistDeprecatedApi.md#update_watchlist_subscription) | **PUT** /customers/{customer_id}/watchlists/subscriptions/{subscription_id} | Update watchlist monitoring subscription |
| [**watchlist_subscribe**](WatchlistDeprecatedApi.md#watchlist_subscribe) | **POST** /customers/{customer_id}/watchlists/subscriptions | Subscribe a customer to watchlist monitoring |


## get_watchlist_alert

> <WatchlistAlert> get_watchlist_alert(alert_id, customer_id)

Retrieve watchlist monitoring alert

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WatchlistDeprecatedApi.new
alert_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Unique identifier for this watchlist alert.
customer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The customer's unique identifier

begin
  # Retrieve watchlist monitoring alert
  result = api_instance.get_watchlist_alert(alert_id, customer_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->get_watchlist_alert: #{e}"
end
```

#### Using the get_watchlist_alert_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WatchlistAlert>, Integer, Hash)> get_watchlist_alert_with_http_info(alert_id, customer_id)

```ruby
begin
  # Retrieve watchlist monitoring alert
  data, status_code, headers = api_instance.get_watchlist_alert_with_http_info(alert_id, customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WatchlistAlert>
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->get_watchlist_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_id** | **String** | Unique identifier for this watchlist alert. |  |
| **customer_id** | **String** | The customer&#39;s unique identifier |  |

### Return type

[**WatchlistAlert**](WatchlistAlert.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_watchlist_subscription

> <WatchlistSubscription> get_watchlist_subscription(subscription_id, customer_id)

Retrieve watchlist monitoring subscription

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WatchlistDeprecatedApi.new
subscription_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Watchlist monitoring subscription ID
customer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The customer's unique identifier

begin
  # Retrieve watchlist monitoring subscription
  result = api_instance.get_watchlist_subscription(subscription_id, customer_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->get_watchlist_subscription: #{e}"
end
```

#### Using the get_watchlist_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WatchlistSubscription>, Integer, Hash)> get_watchlist_subscription_with_http_info(subscription_id, customer_id)

```ruby
begin
  # Retrieve watchlist monitoring subscription
  data, status_code, headers = api_instance.get_watchlist_subscription_with_http_info(subscription_id, customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WatchlistSubscription>
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->get_watchlist_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Watchlist monitoring subscription ID |  |
| **customer_id** | **String** | The customer&#39;s unique identifier |  |

### Return type

[**WatchlistSubscription**](WatchlistSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_watchlist_alerts

> <WatchlistAlertList> list_watchlist_alerts(customer_id)

List watchlist monitoring alerts for a customer

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WatchlistDeprecatedApi.new
customer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The customer's unique identifier

begin
  # List watchlist monitoring alerts for a customer
  result = api_instance.list_watchlist_alerts(customer_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->list_watchlist_alerts: #{e}"
end
```

#### Using the list_watchlist_alerts_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WatchlistAlertList>, Integer, Hash)> list_watchlist_alerts_with_http_info(customer_id)

```ruby
begin
  # List watchlist monitoring alerts for a customer
  data, status_code, headers = api_instance.list_watchlist_alerts_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WatchlistAlertList>
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->list_watchlist_alerts_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The customer&#39;s unique identifier |  |

### Return type

[**WatchlistAlertList**](WatchlistAlertList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## list_watchlist_subscriptions

> <WatchlistSubscriptionList> list_watchlist_subscriptions(customer_id)

List watchlist monitoring subscriptions for a customer

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WatchlistDeprecatedApi.new
customer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The customer's unique identifier

begin
  # List watchlist monitoring subscriptions for a customer
  result = api_instance.list_watchlist_subscriptions(customer_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->list_watchlist_subscriptions: #{e}"
end
```

#### Using the list_watchlist_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WatchlistSubscriptionList>, Integer, Hash)> list_watchlist_subscriptions_with_http_info(customer_id)

```ruby
begin
  # List watchlist monitoring subscriptions for a customer
  data, status_code, headers = api_instance.list_watchlist_subscriptions_with_http_info(customer_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WatchlistSubscriptionList>
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->list_watchlist_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The customer&#39;s unique identifier |  |

### Return type

[**WatchlistSubscriptionList**](WatchlistSubscriptionList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## suppress_watchlist_entity_alert

> suppress_watchlist_entity_alert(customer_id, watchlist_suppress, opts)

Suppress entity alert

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WatchlistDeprecatedApi.new
customer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The customer's unique identifier
watchlist_suppress = Synctera::WatchlistSuppress.new({provider_subject_id: 'provider_subject_id_example', provider_subscription_id: 'provider_subscription_id_example', status: 'SUPPRESS'}) # WatchlistSuppress | A watchlist suppression object
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
}

begin
  # Suppress entity alert
  api_instance.suppress_watchlist_entity_alert(customer_id, watchlist_suppress, opts)
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->suppress_watchlist_entity_alert: #{e}"
end
```

#### Using the suppress_watchlist_entity_alert_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> suppress_watchlist_entity_alert_with_http_info(customer_id, watchlist_suppress, opts)

```ruby
begin
  # Suppress entity alert
  data, status_code, headers = api_instance.suppress_watchlist_entity_alert_with_http_info(customer_id, watchlist_suppress, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->suppress_watchlist_entity_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The customer&#39;s unique identifier |  |
| **watchlist_suppress** | [**WatchlistSuppress**](WatchlistSuppress.md) | A watchlist suppression object |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json


## update_watchlist_alert

> update_watchlist_alert(alert_id, customer_id, watchlist_alert)

Update watchlist alert

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WatchlistDeprecatedApi.new
alert_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Unique identifier for this watchlist alert.
customer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The customer's unique identifier
watchlist_alert = Synctera::WatchlistAlert.new({status: 'ACTIVE'}) # WatchlistAlert | A watchlist body

begin
  # Update watchlist alert
  api_instance.update_watchlist_alert(alert_id, customer_id, watchlist_alert)
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->update_watchlist_alert: #{e}"
end
```

#### Using the update_watchlist_alert_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_watchlist_alert_with_http_info(alert_id, customer_id, watchlist_alert)

```ruby
begin
  # Update watchlist alert
  data, status_code, headers = api_instance.update_watchlist_alert_with_http_info(alert_id, customer_id, watchlist_alert)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->update_watchlist_alert_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **alert_id** | **String** | Unique identifier for this watchlist alert. |  |
| **customer_id** | **String** | The customer&#39;s unique identifier |  |
| **watchlist_alert** | [**WatchlistAlert**](WatchlistAlert.md) | A watchlist body |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/problem+json


## update_watchlist_subscription

> <WatchlistSubscription> update_watchlist_subscription(subscription_id, customer_id, watchlist_subscription)

Update watchlist monitoring subscription

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WatchlistDeprecatedApi.new
subscription_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Watchlist monitoring subscription ID
customer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The customer's unique identifier
watchlist_subscription = Synctera::WatchlistSubscription.new({customer_consent: false}) # WatchlistSubscription | Watchlist monitoring subscription to be updated. The only field that matters is `status`; all other fields are ignored. 

begin
  # Update watchlist monitoring subscription
  result = api_instance.update_watchlist_subscription(subscription_id, customer_id, watchlist_subscription)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->update_watchlist_subscription: #{e}"
end
```

#### Using the update_watchlist_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WatchlistSubscription>, Integer, Hash)> update_watchlist_subscription_with_http_info(subscription_id, customer_id, watchlist_subscription)

```ruby
begin
  # Update watchlist monitoring subscription
  data, status_code, headers = api_instance.update_watchlist_subscription_with_http_info(subscription_id, customer_id, watchlist_subscription)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WatchlistSubscription>
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->update_watchlist_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscription_id** | **String** | Watchlist monitoring subscription ID |  |
| **customer_id** | **String** | The customer&#39;s unique identifier |  |
| **watchlist_subscription** | [**WatchlistSubscription**](WatchlistSubscription.md) | Watchlist monitoring subscription to be updated. The only field that matters is &#x60;status&#x60;; all other fields are ignored.  |  |

### Return type

[**WatchlistSubscription**](WatchlistSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json


## watchlist_subscribe

> <WatchlistSubscription> watchlist_subscribe(customer_id, watchlist_subscription, opts)

Subscribe a customer to watchlist monitoring

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::WatchlistDeprecatedApi.new
customer_id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The customer's unique identifier
watchlist_subscription = Synctera::WatchlistSubscription.new({customer_consent: false}) # WatchlistSubscription | A watchlist subscription
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
}

begin
  # Subscribe a customer to watchlist monitoring
  result = api_instance.watchlist_subscribe(customer_id, watchlist_subscription, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->watchlist_subscribe: #{e}"
end
```

#### Using the watchlist_subscribe_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WatchlistSubscription>, Integer, Hash)> watchlist_subscribe_with_http_info(customer_id, watchlist_subscription, opts)

```ruby
begin
  # Subscribe a customer to watchlist monitoring
  data, status_code, headers = api_instance.watchlist_subscribe_with_http_info(customer_id, watchlist_subscription, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WatchlistSubscription>
rescue Synctera::ApiError => e
  puts "Error when calling WatchlistDeprecatedApi->watchlist_subscribe_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | **String** | The customer&#39;s unique identifier |  |
| **watchlist_subscription** | [**WatchlistSubscription**](WatchlistSubscription.md) | A watchlist subscription |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |

### Return type

[**WatchlistSubscription**](WatchlistSubscription.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, application/problem+json

