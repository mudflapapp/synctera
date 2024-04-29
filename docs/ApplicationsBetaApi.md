# Synctera::ApplicationsBetaApi

All URIs are relative to *https://api.synctera.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_application**](ApplicationsBetaApi.md#create_application) | **POST** /applications | Create an application |
| [**get_application**](ApplicationsBetaApi.md#get_application) | **GET** /applications/{application_id} | Get an application |
| [**list_applications**](ApplicationsBetaApi.md#list_applications) | **GET** /applications | List applications |
| [**patch_application**](ApplicationsBetaApi.md#patch_application) | **PATCH** /applications/{application_id} | Modify an application |


## create_application

> <ApplicationResponse> create_application(application)

Create an application

> 🚧 Beta > This is an Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Submit a record of application details for an account. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::ApplicationsBetaApi.new
application = Synctera::CreditApplication.new({account_type: Synctera::ApplicationAccountType::CHARGE_SECURED, applicants: [Synctera::Applicant.new({is_primary: false})], purpose: Synctera::CreditApplicationPurpose::ACCOUNT_OPENING, status: Synctera::CreditApplicationStatus::CREDIT_ACCEPTED_BY_CUSTOMER, type: Synctera::ApplicationType::CREDIT}) # Application | Application model.

begin
  # Create an application
  result = api_instance.create_application(application)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling ApplicationsBetaApi->create_application: #{e}"
end
```

#### Using the create_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationResponse>, Integer, Hash)> create_application_with_http_info(application)

```ruby
begin
  # Create an application
  data, status_code, headers = api_instance.create_application_with_http_info(application)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationResponse>
rescue Synctera::ApiError => e
  puts "Error when calling ApplicationsBetaApi->create_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application** | [**Application**](Application.md) | Application model. |  |

### Return type

[**ApplicationResponse**](ApplicationResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_application

> <ApplicationResponse> get_application(application_id)

Get an application

> 🚧 Beta > This is an Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Get an application's details. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::ApplicationsBetaApi.new
application_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Unique identifier for the application.

begin
  # Get an application
  result = api_instance.get_application(application_id)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling ApplicationsBetaApi->get_application: #{e}"
end
```

#### Using the get_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationResponse>, Integer, Hash)> get_application_with_http_info(application_id)

```ruby
begin
  # Get an application
  data, status_code, headers = api_instance.get_application_with_http_info(application_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationResponse>
rescue Synctera::ApiError => e
  puts "Error when calling ApplicationsBetaApi->get_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_id** | **String** | Unique identifier for the application. |  |

### Return type

[**ApplicationResponse**](ApplicationResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_applications

> <ApplicationList> list_applications(opts)

List applications

> 🚧 Beta > This is an Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  List records of applications made for accounts. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::ApplicationsBetaApi.new
opts = {
  customer_id: ['7d943c51-e4ff-4e57-9558-08cab6b963c7'], # Array<String> | A list of customer unique identifiers, with a comma separating any values.
  type: Synctera::ApplicationType::CREDIT, # ApplicationType | Type of application 
  page_token: 'a8937a0d', # String | 
  limit: 100, # Integer | 
  sort_by: ['creation_time:asc'], # Array<String> | Specifies the sort order for the returned applications. 
  status: Synctera::AllApplicationStatus::APPROVED, # AllApplicationStatus | Application status values for all types of applications 
  business_id: ['7d943c51-e4ff-4e57-9558-08cab6b963c7'] # Array<String> | A list of business unique identifiers, with a comma separating any values. Returns applications that are linked to the specified Business IDs.
}

begin
  # List applications
  result = api_instance.list_applications(opts)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling ApplicationsBetaApi->list_applications: #{e}"
end
```

#### Using the list_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationList>, Integer, Hash)> list_applications_with_http_info(opts)

```ruby
begin
  # List applications
  data, status_code, headers = api_instance.list_applications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationList>
rescue Synctera::ApiError => e
  puts "Error when calling ApplicationsBetaApi->list_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_id** | [**Array&lt;String&gt;**](String.md) | A list of customer unique identifiers, with a comma separating any values. | [optional] |
| **type** | [**ApplicationType**](.md) | Type of application  | [optional] |
| **page_token** | **String** |  | [optional] |
| **limit** | **Integer** |  | [optional][default to 100] |
| **sort_by** | [**Array&lt;String&gt;**](String.md) | Specifies the sort order for the returned applications.  | [optional] |
| **status** | [**AllApplicationStatus**](.md) | Application status values for all types of applications  | [optional] |
| **business_id** | [**Array&lt;String&gt;**](String.md) | A list of business unique identifiers, with a comma separating any values. Returns applications that are linked to the specified Business IDs. | [optional] |

### Return type

[**ApplicationList**](ApplicationList.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## patch_application

> <ApplicationResponse> patch_application(application_id, application_patch)

Modify an application

> 🚧 Beta > This is an Beta endpoint. Feedback from the community is welcome. We may make breaking changes to this endpoint.  Modify an existing application for an account. 

### Examples

```ruby
require 'time'
require 'synctera'
# setup authorization
Synctera.configure do |config|
  # Configure Bearer authorization (api_key): bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = Synctera::ApplicationsBetaApi.new
application_id = '7d943c51-e4ff-4e57-9558-08cab6b963c7' # String | Unique identifier for the application.
application_patch = Synctera::ApplicationPatch.new # ApplicationPatch | Application fields to be patched.

begin
  # Modify an application
  result = api_instance.patch_application(application_id, application_patch)
  p result
rescue Synctera::ApiError => e
  puts "Error when calling ApplicationsBetaApi->patch_application: #{e}"
end
```

#### Using the patch_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationResponse>, Integer, Hash)> patch_application_with_http_info(application_id, application_patch)

```ruby
begin
  # Modify an application
  data, status_code, headers = api_instance.patch_application_with_http_info(application_id, application_patch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationResponse>
rescue Synctera::ApiError => e
  puts "Error when calling ApplicationsBetaApi->patch_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_id** | **String** | Unique identifier for the application. |  |
| **application_patch** | [**ApplicationPatch**](ApplicationPatch.md) | Application fields to be patched. |  |

### Return type

[**ApplicationResponse**](ApplicationResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

