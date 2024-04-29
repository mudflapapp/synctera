# Synctera::BaseTemplateFields

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | [**AccountType**](AccountType.md) |  |  |
| **bank_account_id** | **String** | The bank account ID for this account. This is a unique identifier for the bank side account that this Synctera account belongs to. This field can be auto filled if only one bank account of the appropriate type exist for the tenant of concern.  | [optional] |
| **bank_country** | **String** | Bank country of the account. ISO 3166-1 Alpha-2 or Alpha-3 country code. |  |
| **currency** | **String** | Account currency. ISO 4217 alphabetic currency code |  |

## Example

```ruby
require 'synctera'

instance = Synctera::BaseTemplateFields.new(
  account_type: null,
  bank_account_id: null,
  bank_country: US,
  currency: USD
)
```

