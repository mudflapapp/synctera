# Synctera::TemplateFieldsDepository

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_type** | [**AccountType**](AccountType.md) |  |  |
| **bank_country** | **String** | Bank country of the account. ISO 3166-1 Alpha-2 or Alpha-3 country code. |  |
| **currency** | **String** | Account currency. ISO 4217 alphabetic currency code |  |
| **balance_ceiling** | [**BalanceCeiling**](BalanceCeiling.md) |  | [optional] |
| **balance_floor** | [**BalanceFloor**](BalanceFloor.md) |  | [optional] |
| **fee_product_ids** | **Array&lt;String&gt;** | A list of fee account products that the current account associates with. | [optional] |
| **interest_product_id** | **String** | An interest account product that the current account associates with.  | [optional] |
| **is_ach_enabled** | **Boolean** | Enable ACH transaction. | [optional][default to false] |
| **is_card_enabled** | **Boolean** | Enable card transaction. | [optional][default to false] |
| **is_eft_ca_enabled** | **Boolean** | A flag to indicate whether EFT Canada transactions are enabled. | [optional][readonly] |
| **is_external_card_enabled** | **Boolean** | Enable external card transaction. | [optional][default to false] |
| **is_p2p_enabled** | **Boolean** | Enable P2P transaction. | [optional][default to false] |
| **is_sar_enabled** | **Boolean** | Enable SAR report. | [optional][default to false] |
| **is_wire_enabled** | **Boolean** | Enable wire transaction. | [optional][default to false] |
| **overdraft_limit** | **Integer** | This field is unused and will be removed in a future API version.  | [optional] |
| **spend_control_ids** | **Array&lt;String&gt;** | List of spend control IDs to control spending for the account | [optional] |
| **spending_limits** | [**SpendingLimits**](SpendingLimits.md) |  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::TemplateFieldsDepository.new(
  account_type: null,
  bank_country: US,
  currency: USD,
  balance_ceiling: null,
  balance_floor: null,
  fee_product_ids: null,
  interest_product_id: null,
  is_ach_enabled: null,
  is_card_enabled: null,
  is_eft_ca_enabled: null,
  is_external_card_enabled: null,
  is_p2p_enabled: null,
  is_sar_enabled: null,
  is_wire_enabled: null,
  overdraft_limit: null,
  spend_control_ids: null,
  spending_limits: null
)
```

