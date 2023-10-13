# Synctera::TemplateFieldsGenericResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | [**AccountType**](AccountType.md) |  |  |
| **auto_payment_period** | **Integer** | The number of days past the billing period to initiate an auto payment.  Only applicable for accounts with type &#x60;CHARGE_SECURED&#x60;, where the account holder has opted in for auto payment functionality. This value must be lower than or equal the &#x60;grace_period&#x60; setting on the account. If this value is 0, the  auto payment will happen on the same day as the statement is generated.  Auto payment only occurs if regular payments are not received on time.  | [optional] |
| **balance_ceiling** | [**BalanceCeiling**](BalanceCeiling.md) |  | [optional] |
| **balance_floor** | [**BalanceFloor**](BalanceFloor.md) |  | [optional] |
| **bank_country** | **String** | Bank country of the account |  |
| **billing_period** | [**BillingPeriod**](BillingPeriod.md) |  | [optional] |
| **currency** | **String** | Account currency. ISO 4217 alphabetic currency code |  |
| **fee_product_ids** | **Array&lt;String&gt;** | A list of fee account products that the current account associates with. | [optional] |
| **grace_period** | **Integer** | The number of days past the billing period to allow for payment before it is considered due. This directly infers the due date for a payment. The default will be set to 21 days.  | [optional][default to 21] |
| **interest_product_id** | **String** | An interest account product that the current account associates with. | [optional] |
| **is_ach_enabled** | **Boolean** | Enable ACH transaction on ledger. | [optional][default to false] |
| **is_card_enabled** | **Boolean** | Enable card transaction on ledger. | [optional][default to false] |
| **is_eft_ca_enabled** | **Boolean** | A flag to indicate whether EFT Canada transactions are enabled. | [optional] |
| **is_external_card_enabled** | **Boolean** | Enable external card transaction on ledger. | [optional][default to false] |
| **is_p2p_enabled** | **Boolean** | Enable P2P transaction on ledger. | [optional][default to false] |
| **is_sar_enabled** | **Boolean** | Enable SAR report. | [optional][default to false] |
| **is_wire_enabled** | **Boolean** | Enable wire transaction on ledger. | [optional][default to false] |
| **minimum_payment** | [**MinimumPayment**](MinimumPayment.md) |  | [optional] |
| **overdraft_limit** | **Integer** | This field is unused and will be removed in a future API version.  | [optional] |
| **spend_control_ids** | **Array&lt;String&gt;** | List of spend control IDs to control spending for the account | [optional] |
| **spending_limits** | [**SpendingLimits**](SpendingLimits.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::TemplateFieldsGenericResponse.new(
  account_type: null,
  auto_payment_period: 20,
  balance_ceiling: null,
  balance_floor: null,
  bank_country: US,
  billing_period: null,
  currency: USD,
  fee_product_ids: null,
  grace_period: null,
  interest_product_id: null,
  is_ach_enabled: null,
  is_card_enabled: null,
  is_eft_ca_enabled: null,
  is_external_card_enabled: null,
  is_p2p_enabled: null,
  is_sar_enabled: null,
  is_wire_enabled: null,
  minimum_payment: null,
  overdraft_limit: null,
  spend_control_ids: null,
  spending_limits: null
)
```

