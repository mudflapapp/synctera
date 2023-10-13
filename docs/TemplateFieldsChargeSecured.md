# Synctera::TemplateFieldsChargeSecured

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | [**AccountType**](AccountType.md) |  |  |
| **bank_country** | **String** | Bank country of the account. ISO 3166-1 Alpha-2 or Alpha-3 country code. |  |
| **currency** | **String** | Account currency. ISO 4217 alphabetic currency code |  |
| **auto_payment_period** | **Integer** | The number of days past the billing period to initiate an auto payment.  Only applicable for accounts with type &#x60;CHARGE_SECURED&#x60;, where the account holder has opted in for auto payment functionality. This value must be lower than or equal the &#x60;grace_period&#x60; setting on the account. If this value is 0, the auto payment will happen on the same day as the statement is generated. Auto payment only occurs if regular payments are not received on time.  | [optional] |
| **grace_period** | **Integer** | The number of days past the billing period to allow for payment before it is considered due. This directly infers the due date for a payment. The default will be set to 21 days.  | [optional][default to 21] |
| **minimum_payment** | [**MinimumPaymentFull**](MinimumPaymentFull.md) |  |  |
| **spend_control_ids** | **Array&lt;String&gt;** | List of spend control IDs to control spending for the account | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::TemplateFieldsChargeSecured.new(
  account_type: null,
  bank_country: US,
  currency: USD,
  auto_payment_period: 20,
  grace_period: null,
  minimum_payment: null,
  spend_control_ids: null
)
```

