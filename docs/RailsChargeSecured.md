# Synctera::RailsChargeSecured

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_ach_enabled** | **Boolean** | A flag to indicate whether ACH transactions are enabled. | [optional] |
| **is_card_enabled** | **Boolean** | A flag to indicate whether card transactions are enabled. | [optional] |
| **is_eft_ca_enabled** | **Boolean** | A flag to indicate whether EFT Canada transactions are enabled. | [optional] |
| **is_p2p_enabled** | **Boolean** | A flag to indicate whether P2P transactions are enabled. | [optional] |
| **is_synctera_pay_enabled** | **Boolean** | A flag to indicate whether Synctera Pay transactions are enabled. | [optional] |
| **is_wire_enabled** | **Boolean** | A flag to indicate whether wire transactions are enabled. | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::RailsChargeSecured.new(
  is_ach_enabled: null,
  is_card_enabled: null,
  is_eft_ca_enabled: null,
  is_p2p_enabled: null,
  is_synctera_pay_enabled: null,
  is_wire_enabled: null
)
```

