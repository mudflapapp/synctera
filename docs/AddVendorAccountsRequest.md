# Synctera::AddVendorAccountsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | The identifier for the business customer associated with this external account. Exactly one of &#x60;business_id&#x60; or &#x60;customer_id&#x60; must be specified.  | [optional] |
| **customer_id** | **String** | The identifier for the personal customer associated with this external account. Exactly one of &#x60;customer_id&#x60; or &#x60;business_id&#x60; must be specified.  | [optional] |
| **customer_type** | [**ExtAccountCustomerType**](ExtAccountCustomerType.md) |  |  |
| **vendor** | [**ExternalAccountVendorValues**](ExternalAccountVendorValues.md) |  |  |
| **vendor_access_token** | **String** | The token provided to link external accounts. For Plaid, this is their &#x60;access_token&#x60;.  | [optional] |
| **vendor_account_ids** | **Array&lt;String&gt;** | The list of vendor account IDs that the customer chose to link. For Plaid, these are &#x60;account_id&#x60;s.  | [optional] |
| **vendor_customer_id** | **String** | The identifier provided by the vendor for the customer associated with this external account.  | [optional] |
| **verify_owner** | **Boolean** | If true, Synctera will attempt to verify that the external account owner is the same as the customer by comparing external account data to customer data. At least 2 of the following fields must match: name, phone number, email, address. Verification is disabled by default.  | [optional][default to false] |

## Example

```ruby
require 'synctera'

instance = Synctera::AddVendorAccountsRequest.new(
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_type: null,
  vendor: null,
  vendor_access_token: access-sandbox-de3ce8ef-33f8-452c-a685-8671031fc0f6,
  vendor_account_ids: null,
  vendor_customer_id: 123,
  verify_owner: null
)
```

