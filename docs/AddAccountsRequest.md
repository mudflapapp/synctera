# Synctera::AddAccountsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_identifiers** | [**AddAccountsRequestAccountIdentifiers**](AddAccountsRequestAccountIdentifiers.md) |  |  |
| **account_owner_names** | **Array&lt;String&gt;** | The names of the account owners. |  |
| **business_id** | **String** | The identifier for the business customer associated with this external account. Exactly one of &#x60;business_id&#x60; or &#x60;customer_id&#x60; must be specified.  | [optional] |
| **currency** | **String** | ISO 4217 alphabetic currency code | [optional] |
| **customer_id** | **String** | The identifier for the personal customer associated with this external account. Exactly one of &#x60;customer_id&#x60; or &#x60;business_id&#x60; must be specified.  | [optional] |
| **customer_type** | [**ExtAccountCustomerType**](ExtAccountCustomerType.md) |  |  |
| **metadata** | **Object** | User-supplied metadata | [optional] |
| **nickname** | **String** | A user-meaningful name for the account | [optional] |
| **routing_identifiers** | [**AddAccountsRequestRoutingIdentifiers**](AddAccountsRequestRoutingIdentifiers.md) |  |  |
| **type** | **String** | The type of the account |  |
| **vendor_account_id** | **String** | The ID of the vendor account, will be empty for MANUAL vendor | [optional] |
| **verification** | [**AccountVerification**](AccountVerification.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AddAccountsRequest.new(
  account_identifiers: null,
  account_owner_names: null,
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  currency: USD,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  customer_type: null,
  metadata: null,
  nickname: Vacation savings,
  routing_identifiers: null,
  type: null,
  vendor_account_id: blgvvBlXw3cq5GMPwqB6s6q4dLKB9WcVqGDGo,
  verification: null
)
```

