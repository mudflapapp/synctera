# Synctera::WatchlistDeprecatedApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**list_watchlist_subscriptions**](WatchlistDeprecatedApi.md#list_watchlist_subscriptions) | **GET** /customers/{customer_id}/watchlists/subscriptions | List watchlist monitoring subscriptions for a customer |
| [**update_watchlist_alert**](WatchlistDeprecatedApi.md#update_watchlist_alert) | **PUT** /customers/{customer_id}/watchlists/alerts/{alert_id} | Update watchlist alert |
| [**update_watchlist_subscription**](WatchlistDeprecatedApi.md#update_watchlist_subscription) | **PUT** /customers/{customer_id}/watchlists/subscriptions/{subscription_id} | Update watchlist monitoring subscription |


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

