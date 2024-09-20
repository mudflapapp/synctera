# Synctera::AddAccountsRequestRoutingIdentifiers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ach_routing_number** | **String** | The routing number used for US ACH payments.  | [optional] |
| **bank_countries** | **Array&lt;String&gt;** | The countries that this bank operates the account in |  |
| **bank_name** | **String** | The name of the bank managing the account |  |
| **eft_ca_routing_number** | **String** | &gt; 🚧 Alpha &gt; This is an Alpha property. Feedback from the community is welcome. We may make breaking changes to this property. The 9 digit routing number used for EFT CA payments, identifying a Canadian bank. The format is 0xxxyyyyy where xxx is the institution number and yyyyy is the transit number. On write, Synctera will store the entire routing number; on read, we only return the last 4 characters.  | [optional] |
| **international_wire_details** | [**InternationalWireDetails**](InternationalWireDetails.md) |  | [optional] |
| **wire_routing_number** | **String** | The routing number used for US domestic wire payments.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::AddAccountsRequestRoutingIdentifiers.new(
  ach_routing_number: 756392185,
  bank_countries: null,
  bank_name: Chase,
  eft_ca_routing_number: 02101140,
  international_wire_details: null,
  wire_routing_number: 915075033
)
```

