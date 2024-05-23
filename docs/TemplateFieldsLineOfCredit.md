# Synctera::TemplateFieldsLineOfCredit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | [**AccountType**](AccountType.md) |  |  |
| **bank_account_id** | **String** | The bank account ID for this account. This is a unique identifier for the bank side account that this Synctera account belongs to. This field can be auto filled if only one bank account of the appropriate type exist for the tenant of concern.  | [optional] |
| **bank_country** | **String** | Bank country of the account. ISO 3166-1 Alpha-2 or Alpha-3 country code. |  |
| **currency** | **String** | Account currency. ISO 4217 alphabetic currency code |  |
| **grace_period** | **Integer** | The number of days past the billing period to allow for payment before it is considered due. This directly infers the due date for a payment. The default will be set to 21 days.  | [optional][default to 21] |
| **interest_product_id** | **String** | An interest account product that the current account associates with. The account product must have its calculation_method set to COMPOUNDED_DAILY.  | [optional] |
| **minimum_payment** | [**MinimumPaymentPartial**](MinimumPaymentPartial.md) |  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::TemplateFieldsLineOfCredit.new(
  account_type: null,
  bank_account_id: null,
  bank_country: US,
  currency: USD,
  grace_period: null,
  interest_product_id: null,
  minimum_payment: null
)
```

