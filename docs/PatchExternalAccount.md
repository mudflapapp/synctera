# Synctera::PatchExternalAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_identifiers** | [**PatchAccountsRequestAccountIdentifiers**](PatchAccountsRequestAccountIdentifiers.md) |  | [optional] |
| **account_owner_names** | **Array&lt;String&gt;** | The names of the account owners. | [optional] |
| **currency** | **String** | The currency of the account in ISO 4217 format | [optional] |
| **nickname** | **String** | A user-meaningful name for the account | [optional] |
| **routing_identifiers** | [**PatchAccountsRequestRoutingIdentifiers**](PatchAccountsRequestRoutingIdentifiers.md) |  | [optional] |
| **type** | **String** | The type of the account | [optional] |
| **verification** | [**AccountVerification**](AccountVerification.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PatchExternalAccount.new(
  account_identifiers: null,
  account_owner_names: null,
  currency: USD,
  nickname: Vacation savings,
  routing_identifiers: null,
  type: null,
  verification: null
)
```

