# Synctera::InternationalWireDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_address** | [**Address**](Address.md) |  |  |
| **correspondent_banks_details** | [**Array&lt;CorrespondentBankDetails&gt;**](CorrespondentBankDetails.md) | Correspondent banks details used for international payments.  | [optional] |
| **swift_code** | **String** | The SWIFT code (also known as BIC code) used for international payments.  |  |

## Example

```ruby
require 'synctera'

instance = Synctera::InternationalWireDetails.new(
  bank_address: null,
  correspondent_banks_details: null,
  swift_code: CHASUS3AXXX
)
```

