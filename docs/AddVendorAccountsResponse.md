# Synctera::AddVendorAccountsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **added_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) |  |  |
| **deleted_accounts** | [**Array&lt;ExternalAccount&gt;**](ExternalAccount.md) |  | [optional] |
| **failed_accounts** | [**Array&lt;AddVendorAccountFailure&gt;**](AddVendorAccountFailure.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::AddVendorAccountsResponse.new(
  added_accounts: null,
  deleted_accounts: null,
  failed_accounts: null
)
```

