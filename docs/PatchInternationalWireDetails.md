# Synctera::PatchInternationalWireDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bank_address** | [**Address**](Address.md) |  | [optional] |
| **correspondent_banks_details** | [**Array&lt;CorrespondentBankDetails&gt;**](CorrespondentBankDetails.md) | Correspondent banks details used for international payments. Note that in a patch request, the entirity of the correspondent_banks_details array will be updated.  | [optional] |
| **swift_code** | **String** | The SWIFT code (also known as BIC code) used for international payments.  | [optional] |

## Example

```ruby
require 'synctera'

instance = Synctera::PatchInternationalWireDetails.new(
  bank_address: null,
  correspondent_banks_details: null,
  swift_code: CHASUS3AXXX
)
```

