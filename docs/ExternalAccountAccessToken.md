# Synctera::ExternalAccountAccessToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | The identifier for the business customer associated with this external account. Exactly one of &#x60;business_id&#x60; or &#x60;customer_id&#x60; must be specified.  | [optional] |
| **customer_id** | **String** | The identifier for the personal customer associated with this external account. Exactly one of &#x60;customer_id&#x60; or &#x60;business_id&#x60; must be specified.  | [optional] |
| **request_id** | **String** | A unique identifier for the request, which can be used for troubleshooting | [optional][readonly] |
| **vendor_access_token** | **String** | The access token associated with the Item data is being requested for. | [optional][readonly] |
| **vendor_customer_id** | **String** | An alias for &#x60;customer_id&#x60; (deprecated). | [optional] |
| **vendor_institution_id** | **String** | The ID of the institution the access token is requested for  |  |
| **vendor_public_token** | **String** | The user&#39;s public token obtained from successful link login.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalAccountAccessToken.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: null,
  request_id: null,
  vendor_access_token: null,
  vendor_customer_id: null,
  vendor_institution_id: null,
  vendor_public_token: null
)
```

