# Synctera::ExternalAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_identifiers** | [**AccountIdentifiers**](AccountIdentifiers.md) |  |  |
| **account_owner_names** | **Array&lt;String&gt;** | The names of the account owners. Values may be masked, in which case the array will be empty.  |  |
| **business_id** | **String** | The identifier for the business customer associated with this external account. Exactly one of &#x60;business_id&#x60; or &#x60;customer_id&#x60; will be returned.  | [optional] |
| **creation_time** | **Time** |  |  |
| **currency** | **String** | ISO 4217 alphabetic currency code | [optional] |
| **customer_id** | **String** | The identifier for the personal customer associated with this external account. Exactly one of &#x60;customer_id&#x60; or &#x60;business_id&#x60; will be returned.  | [optional] |
| **deletion_time** | **Time** |  | [optional] |
| **id** | **String** | External account unique identifier | [readonly] |
| **last_updated_time** | **Time** |  |  |
| **metadata** | **Object** | User-supplied JSON format metadata. | [optional] |
| **name** | **String** | The official name of the account | [optional] |
| **nickname** | **String** | A user-meaningful name for the account | [optional] |
| **routing_identifiers** | [**AccountRouting**](AccountRouting.md) |  |  |
| **status** | **String** | The current state of the account |  |
| **type** | **String** | The type of the account |  |
| **vendor_data** | [**ExternalAccountVendorData**](ExternalAccountVendorData.md) |  | [optional] |
| **vendor_info** | [**VendorInfo**](VendorInfo.md) |  | [optional] |
| **verification** | [**AccountVerification**](AccountVerification.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::ExternalAccount.new(
  account_identifiers: null,
  account_owner_names: null,
  business_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  creation_time: 2010-05-06T12:23:34.321Z,
  currency: USD,
  customer_id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  deletion_time: 2010-05-06T12:23:34.321Z,
  id: 7d943c51-e4ff-4e57-9558-08cab6b963c7,
  last_updated_time: 2010-05-06T12:23:34.321Z,
  metadata: null,
  name: Plaid Checking,
  nickname: Vacation savings,
  routing_identifiers: null,
  status: null,
  type: null,
  vendor_data: null,
  vendor_info: null,
  verification: null
)
```

