# Synctera::InternalAccountPatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | [**InternalAccountType**](InternalAccountType.md) |  | [optional] |
| **bank_account_id** | **String** | The ID of the bank account associated with this internal account. It will be auto-filled if the account type has only one matching bank account in the system.  | [optional] |
| **description** | **String** | A user provided description for the current account | [optional] |
| **purpose** | [**InternalAccountPurpose**](InternalAccountPurpose.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::InternalAccountPatch.new(
  account_type: null,
  bank_account_id: null,
  description: null,
  purpose: null
)
```

