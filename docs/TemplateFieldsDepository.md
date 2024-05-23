# Synctera::TemplateFieldsDepository

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | [**AccountType**](AccountType.md) |  |  |
| **bank_account_id** | **String** | The bank account ID for this account. This is a unique identifier for the bank side account that this Synctera account belongs to. This field can be auto filled if only one bank account of the appropriate type exist for the tenant of concern.  | [optional] |
| **bank_country** | **String** | Bank country of the account. ISO 3166-1 Alpha-2 or Alpha-3 country code. |  |
| **currency** | **String** | Account currency. ISO 4217 alphabetic currency code |  |
| **is_ach_enabled** | **Boolean** | A flag to indicate whether ACH transactions are enabled. | [optional] |
| **is_card_enabled** | **Boolean** | A flag to indicate whether card transactions are enabled. | [optional] |
| **is_eft_ca_enabled** | **Boolean** | A flag to indicate whether EFT Canada transactions are enabled. | [optional] |
| **is_external_card_enabled** | **Boolean** | A flag to indicate whether external card transactions are enabled. | [optional] |
| **is_p2p_enabled** | **Boolean** | A flag to indicate whether P2P transactions are enabled. | [optional] |
| **is_synctera_pay_enabled** | **Boolean** | A flag to indicate whether Synctera Pay transactions are enabled. | [optional] |
| **is_wire_enabled** | **Boolean** | A flag to indicate whether wire transactions are enabled. | [optional] |
| **balance_ceiling** | [**BalanceCeiling**](BalanceCeiling.md) |  | [optional] |
| **balance_floor** | [**BalanceFloor**](BalanceFloor.md) |  | [optional] |
| **fee_product_ids** | **Array&lt;String&gt;** | A list of fee account products that the current account associates with. | [optional] |
| **interest_product_id** | **String** | An interest account product that the current account associates with.  | [optional] |
| **is_sar_enabled** | **Boolean** | Enable SAR report. | [optional][default to false] |
| **overdraft_limit** | **Integer** | This field is unused and will be removed in a future API version.  | [optional] |
| **spend_control_ids** | **Array&lt;String&gt;** | List of spend control IDs to control spending for the account | [optional] |
| **spending_limits** | [**SpendingLimits**](SpendingLimits.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::TemplateFieldsDepository.new(
  account_type: null,
  bank_account_id: null,
  bank_country: US,
  currency: USD,
  is_ach_enabled: null,
  is_card_enabled: null,
  is_eft_ca_enabled: null,
  is_external_card_enabled: null,
  is_p2p_enabled: null,
  is_synctera_pay_enabled: null,
  is_wire_enabled: null,
  balance_ceiling: null,
  balance_floor: null,
  fee_product_ids: null,
  interest_product_id: null,
  is_sar_enabled: null,
  overdraft_limit: null,
  spend_control_ids: null,
  spending_limits: null
)
```

