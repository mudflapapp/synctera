# Synctera::TemplateFieldsChargeUnsecured

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | [**AccountType**](AccountType.md) |  |  |
| **bank_country** | **String** | Bank country of the account. ISO 3166-1 Alpha-2 or Alpha-3 country code. |  |
| **currency** | **String** | Account currency. ISO 4217 alphabetic currency code |  |
| **grace_period** | **Integer** | The number of days past the billing period to allow for payment before it is considered due. This directly infers the due date for a payment. The default will be set to 21 days.  | [optional][default to 21] |
| **minimum_payment** | [**MinimumPaymentFull**](MinimumPaymentFull.md) |  |  |
| **spend_control_ids** | **Array&lt;String&gt;** | List of spend control IDs to control spending for the account | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::TemplateFieldsChargeUnsecured.new(
  account_type: null,
  bank_country: US,
  currency: USD,
  grace_period: null,
  minimum_payment: null,
  spend_control_ids: null
)
```

