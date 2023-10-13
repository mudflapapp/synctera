# Synctera::SandboxWipeApi

All URIs are relative to *https://api-sandbox.synctera.com/v0*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**wipe_workspace**](SandboxWipeApi.md#wipe_workspace) | **POST** /wipe | Delete data |


## wipe_workspace

> wipe_workspace

Delete data

Delete the customer and account related data, leaving other configuration data intact. This enables use cases such as bulk data deletion between tests. Data associated with below resources will be deleted:   - Accounts   - Account applications   - ACH   - Businesses   - Cards   - Card images   - Cases   - Customers   - Disclosures   - External Accounts   - Internal Accounts   - Payment schedules and history   - Persons   - RDC   - Relationships   - Transactions (including for Internal Accounts)   - Verifications  Data associated with below resources will be retained:   - Account Templates   - API Keys   - Bank/Partner data   - Card product   - Disclosure document records   - Egress config   - Groups   - PII contract with vault   - Roles   - Users   - Webhooks 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::SandboxWipeApi.new

begin
  # Delete data
  api_instance.wipe_workspace
rescue Synctera::ApiError => e
  puts "Error when calling SandboxWipeApi->wipe_workspace: #{e}"
end
```

#### Using the wipe_workspace_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> wipe_workspace_with_http_info

```ruby
begin
  # Delete data
  data, status_code, headers = api_instance.wipe_workspace_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Synctera::ApiError => e
  puts "Error when calling SandboxWipeApi->wipe_workspace_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json

