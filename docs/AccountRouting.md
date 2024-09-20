# Synctera::AccountRouting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ach_routing_number** | **String** | The routing number used for US ACH payments. Only appears if &#x60;bank_countries&#x60; contains &#x60;US&#x60;. Value may be masked, in which case only the last four digits are returned.  | [optional] |
| **bank_address** | [**Address**](Address.md) |  | [optional] |
| **bank_countries** | **Array&lt;String&gt;** | The countries that this bank operates the account in |  |
| **bank_name** | **String** | The name of the bank managing the account |  |
| **correspondent_bank_details** | [**Array&lt;CorrespondentBankDetails&gt;**](CorrespondentBankDetails.md) | The details of the correspondent banks for the account.  | [optional] |
| **eft_ca_routing_number** | **String** | &gt; 🚧 Alpha &gt; This is an Alpha property. Feedback from the community is welcome. We may make breaking changes to this property. The 9 digit routing number used for EFT CA payments, identifying a Canadian bank. The format is 0xxxyyyyy where xxx is the institution number and yyyyy is the transit number. On write, Synctera will store the entire routing number; on read, we only return the last 4 characters. Value may be masked, in which case only the last four digits are returned.  | [optional] |
| **eft_routing_number** | **String** | The routing number used for EFT payments, identifying a Canadian bank, consisting of the institution number and the branch number. Only appears if &#x60;bank_countries&#x60; contains &#x60;CA&#x60;. Value may be masked, in which case only the last four digits are returned. This attribute is deprecated and will be removed in a future API version. Use eft_ca_routing_number instead.  | [optional] |
| **swift_code** | **String** | The SWIFT code for the bank. Value may be masked, in which case only the last four characters are returned.  | [optional] |
| **wire_routing_number** | **String** | The routing number used for domestic wire payments. Only appears if &#x60;bank_countries&#x60; contains &#x60;US&#x60;. Value may be masked, in which case only the last four digits are returned.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AccountRouting.new(
  ach_routing_number: 756392185,
  bank_address: null,
  bank_countries: null,
  bank_name: Chase,
  correspondent_bank_details: null,
  eft_ca_routing_number: 02101140,
  eft_routing_number: 02101140,
  swift_code: CHASUS3AXXX,
  wire_routing_number: 756392185
)
```

