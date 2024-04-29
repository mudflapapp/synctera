# Synctera::RewardsBetaApi

All URIs are relative to *https://api.synctera.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_reward**](RewardsBetaApi.md#create_reward) | **POST** /rewards | Create a reward |
| [**create_reward_template**](RewardsBetaApi.md#create_reward_template) | **POST** /reward_templates | Create a reward template |
| [**get_reward**](RewardsBetaApi.md#get_reward) | **GET** /rewards/{reward_id} | Get Reward |
| [**get_reward_template**](RewardsBetaApi.md#get_reward_template) | **GET** /reward_templates/{reward_template_id} | Get a Reward template |
| [**list_rewards**](RewardsBetaApi.md#list_rewards) | **GET** /rewards | List rewards |
| [**list_rewardtemplates**](RewardsBetaApi.md#list_rewardtemplates) | **GET** /reward_templates | List reward templates |
| [**patch_reward_template**](RewardsBetaApi.md#patch_reward_template) | **PATCH** /reward_templates/{reward_template_id} | Patch Reward Template |
| [**reverse_reward**](RewardsBetaApi.md#reverse_reward) | **POST** /rewards/{reward_id}/reverse | Reverse a reward |


## create_reward

> <RewardResponse> create_reward(reward_post)

Create a reward

Create a reward  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RewardsBetaApi.new
reward_post = Synctera::RewardPost.new({account_id: '12943c51-e4ff-4e57-9558-08cab6b96364', template_id: '64943c51-e4ff-4e57-9558-08cab6b96352'}) # RewardPost | Reward to create

begin
  # Create a reward
  result = api_instance.create_reward(reward_post)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->create_reward: #{e}"
end
```

#### Using the create_reward_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardResponse>, Integer, Hash)> create_reward_with_http_info(reward_post)

```ruby
begin
  # Create a reward
  data, status_code, headers = api_instance.create_reward_with_http_info(reward_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardResponse>
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->create_reward_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_post** | [**RewardPost**](RewardPost.md) | Reward to create |  |

### Return type

[**RewardResponse**](RewardResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_reward_template

> <RewardTemplateResponse> create_reward_template(reward_template_post)

Create a reward template

> 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced.  Create a reward template A reward template defines the properties of a reward that a fintech wishes to use to easily charge their customers. The fintech can then create reward templates for different amounts or categories of rewards that represent different instances of services or charges 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RewardsBetaApi.new
reward_template_post = Synctera::RewardTemplatePost.new({currency: 'USD', description: 'Referral Reward', internal_account_id: '42943c51-e4ff-4e57-9558-08cab6b963c8', subtype: Synctera::RewardSubtypePost::ACCOUNT_OPENING_BONUS}) # RewardTemplatePost | Reward to create  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

begin
  # Create a reward template
  result = api_instance.create_reward_template(reward_template_post)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->create_reward_template: #{e}"
end
```

#### Using the create_reward_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardTemplateResponse>, Integer, Hash)> create_reward_template_with_http_info(reward_template_post)

```ruby
begin
  # Create a reward template
  data, status_code, headers = api_instance.create_reward_template_with_http_info(reward_template_post)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardTemplateResponse>
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->create_reward_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_template_post** | [**RewardTemplatePost**](RewardTemplatePost.md) | Reward to create  &gt; 🚧 Beta &gt; This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced.  |  |

### Return type

[**RewardTemplateResponse**](RewardTemplateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_reward

> <RewardResponse> get_reward(reward_id)

Get Reward

Get a reward by ID.  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RewardsBetaApi.new
reward_id = '64438afd-fa20-4010-a573-2bbdca77cdb6' # String | The unique identifier of a reward

begin
  # Get Reward
  result = api_instance.get_reward(reward_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->get_reward: #{e}"
end
```

#### Using the get_reward_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardResponse>, Integer, Hash)> get_reward_with_http_info(reward_id)

```ruby
begin
  # Get Reward
  data, status_code, headers = api_instance.get_reward_with_http_info(reward_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardResponse>
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->get_reward_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | The unique identifier of a reward |  |

### Return type

[**RewardResponse**](RewardResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_reward_template

> <RewardTemplateResponse> get_reward_template(reward_template_id)

Get a Reward template

Get a reward template by ID.  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RewardsBetaApi.new
reward_template_id = '64438afd-fa20-4010-a573-2bbdca77cdb6' # String | The unique identifier of a reward template

begin
  # Get a Reward template
  result = api_instance.get_reward_template(reward_template_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->get_reward_template: #{e}"
end
```

#### Using the get_reward_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardTemplateResponse>, Integer, Hash)> get_reward_template_with_http_info(reward_template_id)

```ruby
begin
  # Get a Reward template
  data, status_code, headers = api_instance.get_reward_template_with_http_info(reward_template_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardTemplateResponse>
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->get_reward_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_template_id** | **String** | The unique identifier of a reward template |  |

### Return type

[**RewardTemplateResponse**](RewardTemplateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rewards

> <RewardList> list_rewards(opts)

List rewards

Get paginated list of rewards  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RewardsBetaApi.new
opts = {
  start_time: Time.parse('2010-05-06T12:23:34.321Z'), # Time | Return rewards created at or after this time.
  description: 'Premium Customer ATM Reward', # String | Return rewards with the specified description.
  id: ['inner_example'], # Array<String> | Return the reward with the specified id. Multiple IDs can be provided as a comma-separated list. 
  end_time: Time.parse('2010-05-06T12:23:34.321Z'), # Time | Return rewards created before this time.
  page_token: 'a8937a0d', # String | 
  reward_template_id: ['inner_example'], # Array<String> | Return rewards resources with a reward template of the specified id. Multiple IDs can be provided as a comma-separated list. 
  subtype: Synctera::RewardSubtype::ACCOUNT_OPENING_BONUS, # RewardSubtype | 
  limit: 100, # Integer | 
  account_id: ['inner_example'] # Array<String> | Return rewards for the specified account.
}

begin
  # List rewards
  result = api_instance.list_rewards(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->list_rewards: #{e}"
end
```

#### Using the list_rewards_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardList>, Integer, Hash)> list_rewards_with_http_info(opts)

```ruby
begin
  # List rewards
  data, status_code, headers = api_instance.list_rewards_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardList>
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->list_rewards_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start_time** | **Time** | Return rewards created at or after this time. | [optional] |
| **description** | **String** | Return rewards with the specified description. | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Return the reward with the specified id. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **end_time** | **Time** | Return rewards created before this time. | [optional] |
| **page_token** | **String** |  | [optional] |
| **reward_template_id** | [**Array&lt;String&gt;**](String.md) | Return rewards resources with a reward template of the specified id. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **subtype** | [**RewardSubtype**](.md) |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **account_id** | [**Array&lt;String&gt;**](String.md) | Return rewards for the specified account. | [optional] |

### Return type

[**RewardList**](RewardList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_rewardtemplates

> <RewardTemplateList> list_rewardtemplates(opts)

List reward templates

> 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced.  Get paginated list of reward templates 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RewardsBetaApi.new
opts = {
  sort_by: ['amount:asc'], # Array<String> | Specifies the sort order for the returned reward templates. 
  description: 'Referral Reward', # String | Return reward templates with the specified description. A * character can be used as a wildcard to match any characters.
  page_token: 'a8937a0d', # String | 
  id: ['inner_example'], # Array<String> | Return reward templates with the specified id. Multiple IDs can be provided as a comma-separated list. 
  is_enabled: true, # Boolean | Return reward templates with the specified is_enabled flag.
  limit: 100, # Integer | 
  subtype: Synctera::RewardSubtype::ACCOUNT_OPENING_BONUS # RewardSubtype | 
}

begin
  # List reward templates
  result = api_instance.list_rewardtemplates(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->list_rewardtemplates: #{e}"
end
```

#### Using the list_rewardtemplates_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardTemplateList>, Integer, Hash)> list_rewardtemplates_with_http_info(opts)

```ruby
begin
  # List reward templates
  data, status_code, headers = api_instance.list_rewardtemplates_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardTemplateList>
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->list_rewardtemplates_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **sort_by** | [**Array&lt;String&gt;**](String.md) | Specifies the sort order for the returned reward templates.  | [optional] |
| **description** | **String** | Return reward templates with the specified description. A * character can be used as a wildcard to match any characters. | [optional] |
| **page_token** | **String** |  | [optional] |
| **id** | [**Array&lt;String&gt;**](String.md) | Return reward templates with the specified id. Multiple IDs can be provided as a comma-separated list.  | [optional] |
| **is_enabled** | **Boolean** | Return reward templates with the specified is_enabled flag. | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **subtype** | [**RewardSubtype**](.md) |  | [optional] |

### Return type

[**RewardTemplateList**](RewardTemplateList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_reward_template

> <RewardTemplateResponse> patch_reward_template(reward_template_id, reward_template_patch, opts)

Patch Reward Template

Update a reward template by ID.  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RewardsBetaApi.new
reward_template_id = '64438afd-fa20-4010-a573-2bbdca77cdb6' # String | The unique identifier of a reward template
reward_template_patch = Synctera::RewardTemplatePatch.new # RewardTemplatePatch | 
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
}

begin
  # Patch Reward Template
  result = api_instance.patch_reward_template(reward_template_id, reward_template_patch, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->patch_reward_template: #{e}"
end
```

#### Using the patch_reward_template_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardTemplateResponse>, Integer, Hash)> patch_reward_template_with_http_info(reward_template_id, reward_template_patch, opts)

```ruby
begin
  # Patch Reward Template
  data, status_code, headers = api_instance.patch_reward_template_with_http_info(reward_template_id, reward_template_patch, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardTemplateResponse>
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->patch_reward_template_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_template_id** | **String** | The unique identifier of a reward template |  |
| **reward_template_patch** | [**RewardTemplatePatch**](RewardTemplatePatch.md) |  |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |

### Return type

[**RewardTemplateResponse**](RewardTemplateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## reverse_reward

> <RewardResponse> reverse_reward(reward_id, reward_reverse_post, opts)

Reverse a reward

Reverse the reward by creating a reversal transaction.  > 🚧 Beta > This is a Beta endpoint. Feedback from the community is welcome. Any breaking changes to this endpoint will be pre-announced. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::RewardsBetaApi.new
reward_id = '64438afd-fa20-4010-a573-2bbdca77cdb6' # String | The unique identifier of a reward
reward_reverse_post = Synctera::RewardReversePost.new({note: 'Charge was made in error'}) # RewardReversePost | Reward reversal properties
opts = {
  idempotency_key: '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry.
}

begin
  # Reverse a reward
  result = api_instance.reverse_reward(reward_id, reward_reverse_post, opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->reverse_reward: #{e}"
end
```

#### Using the reverse_reward_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RewardResponse>, Integer, Hash)> reverse_reward_with_http_info(reward_id, reward_reverse_post, opts)

```ruby
begin
  # Reverse a reward
  data, status_code, headers = api_instance.reverse_reward_with_http_info(reward_id, reward_reverse_post, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RewardResponse>
rescue Synctera::ApiError => e
  puts "Error when calling RewardsBetaApi->reverse_reward_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reward_id** | **String** | The unique identifier of a reward |  |
| **reward_reverse_post** | [**RewardReversePost**](RewardReversePost.md) | Reward reversal properties |  |
| **idempotency_key** | **String** | An idempotency key is an arbitrary unique value generated by client to detect subsequent retries of the same request. It is recommended that a UUID or a similar random identifier be used as an idempotency key. A different key must be used for each request, unless it is a retry. | [optional] |

### Return type

[**RewardResponse**](RewardResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

